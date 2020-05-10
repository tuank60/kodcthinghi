import os
from django.core.wsgi import get_wsgi_application

os.environ['DJANGO_SETTINGS_MODULE'] = 'RbiCloud.settings'
application = get_wsgi_application()

from cloud import models
from dateutil import relativedelta
from django.http import Http404, HttpResponse
import xlsxwriter
from io import BytesIO
from datetime import datetime

inspMethod = ['Inspection Type', 'ACFM',
                  'Angled Compression Wave',
                  'Angled Shear Wave',
                  'A-scan Thickness Survey',
                  'B-scan',
                  'Chime',
                  'Compton Scatter',
                  'Crack Detection',
                  'C-scan',
                  'Digital Ultrasonic Thickness Gauge',
                  'Endoscopy',
                  'Gamma Radiography',
                  'Hardness Surveys',
                  'Hydrotesting',
                  'Leak Detection',
                  'Liquid Penetrant Inspection',
                  'Lorus',
                  'Low frequency',
                  'Magnetic Fluorescent Inspection',
                  'Magnetic Flux Leakage',
                  'Magnetic Particle Inspection',
                  'Microstructure Replication',
                  'Naked Eye',
                  'On-line Monitoring',
                  'Passive Thermography',
                  'Penetrant Leak Detection',
                  'Pulsed',
                  'Real-time Radiography',
                  'Remote field',
                  'Standard (flat coil)',
                  'Surface Waves',
                  'Teletest',
                  'TOFD',
                  'Transient Thermography',
                  'Video',
                  'X-Radiography']

def convertDF(DF):
    if DF == 0 or DF is None:
        return 'N/A'
    elif DF <= 2:
        return 'A'
    elif DF <= 20:
        return 'B'
    elif DF <= 100:
        return 'C'
    elif DF <= 1000:
        return 'D'
    else:
        return 'E'

def convertCA(CA):
    if CA == 0 or CA is None:
        return 0
    elif CA <= 10000:
        return 1
    elif CA <= 100000:
        return 2
    elif CA <= 1000000:
        return 3
    elif CA <= 10000000:
        return 4
    else:
        return 5

def convertRisk(CA, DF):
    if CA == 0 or DF == 'N/A':
        return 'N/A'
    elif CA in (1, 2) and DF in ('A', 'B', 'C'):
        return "Low"
    elif (CA in (1, 2) and DF == 'D') or (CA in (3, 4) and DF in ('A', 'B')) or (CA == 3 and DF == 'C'):
        return "Medium"
    elif (CA == 5 and DF in ('C', 'D', 'E')) or (CA == 4 and DF == 'E'):
        return "High"
    else:
        return "Medium High"

def checkData(data):
    if data is None:
        return 0
    else:
        return data

def getC_risk(idx):
    dataGeneral = {}
    new = models.RwAssessment.objects.filter(componentid=idx).order_by('-id')
    idxData = 0
    for rwNewAss in new:
        if models.RwFullFcof.objects.filter(id= rwNewAss.id).count() != 0 and models.RwFullPof.objects.filter(id= rwNewAss.id).count() != 0:
            idxData = rwNewAss.id
            break
    if idxData != 0:
        newest = models.RwAssessment.objects.get(id= idxData)
        component = models.ComponentMaster.objects.get(componentid=idx)
        if component.componenttypeid_id == 8 or component.componenttypeid_id == 12 or component.componenttypeid_id == 14 or component.componenttypeid_id == 15:
            isTank = 1
        else:
            isTank = 0
        equip = models.EquipmentMaster.objects.get(equipmentid=component.equipmentid_id)
        fcof = models.RwFullFcof.objects.get(id=newest.id)
        fpof = models.RwFullPof.objects.get(id=newest.id)

        dataGeneral['equipment_name'] = equip.equipmentname
        dataGeneral['equipment_desc'] = equip.equipmentdesc
        dataGeneral['equipment_type'] = models.EquipmentType.objects.get(
            equipmenttypeid=equip.equipmenttypeid_id).equipmenttypename
        dataGeneral['component_name'] = component.componentname
        dataGeneral['init_thinning'] = fpof.thinningap1
        dataGeneral['init_cracking'] = fpof.sccap1
        dataGeneral['init_other'] = fpof.htha_ap1 + fpof.brittleap1 + fpof.fatigueap1
        dataGeneral['init_pof'] = fpof.thinningap1 + fpof.sccap1 + fpof.htha_ap1 + fpof.brittleap1
        dataGeneral['ext_thinning'] = fpof.externalap1
        dataGeneral['pof_catalog'] = fpof.totaldfap1
        dataGeneral['pof_catalog2'] = fpof.totaldfap2
        dataGeneral['pof_val'] = fpof.pofap1
        dataGeneral['risk'] = fpof.pofap1 * fcof.fcofvalue
        dataGeneral['risk_future'] = fpof.pofap2 * fcof.fcofvalue

        if isTank:
            data1 = models.RwCaTank.objects.get(id=newest.id)
            data2 = models.RwInputCaTank.objects.get(id=newest.id)
            dataGeneral['flamable'] = checkData(data1.component_damage_cost)
            dataGeneral['inj'] = 0
            dataGeneral['business'] = checkData(data1.business_cost)
            dataGeneral['env'] = checkData(data1.fc_environ)
            dataGeneral['consequence'] = checkData(data1.consequence)
            dataGeneral['fluid'] = checkData(data2.api_fluid)
            dataGeneral['fluid_phase'] = 'Liquid'
        else:
            data1 = models.RwCaLevel1.objects.get(id=newest.id)
            data2 = models.RwInputCaLevel1.objects.get(id=newest.id)
            dataGeneral['flamable'] = checkData(data1.fc_cmd)
            dataGeneral['inj'] = checkData(data1.fc_inj)
            dataGeneral['business'] = checkData(data1.fc_prod)
            dataGeneral['env'] = checkData(data1.fc_envi)
            dataGeneral['consequence'] = checkData(data1.fc_total)
            dataGeneral['fluid'] = checkData(data2.api_fluid)
            dataGeneral['fluid_phase'] = data2.system
        return dataGeneral

def getE_risk(idx):
    riskE = []
    listComponent = models.ComponentMaster.objects.filter(equipmentid=idx)
    if listComponent.count() != 0:
        for com in listComponent:
            comRisk = getC_risk(com.componentid)
            riskE.append(comRisk)
        return riskE

def getF_risk(idx):
    riskF = []
    lisEquipment = models.EquipmentMaster.objects.filter(facilityid=idx)
    if lisEquipment.count() != 0:
        for eq in lisEquipment:
            riskF.append(getE_risk(eq.equipmentid))
        return riskF

def getS_risk(idx):
    riskS = []
    lisFacility = models.Facility.objects.filter(siteid=idx)
    if lisFacility.count() != 0:
        for fa in lisFacility:
            riskS.append(getF_risk(fa.facilityid))
        return riskS

def getC_insp(idx):
    data = []
    new = models.RwAssessment.objects.filter(componentid=idx).order_by('-id')
    idxData = 0
    for rwNewAss in new:
        if models.RwFullFcof.objects.filter(id=rwNewAss.id).count() != 0 and models.RwFullPof.objects.filter(
                id=rwNewAss.id).count() != 0:
            idxData = rwNewAss.id
            break
    if idxData != 0:
        newest = models.RwAssessment.objects.get(id=idxData)
        equip = models.EquipmentMaster.objects.get(equipmentid= newest.equipmentid_id)
        insp = models.RwDamageMechanism.objects.filter(id_dm= newest.id)
        if insp.count() > 0:
            for a in insp:
                dataGeneral = {}
                dataGeneral['System'] = str(models.ComponentMaster.objects.get(componentid= newest.componentid_id).componentname)
                dataGeneral['Equipment'] = equip.equipmentname
                dataGeneral['Damage'] = models.DmItems.objects.get(dmitemid= a.dmitemid_id).dmdescription
                dataGeneral['Method'] = 'ACFM'
                dataGeneral['Coverage'] = 'N/A'
                dataGeneral['Avaiable'] = 'online'
                dataGeneral['Last'] = a.lastinspdate.date()
                dataGeneral['Duedate'] = a.inspduedate.date()
                dataGeneral['Interval'] = round((insp[0].inspduedate - insp[0].lastinspdate).days/365 ,2)
                data.append(dataGeneral)
    return data

def getE_insp(idx):
    riskE = []
    listComponent = models.ComponentMaster.objects.filter(equipmentid=idx)
    if listComponent.count() != 0:
        for com in listComponent:
            comRisk = getC_insp(com.componentid)
            riskE.append(comRisk)
        return riskE

def getF_insp(idx):
    riskF = []
    lisEquipment = models.EquipmentMaster.objects.filter(facilityid=idx)
    if lisEquipment.count() != 0:
        for eq in lisEquipment:
            riskF.append(getE_insp(eq.equipmentid))
        return riskF

def getS_insp(idx):
    riskS = []
    lisFacility = models.Facility.objects.filter(siteid=idx)
    if lisFacility.count() != 0:
        for fa in lisFacility:
            riskS.append(getF_insp(fa.facilityid))
        return riskS

def getP_risk(idx):
    dataGeneral = {}
    new = models.RwAssessment.objects.filter(id= idx)
    newPof = models.RwFullPof.objects.filter(id= idx)
    newFcof = models.RwFullFcof.objects.filter(id=idx)
    if new.count() != 0 and newPof.count() != 0 and newFcof.count() != 0:
        newest = new[0]
        component = models.ComponentMaster.objects.get(componentid= newest.componentid_id)
        if component.componenttypeid_id == 8 or component.componenttypeid_id == 12 or component.componenttypeid_id == 14 or component.componenttypeid_id == 15:
            isTank = 1
        else:
            isTank = 0
        equip = models.EquipmentMaster.objects.get(equipmentid=newest.equipmentid_id)
        fcof = models.RwFullFcof.objects.get(id= idx)
        fpof = models.RwFullPof.objects.get(id= idx)

        dataGeneral['equipment_name'] = equip.equipmentname
        dataGeneral['equipment_desc'] = equip.equipmentdesc
        dataGeneral['equipment_type'] = models.EquipmentType.objects.get(
            equipmenttypeid=equip.equipmenttypeid_id).equipmenttypename
        dataGeneral['component_name'] = component.componentname
        dataGeneral['init_thinning'] = fpof.thinningap1
        dataGeneral['init_cracking'] = fpof.sccap1
        dataGeneral['init_other'] = fpof.htha_ap1 + fpof.brittleap1 + fpof.fatigueap1
        dataGeneral['init_pof'] = fpof.thinningap1 + fpof.sccap1 + fpof.htha_ap1 + fpof.brittleap1
        dataGeneral['ext_thinning'] = fpof.externalap1
        dataGeneral['pof_catalog'] = fpof.totaldfap1
        dataGeneral['pof_catalog2'] = fpof.totaldfap2
        dataGeneral['pof_val'] = fpof.pofap1
        dataGeneral['risk'] = fpof.pofap1 * fcof.fcofvalue
        dataGeneral['risk_future'] = fpof.pofap2 * fcof.fcofvalue

        if isTank:
            data1 = models.RwCaTank.objects.get(id= idx)
            data2 = models.RwInputCaTank.objects.get(id= idx)
            dataGeneral['flamable'] = checkData(data1.component_damage_cost)
            dataGeneral['inj'] = 0
            dataGeneral['business'] = checkData(data1.business_cost)
            dataGeneral['env'] = checkData(data1.fc_environ)
            dataGeneral['consequence'] = checkData(data1.consequence)
            dataGeneral['fluid'] = checkData(data2.api_fluid)
            dataGeneral['fluid_phase'] = 'Liquid'
        else:
            data1 = models.RwCaLevel1.objects.get(id= idx)
            data2 = models.RwInputCaLevel1.objects.get(id= idx)
            dataGeneral['flamable'] = checkData(data1.fc_cmd)
            dataGeneral['inj'] = checkData(data1.fc_inj)
            dataGeneral['business'] = checkData(data1.fc_prod)
            dataGeneral['env'] = checkData(data1.fc_envi)
            dataGeneral['consequence'] = checkData(data1.fc_total)
            dataGeneral['fluid'] = checkData(data2.api_fluid)
            dataGeneral['fluid_phase'] = data2.system
        return dataGeneral

def getP_insp(idx):
    data = []
    new = models.RwAssessment.objects.filter(id= idx)
    newPof = models.RwFullPof.objects.filter(id=idx)
    newFcof = models.RwFullFcof.objects.filter(id=idx)
    if new.count() != 0 and newPof.count() != 0 and newFcof.count() != 0:
        newest = new[0]
        equip = models.EquipmentMaster.objects.get(equipmentid= newest.equipmentid_id)
        insp = models.RwDamageMechanism.objects.filter(id_dm= newest.id)
        if insp.count() > 0:
            for a in insp:
                dataGeneral = {}
                dataGeneral['System'] = str(models.ComponentMaster.objects.get(componentid= newest.componentid_id).componentname)
                dataGeneral['Equipment'] = equip.equipmentname
                dataGeneral['Damage'] = models.DmItems.objects.get(dmitemid= a.dmitemid_id).dmdescription
                dataGeneral['Method'] = 'ACFM'
                dataGeneral['Coverage'] = 'N/A'
                dataGeneral['Avaiable'] = 'online'
                dataGeneral['Last'] = a.lastinspdate.date()
                dataGeneral['Duedate'] = a.inspduedate.date()
                dataGeneral['Interval'] = round((insp[0].inspduedate - insp[0].lastinspdate).days/365 ,2)
                data.append(dataGeneral)
    return data

def getP_name(idx):
    data = {}
    obj = models.RwAssessment.objects.filter(id = idx)
    date = datetime.now().strftime('%Y-%m-%d %H-%M-%S')
    if obj.count() != 0:
        data['name'] = obj[0].proposalname
    return 'Proposal:' + data['name'] + '-' + date

def getC_name(idx):
    data = {}
    obj = models.ComponentMaster.objects.filter(componentid= idx)
    date = datetime.now().strftime('%Y-%m-%d %H-%M-%S')
    if obj.count() != 0:
        data['name'] = obj[0].componentname
    return 'Component:' + data['name'] + '-' + date

def getE_name(idx):
    data = {}
    obj = models.EquipmentMaster.objects.filter(equipmentid= idx)
    date = datetime.now().strftime('%Y-%m-%d %H-%M-%S')
    if obj.count() != 0:
        data['name'] = obj[0].equipmentname
    return 'Equipment:' + data['name'] + '-' + date

def getF_name(idx):
    data = {}
    obj = models.Facility.objects.filter(facilityid= idx)
    date = datetime.now().strftime('%Y-%m-%d %H-%M-%S')
    if obj.count() != 0:
        data['name'] = obj[0].facilityname
    return 'Facility:' + data['name'] + '-' + date

def getS_name(idx):
    data = {}
    obj = models.Sites.objects.filter(siteid= idx)
    date = datetime.now().strftime('%Y-%m-%d %H-%M-%S')
    if obj.count() != 0:
        data['name'] = obj[0].sitename
    return 'Site:' + data['name'] + '-' + date

def excelExport(idx, status):
    if status == 'Site':
        rank = 1
    elif status == 'Facility':
        rank = 2
    elif status == 'Equipment':
        rank = 3
    elif status == 'Component':
        rank = 4
    elif status == 'Proposal':
        rank = 5
    else:
        raise Http404

    ################ CREATE FORMAT EXCEL FILE#################
    output = BytesIO()
    workbook = xlsxwriter.Workbook(output)
    worksheet = workbook.add_worksheet('Risk Summary')
    worksheet1 = workbook.add_worksheet('Risk Summary Detail')
    worksheet2 = workbook.add_worksheet('Inspection Plan')
    worksheet3 = workbook.add_worksheet('Lookup')

    format = workbook.add_format()
    format.set_font_name('Times New Roman')
    format.set_font_size(14)
    format.set_border()
    format.set_rotation(90)
    format.set_align('center')
    format.set_bg_color('#B7B7B7')

    format1 = workbook.add_format()
    format1.set_font_name('Times New Roman')
    format1.set_font_size(14)
    format1.set_border()
    format1.set_align('center')
    format1.set_align('vcenter')
    format1.set_bg_color('#B7B7B7')

    formatdata = workbook.add_format()
    formatdata.set_font_name('Times New Roman')
    formatdata.set_font_size(13)

    formattime = workbook.add_format({'num_format': 'dd/mm/yyyy'})
    formatdata.set_font_name('Times New Roman')
    formattime.set_font_size(13)

    red = workbook.add_format({'bg_color': '#FF0000'})
    green = workbook.add_format({'bg_color': '#00FF00'})
    yellow = workbook.add_format({'bg_color': '#F9F400'})
    orange = workbook.add_format({'bg_color': '#FF9900'})
    gray = workbook.add_format({'bg_color': '#AAAAAA'})

    ## Sheet lookup
    for i in range(1, len(inspMethod) + 1):
        worksheet3.write('A' + str(i), inspMethod[i - 1], formatdata)
    worksheet3.hide()

    ### SHEET HEADING
    ### sheet 1 RiskSummary Ban Tho
    worksheet.merge_range('A1:D1', 'Indentification', format1)
    worksheet.set_column('A2:A2', 20)
    worksheet.set_column('C2:C2', 30)
    worksheet.set_column('B2:B2', 30)
    worksheet.set_column('D2:D2', 20)
    worksheet.write('A2', 'Equipment', format)
    worksheet.write('B2', 'Equipment Description', format)
    worksheet.write('C2', 'Equipment Type', format)
    worksheet.write('D2', 'Components', format)
    worksheet.merge_range('E1:E2', 'Represent.fluid', format)
    worksheet.merge_range('F1:F2', 'Fluid phase', format)
    worksheet.merge_range('G1:M1', 'Consequence (COF)', format1)
    worksheet.merge_range('O1:W1', 'Probability (POF)', format1)
    worksheet.merge_range('X1:Y1', 'Risk', format1)
    worksheet.write('G2', 'Current Risk', format)
    worksheet.write('H2', 'Cofcat.Flammable', format)
    worksheet.write('I2', 'Cofcat.People', format)
    worksheet.write('J2', 'Cofcat.Asset', format)
    worksheet.write('K2', 'Cofcat.Env', format)
    worksheet.write('L2', 'Cofcat.Reputation', format)
    worksheet.write('M2', 'Cofcat.Combined', format)
    worksheet.merge_range('N1:N2', 'Component Material Glade', format)
    worksheet.write('O2', 'InitThinningPOFCatalog', format)
    worksheet.write('P2', 'InitEnv.Cracking', format)
    worksheet.write('Q2', 'InitOtherPOFCatalog', format)
    worksheet.write('R2', 'InitPOFCatelog', format)
    worksheet.write('S2', 'ExtThinningPOF', format)
    worksheet.write('T2', 'ExtEnvCrackingProbabilityCatelog', format)
    worksheet.write('U2', 'ExtOtherPOFCatelog', format)
    worksheet.write('V2', 'ExtPOFCatelog', format)
    worksheet.write('W2', 'POFCategory', format)
    worksheet.write('X2', 'Current Risk', format)
    worksheet.set_column('X2:X2', 20)
    worksheet.write('Y2', 'Future Risk', format)
    worksheet.set_column('Y2:Y2', 20)

    ### sheet 2 RiskSummary Ban Tinh
    worksheet1.merge_range('A1:D1', 'Indentification', format1)
    worksheet1.set_column('A2:A2', 20)
    worksheet1.set_column('C2:C2', 30)
    worksheet1.set_column('B2:B2', 30)
    worksheet1.set_column('D2:D2', 20)
    worksheet1.write('A2', 'Equipment', format)
    worksheet1.write('B2', 'Equipment Description', format)
    worksheet1.write('C2', 'Equipment Type', format)
    worksheet1.write('D2', 'Components', format)
    worksheet1.merge_range('E1:E2', 'Represent.fluid', format)
    worksheet1.merge_range('F1:F2', 'Fluid phase', format)
    worksheet1.merge_range('G1:M1', 'Consequence (COF), $', format1)
    worksheet1.merge_range('O1:W1', 'Probability (POF)', format1)
    worksheet1.merge_range('X1:Y1', 'Risk, $/year', format1)
    worksheet1.write('G2', 'Current Risk', format)
    worksheet1.write('H2', 'Cofcat.Flammable', format)
    worksheet1.write('I2', 'Cofcat.People', format)
    worksheet1.write('J2', 'Cofcat.Asset', format)
    worksheet1.write('K2', 'Cofcat.Env', format)
    worksheet1.write('L2', 'Cofcat.Reputation', format)
    worksheet1.write('M2', 'Cofcat.Combined', format)
    worksheet1.merge_range('N1:N2', 'Component Material Glade', format)
    worksheet1.write('O2', 'InitThinningPOFCatalog', format)
    worksheet1.write('P2', 'InitEnv.Cracking', format)
    worksheet1.write('Q2', 'InitOtherPOFCatalog', format)
    worksheet1.write('R2', 'InitPOFCatelog', format)
    worksheet1.write('S2', 'ExtThinningPOF', format)
    worksheet1.write('T2', 'ExtEnvCrackingProbabilityCatelog', format)
    worksheet1.write('U2', 'ExtOtherPOFCatelog', format)
    worksheet1.write('V2', 'ExtPOFCatelog', format)
    worksheet1.write('W2', 'POFCategory', format)
    worksheet1.write('X2', 'Current Risk', format)
    worksheet1.set_column('X2:X2', 20)
    worksheet1.write('Y2', 'Future Risk', format)
    worksheet1.set_column('Y2:Y2', 20)

    ### sheet 3 InspectionPlan
    worksheet2.set_row(0, 60)
    worksheet2.write('A1', 'Equipment Name', format1)
    worksheet2.set_column('A1:A1', 20)
    worksheet2.write('B1', 'Component Name', format1)
    worksheet2.set_column('B1:B1', 20)
    worksheet2.write('C1', 'Damage Mechanism', format1)
    worksheet2.set_column('C1:C1', 30)
    worksheet2.write('D1', 'Method', format1)
    worksheet2.set_column('D1:D1', 20)
    worksheet2.write('E1', 'Coverage', format1)
    worksheet2.set_column('E1:E1', 50)
    worksheet2.write('F1', 'Availability', format1)
    worksheet2.set_column('F1:F1', 20)
    worksheet2.write('G1', 'Last Inspection Date', format1)
    worksheet2.set_column('G1:G1', 40)
    worksheet2.write('H1', 'Inspection Interval, years', format1)
    worksheet2.set_column('H1:H1', 30)
    worksheet2.write('I1', 'Due Date', format1)
    worksheet2.set_column('I1:I1', 20)

    ###### CONTENT ########
    # Write Risk
    # proposal
    if rank == 5:
        dataP = getP_risk(idx)
        insp_P = getP_insp(idx)
        name = getP_name(idx)
        insp_ind = 2
        if dataP is not None:
            worksheet.write('A3', dataP['equipment_name'], formatdata)
            worksheet.write('B3', dataP['equipment_desc'], formatdata)
            worksheet.write('C3', dataP['equipment_type'], formatdata)
            worksheet.write('D3', dataP['component_name'], formatdata)
            worksheet.write('O3', convertDF(dataP['init_thinning']), formatdata)
            worksheet.write('P3', convertDF(dataP['init_cracking']), formatdata)
            worksheet.write('Q3', convertDF(dataP['init_other']), formatdata)
            worksheet.write('R3', convertDF(dataP['init_pof']), formatdata)
            worksheet.write('S3', convertDF(dataP['ext_thinning']), formatdata)
            worksheet.write('T3', convertDF(0), formatdata)
            worksheet.write('U3', convertDF(0), formatdata)
            worksheet.write('V3', convertDF(dataP['ext_thinning']), formatdata)
            worksheet.write('W3', convertDF(dataP['pof_catalog']), formatdata)
            worksheet.write('E3', dataP['fluid'], formatdata)
            worksheet.write('F3', dataP['fluid_phase'], formatdata)
            worksheet.write('G3', 'N/A', formatdata)
            worksheet.write('H3', convertCA(dataP['flamable']), formatdata)
            worksheet.write('I3', convertCA(dataP['inj']), formatdata)
            worksheet.write('J3', convertCA(dataP['business']), formatdata)
            worksheet.write('K3', convertCA(dataP['env']), formatdata)
            worksheet.write('L3', 'N/A', formatdata)
            worksheet.write('M3', convertCA(dataP['consequence']), formatdata)
            worksheet.write('X3', convertRisk(convertCA(dataP['consequence']), convertDF(dataP['pof_catalog'])), formatdata)
            worksheet.write('Y3', convertRisk(convertCA(dataP['consequence']), convertDF(dataP['pof_catalog2'])), formatdata)

            worksheet1.write('A3', dataP['equipment_name'], formatdata)
            worksheet1.write('B3', dataP['equipment_desc'], formatdata)
            worksheet1.write('C3', dataP['equipment_type'], formatdata)
            worksheet1.write('D3', dataP['component_name'], formatdata)
            worksheet1.write('O3', dataP['init_thinning'], formatdata)
            worksheet1.write('P3', dataP['init_cracking'], formatdata)
            worksheet1.write('Q3', dataP['init_other'], formatdata)
            worksheet1.write('R3', dataP['init_pof'], formatdata)
            worksheet1.write('S3', dataP['ext_thinning'], formatdata)
            worksheet1.write('T3', 'N/A', formatdata)
            worksheet1.write('U3', 'N/A', formatdata)
            worksheet1.write('V3', dataP['ext_thinning'], formatdata)
            worksheet1.write('W3', dataP['pof_catalog'], formatdata)
            worksheet1.write('E3', dataP['fluid'], formatdata)
            worksheet1.write('F3', dataP['fluid_phase'], formatdata)
            worksheet1.write('G3', 'N/A', formatdata)
            worksheet1.write('H3', dataP['flamable'], formatdata)
            worksheet1.write('I3', dataP['inj'], formatdata)
            worksheet1.write('J3', dataP['business'], formatdata)
            worksheet1.write('K3', dataP['env'], formatdata)
            worksheet1.write('L3', 'N/A', formatdata)
            worksheet1.write('M3', dataP['consequence'], formatdata)
            worksheet1.write('X3', dataP['risk'], formatdata)
            worksheet1.write('Y3', dataP['risk_future'], formatdata)

        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"High"', 'format': red})
        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"Medium High"', 'format': orange})
        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"Medium"', 'format': yellow})
        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"Low"', 'format': green})
        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"N/A"', 'format': gray})

        if insp_P is not None:
            for insp in insp_P:
                if insp is not None:
                    worksheet2.write('B' + str(insp_ind) , insp['System'], formatdata)
                    worksheet2.write('A' + str(insp_ind), insp['Equipment'], formatdata)
                    worksheet2.write('C' + str(insp_ind), insp['Damage'],
                                     formatdata)
                    worksheet2.write('D' + str(insp_ind), insp['Method'], formatdata)
                    worksheet2.data_validation('D' + str(insp_ind), {'validate': 'list', 'source': '=Lookup!$A$2:$A$37'})
                    worksheet2.write('E' + str(insp_ind), insp['Coverage'], formatdata)
                    worksheet2.write('F' + str(insp_ind), insp['Avaiable'], formatdata)
                    worksheet2.data_validation('F' + str(insp_ind), {'validate': 'list',
                                                              'source': ['online', 'shutdown']})
                    worksheet2.write('G' + str(insp_ind), insp['Last'], formattime)
                    worksheet2.write('H' + str(insp_ind), insp['Interval'], formatdata)
                    worksheet2.write('I' + str(insp_ind), insp['Duedate'], formattime)
                    insp_ind += 1
    elif rank == 4:
        dataC = getC_risk(idx)
        insp_C = getC_insp(idx)
        insp_ind = 2
        name = getC_name(idx)
        if dataC is not None:
            worksheet.write('A3', dataC['equipment_name'], formatdata)
            worksheet.write('B3', dataC['equipment_desc'], formatdata)
            worksheet.write('C3', dataC['equipment_type'], formatdata)
            worksheet.write('D3', dataC['component_name'], formatdata)
            worksheet.write('O3', convertDF(dataC['init_thinning']), formatdata)
            worksheet.write('P3', convertDF(dataC['init_cracking']), formatdata)
            worksheet.write('Q3', convertDF(dataC['init_other']), formatdata)
            worksheet.write('R3', convertDF(dataC['init_pof']), formatdata)
            worksheet.write('S3', convertDF(dataC['ext_thinning']), formatdata)
            worksheet.write('T3', convertDF(0), formatdata)
            worksheet.write('U3', convertDF(0), formatdata)
            worksheet.write('V3', convertDF(dataC['ext_thinning']), formatdata)
            worksheet.write('W3', convertDF(dataC['pof_catalog']), formatdata)
            worksheet.write('E3', dataC['fluid'], formatdata)
            worksheet.write('F3', dataC['fluid_phase'], formatdata)
            worksheet.write('G3', 'N/A', formatdata)
            worksheet.write('H3', convertCA(dataC['flamable']), formatdata)
            worksheet.write('I3', convertCA(dataC['inj']), formatdata)
            worksheet.write('J3', convertCA(dataC['business']), formatdata)
            worksheet.write('K3', convertCA(dataC['env']), formatdata)
            worksheet.write('L3', 'N/A', formatdata)
            worksheet.write('M3', convertCA(dataC['consequence']), formatdata)
            worksheet.write('X3', convertRisk(convertCA(dataC['consequence']), convertDF(dataC['pof_catalog'])), formatdata)
            worksheet.write('Y3', convertRisk(convertCA(dataC['consequence']), convertDF(dataC['pof_catalog2'])), formatdata)

            worksheet1.write('A3', dataC['equipment_name'], formatdata)
            worksheet1.write('B3', dataC['equipment_desc'], formatdata)
            worksheet1.write('C3', dataC['equipment_type'], formatdata)
            worksheet1.write('D3', dataC['component_name'], formatdata)
            worksheet1.write('O3', dataC['init_thinning'], formatdata)
            worksheet1.write('P3', dataC['init_cracking'], formatdata)
            worksheet1.write('Q3', dataC['init_other'], formatdata)
            worksheet1.write('R3', dataC['init_pof'], formatdata)
            worksheet1.write('S3', dataC['ext_thinning'], formatdata)
            worksheet1.write('T3', 'N/A', formatdata)
            worksheet1.write('U3', 'N/A', formatdata)
            worksheet1.write('V3', dataC['ext_thinning'], formatdata)
            worksheet1.write('W3', dataC['pof_catalog'], formatdata)
            worksheet1.write('E3', dataC['fluid'], formatdata)
            worksheet1.write('F3', dataC['fluid_phase'], formatdata)
            worksheet1.write('G3', 'N/A', formatdata)
            worksheet1.write('H3', dataC['flamable'], formatdata)
            worksheet1.write('I3', dataC['inj'], formatdata)
            worksheet1.write('J3', dataC['business'], formatdata)
            worksheet1.write('K3', dataC['env'], formatdata)
            worksheet1.write('L3', 'N/A', formatdata)
            worksheet1.write('M3', dataC['consequence'], formatdata)
            worksheet1.write('X3', dataC['risk'], formatdata)
            worksheet1.write('Y3', dataC['risk_future'], formatdata)

        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"High"', 'format': red})
        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"Medium High"', 'format': orange})
        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"Medium"', 'format': yellow})
        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"Low"', 'format': green})
        worksheet.conditional_format('X3:Y3',
                                     {'type': 'cell', 'criteria': '==', 'value': '"N/A"', 'format': gray})

        if insp_C is not None:
            for insp in insp_C:
                if insp is not None:
                    worksheet2.write('B' + str(insp_ind) , insp['System'], formatdata)
                    worksheet2.write('A' + str(insp_ind), insp['Equipment'], formatdata)
                    worksheet2.write('C' + str(insp_ind), insp['Damage'],
                                     formatdata)
                    worksheet2.write('D' + str(insp_ind), insp['Method'], formatdata)
                    worksheet2.data_validation('D' + str(insp_ind), {'validate': 'list', 'source': '=Lookup!$A$2:$A$37'})
                    worksheet2.write('E' + str(insp_ind), insp['Coverage'], formatdata)
                    worksheet2.write('F' + str(insp_ind), insp['Avaiable'], formatdata)
                    worksheet2.data_validation('F' + str(insp_ind), {'validate': 'list',
                                                              'source': ['online', 'shutdown']})
                    worksheet2.write('G' + str(insp_ind), insp['Last'], formattime)
                    worksheet2.write('H' + str(insp_ind), insp['Interval'], formatdata)
                    worksheet2.write('I' + str(insp_ind), insp['Duedate'], formattime)

                    insp_ind += 1
    elif rank == 3:
        dataE = getE_risk(idx)
        insp_E = getE_insp(idx)
        name = getE_name(idx)
        ind = 3
        insp_ind = 2
        if dataE is not None:
            for dataC in dataE:
                if dataC is not None:
                    worksheet.write('A' + str(ind), (dataC['equipment_name']), formatdata)
                    worksheet.write('B' + str(ind), (dataC['equipment_desc']), formatdata)
                    worksheet.write('C' + str(ind), (dataC['equipment_type']), formatdata)
                    worksheet.write('D' + str(ind), (dataC['component_name']), formatdata)
                    worksheet.write('O' + str(ind), convertDF(dataC['init_thinning']), formatdata)
                    worksheet.write('P' + str(ind), convertDF(dataC['init_cracking']), formatdata)
                    worksheet.write('Q' + str(ind), convertDF(dataC['init_other']), formatdata)
                    worksheet.write('R' + str(ind), convertDF(dataC['init_pof']), formatdata)
                    worksheet.write('S' + str(ind), convertDF(dataC['ext_thinning']), formatdata)
                    worksheet.write('T' + str(ind), convertDF(0), formatdata)
                    worksheet.write('U' + str(ind), convertDF(0), formatdata)
                    worksheet.write('V' + str(ind), convertDF(dataC['ext_thinning']), formatdata)
                    worksheet.write('W' + str(ind), convertDF(dataC['pof_catalog']), formatdata)
                    worksheet.write('E' + str(ind), dataC['fluid'], formatdata)
                    worksheet.write('F' + str(ind), dataC['fluid_phase'], formatdata)
                    worksheet.write('G' + str(ind), 'N/A', formatdata)
                    worksheet.write('H' + str(ind), convertCA(dataC['flamable']), formatdata)
                    worksheet.write('I' + str(ind), convertCA(dataC['inj']), formatdata)
                    worksheet.write('J' + str(ind), convertCA(dataC['business']), formatdata)
                    worksheet.write('K' + str(ind), convertCA(dataC['env']), formatdata)
                    worksheet.write('L' + str(ind), 'N/A', formatdata)
                    worksheet.write('M' + str(ind), convertCA(dataC['consequence']), formatdata)
                    worksheet.write('X' + str(ind), convertRisk(convertCA(dataC['consequence']), convertDF(dataC['pof_catalog'])), formatdata)
                    worksheet.write('Y' + str(ind), convertRisk(convertCA(dataC['consequence']), convertDF(dataC['pof_catalog2'])), formatdata)

                    worksheet1.write('A' + str(ind), dataC['equipment_name'], formatdata)
                    worksheet1.write('B' + str(ind), dataC['equipment_desc'], formatdata)
                    worksheet1.write('C' + str(ind), dataC['equipment_type'], formatdata)
                    worksheet1.write('D' + str(ind), dataC['component_name'], formatdata)
                    worksheet1.write('O' + str(ind), dataC['init_thinning'], formatdata)
                    worksheet1.write('P' + str(ind), dataC['init_cracking'], formatdata)
                    worksheet1.write('Q' + str(ind), dataC['init_other'], formatdata)
                    worksheet1.write('R' + str(ind), dataC['init_pof'], formatdata)
                    worksheet1.write('S' + str(ind), dataC['ext_thinning'], formatdata)
                    worksheet1.write('T' + str(ind), 'N/A', formatdata)
                    worksheet1.write('U' + str(ind), 'N/A', formatdata)
                    worksheet1.write('V' + str(ind), dataC['ext_thinning'], formatdata)
                    worksheet1.write('W' + str(ind), dataC['pof_catalog'], formatdata)
                    worksheet1.write('E' + str(ind), dataC['fluid'], formatdata)
                    worksheet1.write('F' + str(ind), dataC['fluid_phase'], formatdata)
                    worksheet1.write('G' + str(ind), 'N/A', formatdata)
                    worksheet1.write('H' + str(ind), dataC['flamable'], formatdata)
                    worksheet1.write('I' + str(ind), dataC['inj'], formatdata)
                    worksheet1.write('J' + str(ind), dataC['business'], formatdata)
                    worksheet1.write('K' + str(ind), dataC['env'], formatdata)
                    worksheet1.write('L' + str(ind), 'N/A', formatdata)
                    worksheet1.write('M' + str(ind), dataC['consequence'], formatdata)
                    worksheet1.write('X' + str(ind), dataC['risk'], formatdata)
                    worksheet1.write('Y' + str(ind), dataC['risk_future'], formatdata)
                    ind += 1
                worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"High"', 'format': red})
                worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"Medium High"',
                                              'format': orange})
                worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"Medium"', 'format': yellow})
                worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"Low"', 'format': green})
                worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"N/A"', 'format': gray})
        if insp_E is not None:
            for C in insp_E:
                if C is not None:
                    for insp in C:
                        if insp is not None:
                            worksheet2.write('B' + str(insp_ind), insp['System'], formatdata)
                            worksheet2.write('A' + str(insp_ind), insp['Equipment'], formatdata)
                            worksheet2.write('C' + str(insp_ind), insp['Damage'],
                                             formatdata)
                            worksheet2.write('D' + str(insp_ind), insp['Method'], formatdata)
                            worksheet2.data_validation('D' + str(insp_ind),
                                                       {'validate': 'list', 'source': '=Lookup!$A$2:$A$37'})
                            worksheet2.write('E' + str(insp_ind), insp['Coverage'], formatdata)
                            worksheet2.write('F' + str(insp_ind), insp['Avaiable'], formatdata)
                            worksheet2.data_validation('F' + str(insp_ind), {'validate': 'list',
                                                                             'source': ['online', 'shutdown']})
                            worksheet2.write('G' + str(insp_ind), insp['Last'], formattime)
                            worksheet2.write('H' + str(insp_ind), insp['Interval'], formatdata)
                            worksheet2.write('I' + str(insp_ind), insp['Duedate'], formattime)
                            insp_ind += 1
    elif rank == 2:
        dataF = getF_risk(idx)
        insp_F = getF_insp(idx)
        name = getF_name(idx)
        ind = 3
        insp_ind = 2
        if dataF is not None:
            for dataE in dataF:
                if dataE is not None:
                    for dataC in dataE:
                        if dataC is not None:
                            worksheet.write('A' + str(ind), (dataC['equipment_name']), formatdata)
                            worksheet.write('B' + str(ind), (dataC['equipment_desc']), formatdata)
                            worksheet.write('C' + str(ind), (dataC['equipment_type']), formatdata)
                            worksheet.write('D' + str(ind), (dataC['component_name']), formatdata)
                            worksheet.write('O' + str(ind), convertDF(dataC['init_thinning']),
                                                formatdata)
                            worksheet.write('P' + str(ind), convertDF(dataC['init_cracking']),
                                                formatdata)
                            worksheet.write('Q' + str(ind), convertDF(dataC['init_other']), formatdata)
                            worksheet.write('R' + str(ind), convertDF(dataC['init_pof']), formatdata)
                            worksheet.write('S' + str(ind), convertDF(dataC['ext_thinning']),
                                                formatdata)
                            worksheet.write('T' + str(ind), convertDF(0), formatdata)
                            worksheet.write('U' + str(ind), convertDF(0), formatdata)
                            worksheet.write('V' + str(ind), convertDF(dataC['ext_thinning']), formatdata)
                            worksheet.write('W' + str(ind), convertDF(dataC['pof_catalog']), formatdata)
                            worksheet.write('E' + str(ind), dataC['fluid'], formatdata)
                            worksheet.write('F' + str(ind), dataC['fluid_phase'], formatdata)
                            worksheet.write('G' + str(ind), 'N/A', formatdata)
                            worksheet.write('H' + str(ind), convertCA(dataC['flamable']), formatdata)
                            worksheet.write('I' + str(ind), convertCA(dataC['inj']), formatdata)
                            worksheet.write('J' + str(ind), convertCA(dataC['business']), formatdata)
                            worksheet.write('K' + str(ind), convertCA(dataC['env']), formatdata)
                            worksheet.write('L' + str(ind), 'N/A', formatdata)
                            worksheet.write('M' + str(ind), convertCA(dataC['consequence']), formatdata)
                            worksheet.write('X' + str(ind),
                                                convertRisk(convertCA(dataC['consequence']),
                                                                        convertDF(dataC['pof_catalog'])),
                                                formatdata)
                            worksheet.write('Y' + str(ind),
                                                convertRisk(convertCA(dataC['consequence']),
                                                                        convertDF(dataC['pof_catalog2'])),
                                                formatdata)

                            worksheet1.write('A' + str(ind), dataC['equipment_name'], formatdata)
                            worksheet1.write('B' + str(ind), dataC['equipment_desc'], formatdata)
                            worksheet1.write('C' + str(ind), dataC['equipment_type'], formatdata)
                            worksheet1.write('D' + str(ind), dataC['component_name'], formatdata)
                            worksheet1.write('O' + str(ind), dataC['init_thinning'], formatdata)
                            worksheet1.write('P' + str(ind), dataC['init_cracking'], formatdata)
                            worksheet1.write('Q' + str(ind), dataC['init_other'], formatdata)
                            worksheet1.write('R' + str(ind), dataC['init_pof'], formatdata)
                            worksheet1.write('S' + str(ind), dataC['ext_thinning'], formatdata)
                            worksheet1.write('T' + str(ind), 'N/A', formatdata)
                            worksheet1.write('U' + str(ind), 'N/A', formatdata)
                            worksheet1.write('V' + str(ind), dataC['ext_thinning'], formatdata)
                            worksheet1.write('W' + str(ind), dataC['pof_catalog'], formatdata)
                            worksheet1.write('E' + str(ind), dataC['fluid'], formatdata)
                            worksheet1.write('F' + str(ind), dataC['fluid_phase'], formatdata)
                            worksheet1.write('G' + str(ind), 'N/A', formatdata)
                            worksheet1.write('H' + str(ind), dataC['flamable'], formatdata)
                            worksheet1.write('I' + str(ind), dataC['inj'], formatdata)
                            worksheet1.write('J' + str(ind), dataC['business'], formatdata)
                            worksheet1.write('K' + str(ind), dataC['env'], formatdata)
                            worksheet1.write('L' + str(ind), 'N/A', formatdata)
                            worksheet1.write('M' + str(ind), dataC['consequence'], formatdata)
                            worksheet1.write('X' + str(ind), dataC['risk'], formatdata)
                            worksheet1.write('Y' + str(ind), dataC['risk_future'], formatdata)
                            ind += 1
            worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"High"', 'format': red})
            worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"Medium High"',
                                              'format': orange})
            worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"Medium"', 'format': yellow})
            worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"Low"', 'format': green})
            worksheet.conditional_format('X3:Y' + str(ind),
                                             {'type': 'cell', 'criteria': '==', 'value': '"N/A"', 'format': gray})
        if insp_F is not None:
            for E in insp_F:
                if E is not None:
                    for C in E:
                        if C is not None:
                            for insp in C:
                                if insp is not None:
                                    worksheet2.write('B' + str(insp_ind), insp['System'], formatdata)
                                    worksheet2.write('A' + str(insp_ind), insp['Equipment'], formatdata)
                                    worksheet2.write('C' + str(insp_ind), insp['Damage'],
                                                         formatdata)
                                    worksheet2.write('D' + str(insp_ind), insp['Method'], formatdata)
                                    worksheet2.data_validation('D' + str(insp_ind),
                                                                   {'validate': 'list', 'source': '=Lookup!$A$2:$A$37'})
                                    worksheet2.write('E' + str(insp_ind), insp['Coverage'], formatdata)
                                    worksheet2.write('F' + str(insp_ind), insp['Avaiable'], formatdata)
                                    worksheet2.data_validation('F' + str(insp_ind), {'validate': 'list',
                                                                                         'source': ['online',
                                                                                                    'shutdown']})
                                    worksheet2.write('G' + str(insp_ind), insp['Last'], formattime)
                                    worksheet2.write('H' + str(insp_ind), insp['Interval'], formatdata)
                                    worksheet2.write('I' + str(insp_ind), insp['Duedate'], formattime)
                                    insp_ind += 1
    else:
        dataS = getS_risk(idx)
        insp_S = getS_insp(idx)
        ind = 3
        insp_ind = 2
        name = getS_name(idx)
        if dataS is not None:
            for dataF in dataS:
                if dataF is not None:
                    for dataE in dataF:
                        if dataE is not None:
                            for dataC in dataE:
                                if dataC is not None:
                                    worksheet.write('A' + str(ind), (dataC['equipment_name']), formatdata)
                                    worksheet.write('B' + str(ind), (dataC['equipment_desc']), formatdata)
                                    worksheet.write('C' + str(ind), (dataC['equipment_type']), formatdata)
                                    worksheet.write('D' + str(ind), (dataC['component_name']), formatdata)
                                    worksheet.write('O' + str(ind), convertDF(dataC['init_thinning']), formatdata)
                                    worksheet.write('P' + str(ind), convertDF(dataC['init_cracking']), formatdata)
                                    worksheet.write('Q' + str(ind), convertDF(dataC['init_other']), formatdata)
                                    worksheet.write('R' + str(ind), convertDF(dataC['init_pof']), formatdata)
                                    worksheet.write('S' + str(ind), convertDF(dataC['ext_thinning']), formatdata)
                                    worksheet.write('T' + str(ind), convertDF(0), formatdata)
                                    worksheet.write('U' + str(ind), convertDF(0), formatdata)
                                    worksheet.write('V' + str(ind), convertDF(dataC['ext_thinning']), formatdata)
                                    worksheet.write('W' + str(ind), convertDF(dataC['pof_catalog']), formatdata)
                                    worksheet.write('E' + str(ind), dataC['fluid'], formatdata)
                                    worksheet.write('F' + str(ind), dataC['fluid_phase'], formatdata)
                                    worksheet.write('G' + str(ind), 'N/A', formatdata)
                                    worksheet.write('H' + str(ind), convertCA(dataC['flamable']), formatdata)
                                    worksheet.write('I' + str(ind), convertCA(dataC['inj']), formatdata)
                                    worksheet.write('J' + str(ind), convertCA(dataC['business']), formatdata)
                                    worksheet.write('K' + str(ind), convertCA(dataC['env']), formatdata)
                                    worksheet.write('L' + str(ind), 'N/A', formatdata)
                                    worksheet.write('M' + str(ind), convertCA(dataC['consequence']), formatdata)
                                    worksheet.write('X' + str(ind), convertRisk(convertCA(dataC['consequence']), convertDF(dataC['pof_catalog'])),
                                                    formatdata)
                                    worksheet.write('Y' + str(ind),
                                                    convertRisk(convertCA(dataC['consequence']),
                                                                            convertDF(dataC['pof_catalog2'])),
                                                    formatdata)

                                    worksheet1.write('A' + str(ind), dataC['equipment_name'], formatdata)
                                    worksheet1.write('B' + str(ind), dataC['equipment_desc'], formatdata)
                                    worksheet1.write('C' + str(ind), dataC['equipment_type'], formatdata)
                                    worksheet1.write('D' + str(ind), dataC['component_name'], formatdata)
                                    worksheet1.write('O' + str(ind), dataC['init_thinning'], formatdata)
                                    worksheet1.write('P' + str(ind), dataC['init_cracking'], formatdata)
                                    worksheet1.write('Q' + str(ind), dataC['init_other'], formatdata)
                                    worksheet1.write('R' + str(ind), dataC['init_pof'], formatdata)
                                    worksheet1.write('S' + str(ind), dataC['ext_thinning'], formatdata)
                                    worksheet1.write('T' + str(ind), 'N/A', formatdata)
                                    worksheet1.write('U' + str(ind), 'N/A', formatdata)
                                    worksheet1.write('V' + str(ind), dataC['ext_thinning'], formatdata)
                                    worksheet1.write('W' + str(ind), dataC['pof_catalog'], formatdata)
                                    worksheet1.write('E' + str(ind), dataC['fluid'], formatdata)
                                    worksheet1.write('F' + str(ind), dataC['fluid_phase'], formatdata)
                                    worksheet1.write('G' + str(ind), 'N/A', formatdata)
                                    worksheet1.write('H' + str(ind), dataC['flamable'], formatdata)
                                    worksheet1.write('I' + str(ind), dataC['inj'], formatdata)
                                    worksheet1.write('J' + str(ind), dataC['business'], formatdata)
                                    worksheet1.write('K' + str(ind), dataC['env'], formatdata)
                                    worksheet1.write('L' + str(ind), 'N/A', formatdata)
                                    worksheet1.write('M' + str(ind), dataC['consequence'], formatdata)
                                    worksheet1.write('X' + str(ind), dataC['risk'], formatdata)
                                    worksheet1.write('Y' + str(ind), dataC['risk_future'], formatdata)
                                    ind += 1
            worksheet.conditional_format('X3:Y' + str(ind),
                                         {'type': 'cell', 'criteria': '==', 'value': '"High"', 'format': red})
            worksheet.conditional_format('X3:Y' + str(ind),
                                         {'type': 'cell', 'criteria': '==', 'value': '"Medium High"',
                                          'format': orange})
            worksheet.conditional_format('X3:Y' + str(ind),
                                         {'type': 'cell', 'criteria': '==', 'value': '"Medium"', 'format': yellow})
            worksheet.conditional_format('X3:Y' + str(ind),
                                         {'type': 'cell', 'criteria': '==', 'value': '"Low"', 'format': green})
            worksheet.conditional_format('X3:Y' + str(ind),
                                         {'type': 'cell', 'criteria': '==', 'value': '"N/A"', 'format': gray})
        if insp_S is not None:
            for F in insp_S:
                if F is not None:
                    for E in F:
                        if E is not None:
                            for C in E:
                                if C is not None:
                                    for insp in C:
                                        if insp is not None:
                                            worksheet2.write('B' + str(insp_ind), insp['System'], formatdata)
                                            worksheet2.write('A' + str(insp_ind), insp['Equipment'], formatdata)
                                            worksheet2.write('C' + str(insp_ind), insp['Damage'],
                                                             formatdata)
                                            worksheet2.write('D' + str(insp_ind), insp['Method'], formatdata)
                                            worksheet2.data_validation('D' + str(insp_ind),
                                                                       {'validate': 'list',
                                                                        'source': '=Lookup!$A$2:$A$37'})
                                            worksheet2.write('E' + str(insp_ind), insp['Coverage'], formatdata)
                                            worksheet2.write('F' + str(insp_ind), insp['Avaiable'], formatdata)
                                            worksheet2.data_validation('F' + str(insp_ind), {'validate': 'list',
                                                                                             'source': ['online',
                                                                                                        'shutdown']})
                                            worksheet2.write('G' + str(insp_ind), insp['Last'], formattime)
                                            worksheet2.write('H' + str(insp_ind), insp['Interval'], formatdata)
                                            worksheet2.write('I' + str(insp_ind), insp['Duedate'], formattime)
                                            insp_ind += 1

    workbook.close()
    output.seek(0)
    response = HttpResponse(output.read(), content_type="application/ms-excel")
    response['Content-Disposition'] = 'attachment; filename=' + name + '.xlsx'
    return response

