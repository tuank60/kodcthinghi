import os,sys
from django.core.wsgi import get_wsgi_application

os.environ['DJANGO_SETTINGS_MODULE'] = 'RbiCloud.settings'
application = get_wsgi_application()

from cloud import models
from cloud.process.RBI import Postgresql
from cloud.process.RBI import DM_CAL
from cloud.process.RBI import CA_CAL
from cloud.process.RBI import pofConvert
from cloud.process.RBI import CO_CAL

def caculateCorrisionRate(proposalID):
    try:
        rwassessment = models.RwAssessment.objects.get(id=proposalID)
        rwcorrosionratetank = models.CorrosionRateTank.objects.filter(id_id=proposalID)
        rwcomponent = models.RwComponent.objects.get(id=proposalID)
        comp = models.ComponentMaster.objects.get(componentid=rwassessment.componentid_id)
        for a in rwcorrosionratetank:
            co_cal = CO_CAL.CO_CAL(SoilResistivity=a.potentialcorrosion, ASTPADTYPE=a.tankpadmaterial,
                                   AST_DRAINAGE_TYPE=a.tankdrainagetype,
                                   CATHODIC_PROTECTION_TYPE=a.cathodicprotectiontype,
                                   AST_PAD_TYPE_BOTTOM=a.tankbottomtype,
                                   SoilSideTemperature=a.soilsidetemperature,
                                   PRODUCT_SIDE_CONDITION=a.productcondition,
                                   ProductSideTemp=a.productsidetemp, STRAM_COIL=a.steamcoil,
                                   WATER_DRAW_OFF=a.waterdrawoff, crpb=a.productsidecorrosionrate,
                                   ProductSideBottomCR=a.productsidebottom,crsb=a.soilsidecorrosionrate)
            co_cal.CR_S()
            co_cal.CR_P()
            co_cal.FinalEstimated_CR()
            corri = models.CorrosionRateTank.objects.get(corrosionid=a.corrosionid)
            corri.modifiedsoilsidecorrosionrate = co_cal.CR_S()
            corri.modifiedproductsidecorrosionrate = co_cal.CR_P()
            corri.finalestimatedcorrosionrate = co_cal.FinalEstimated_CR()
            corri.save()
    except Exception as e:
        print("Exception at fast calculate")
        print(e)


def calculateNormal(proposalID):
    try:
        rwassessment = models.RwAssessment.objects.get(id=proposalID)
        rwequipment = models.RwEquipment.objects.get(id=proposalID)
        rwcomponent = models.RwComponent.objects.get(id=proposalID)
        rwstream = models.RwStream.objects.get(id=proposalID)
        rwexcor = models.RwExtcorTemperature.objects.get(id=proposalID)
        rwcoat = models.RwCoating.objects.get(id=proposalID)
        rwmaterial = models.RwMaterial.objects.get(id=proposalID)
        rwinputca = models.RwInputCaLevel1.objects.get(id=proposalID)
        countRefullPOF = models.RwFullPof.objects.filter(id=proposalID)
        countCalv1 = models.RwCaLevel1.objects.filter(id=proposalID)
        damageMachinsm = models.RwDamageMechanism.objects.filter(id_dm=proposalID)
        countRefullfc = models.RwFullFcof.objects.filter(id=proposalID)
        chart = models.RwDataChart.objects.filter(id=proposalID)

        comp = models.ComponentMaster.objects.get(componentid=rwassessment.componentid_id)
        target = models.FacilityRiskTarget.objects.get(
            facilityid=models.EquipmentMaster.objects.get(equipmentid=comp.equipmentid_id).facilityid_id)
        datafaci = models.Facility.objects.get(
            facilityid=models.EquipmentMaster.objects.get(equipmentid=comp.equipmentid_id).facilityid_id)
        comptype = models.ComponentType.objects.get(componenttypeid=comp.componenttypeid_id)

        if not rwcoat.externalcoating:
            dm_cal = DM_CAL.DM_CAL(ComponentNumber=str(comp.componentnumber),
                                   Commissiondate=models.EquipmentMaster.objects.get(
                                       equipmentid=comp.equipmentid_id).commissiondate,
                                   AssessmentDate=rwassessment.assessmentdate,
                                   APIComponentType=models.ApiComponentType.objects.get(
                                       apicomponenttypeid=comp.apicomponenttypeid).apicomponenttypename,
                                   Diametter=rwcomponent.nominaldiameter, NomalThick=rwcomponent.nominalthickness,
                                   CurrentThick=rwcomponent.currentthickness, MinThickReq=rwcomponent.minreqthickness,
                                   CorrosionRate=rwcomponent.currentcorrosionrate, CA=rwmaterial.corrosionallowance,
                                   CladdingCorrosionRate=rwcoat.claddingcorrosionrate,
                                   InternalCladding=bool(rwcoat.internalcladding),
                                   OnlineMonitoring=rwequipment.onlinemonitoring,
                                   HighlyEffectDeadleg=bool(rwequipment.highlydeadleginsp),
                                   ContainsDeadlegs=bool(rwequipment.containsdeadlegs),
                                   LinningType=rwcoat.internallinertype,
                                   LINNER_ONLINE=bool(rwequipment.lineronlinemonitoring),
                                   LINNER_CONDITION=rwcoat.internallinercondition,
                                   INTERNAL_LINNING=bool(rwcoat.internallining),
                                   HEAT_TREATMENT=rwmaterial.heattreatment,
                                   NaOHConcentration=rwstream.naohconcentration,
                                   HEAT_TRACE=bool(rwequipment.heattraced),
                                   STEAM_OUT=bool(rwequipment.steamoutwaterflush),
                                   AMINE_EXPOSED=bool(rwstream.exposedtogasamine),
                                   AMINE_SOLUTION=rwstream.aminesolution,
                                   ENVIRONMENT_H2S_CONTENT=bool(rwstream.h2s),
                                   AQUEOUS_OPERATOR=bool(rwstream.aqueousoperation),
                                   AQUEOUS_SHUTDOWN=bool(rwstream.aqueousshutdown),
                                   H2SContent=rwstream.h2sinwater, PH=rwstream.waterph,
                                   PRESENT_CYANIDE=bool(rwstream.cyanide), BRINNEL_HARDNESS=rwcomponent.brinnelhardness,
                                   SULFUR_CONTENT=rwmaterial.sulfurcontent,
                                   CO3_CONTENT=rwstream.co3concentration,
                                   PTA_SUSCEP=bool(rwmaterial.ispta), NICKEL_ALLOY=bool(rwmaterial.nickelbased),
                                   EXPOSED_SULFUR=bool(rwstream.exposedtosulphur),
                                   ExposedSH2OOperation=bool(rwequipment.presencesulphideso2),
                                   ExposedSH2OShutdown=bool(rwequipment.presencesulphideso2shutdown),
                                   ThermalHistory=rwequipment.thermalhistory, PTAMaterial=rwmaterial.ptamaterialcode,
                                   DOWNTIME_PROTECTED=bool(rwequipment.downtimeprotectionused),
                                   INTERNAL_EXPOSED_FLUID_MIST=bool(rwstream.materialexposedtoclint),
                                   EXTERNAL_EXPOSED_FLUID_MIST=bool(rwequipment.materialexposedtoclext),
                                   CHLORIDE_ION_CONTENT=rwstream.chloride,
                                   HF_PRESENT=bool(rwstream.hydrofluoric),
                                   INTERFACE_SOIL_WATER=bool(rwequipment.interfacesoilwater),
                                   SUPPORT_COATING=bool(rwcoat.supportconfignotallowcoatingmaint),
                                   INSULATION_TYPE=rwcoat.externalinsulationtype,
                                   CUI_PERCENT_1=rwexcor.minus12tominus8, CUI_PERCENT_2=rwexcor.minus8toplus6,
                                   CUI_PERCENT_3=rwexcor.plus6toplus32, CUI_PERCENT_4=rwexcor.plus32toplus71,
                                   CUI_PERCENT_5=rwexcor.plus71toplus107,
                                   CUI_PERCENT_6=rwexcor.plus107toplus121, CUI_PERCENT_7=rwexcor.plus121toplus135,
                                   CUI_PERCENT_8=rwexcor.plus135toplus162,
                                   CUI_PERCENT_9=rwexcor.plus162toplus176, CUI_PERCENT_10=rwexcor.morethanplus176,
                                   EXTERNAL_INSULATION=bool(rwcoat.externalinsulation),
                                   COMPONENT_INSTALL_DATE=models.EquipmentMaster.objects.get(
                                       equipmentid=comp.equipmentid_id).commissiondate,
                                   CRACK_PRESENT=bool(rwcomponent.crackspresent),
                                   EXTERNAL_EVIRONMENT=rwequipment.externalenvironment,
                                   EXTERN_COAT_QUALITY=rwcoat.externalcoatingquality,
                                   PIPING_COMPLEXITY=rwcomponent.complexityprotrusion,
                                   INSULATION_CONDITION=rwcoat.insulationcondition,
                                   INSULATION_CHLORIDE=bool(rwcoat.insulationcontainschloride),
                                   MATERIAL_SUSCEP_HTHA=bool(rwmaterial.ishtha),
                                   HTHA_MATERIAL=rwmaterial.hthamaterialcode,
                                   HTHA_PRESSURE=rwstream.h2spartialpressure * 0.006895,
                                   CRITICAL_TEMP=rwstream.criticalexposuretemperature,
                                   DAMAGE_FOUND=bool(rwcomponent.damagefoundinspection),
                                   LOWEST_TEMP=bool(rwequipment.yearlowestexptemp),
                                   TEMPER_SUSCEP=bool(rwmaterial.temper), PWHT=bool(rwequipment.pwht),
                                   BRITTLE_THICK=rwcomponent.brittlefracturethickness,
                                   CARBON_ALLOY=bool(rwmaterial.carbonlowalloy),
                                   DELTA_FATT=rwcomponent.deltafatt,
                                   MAX_OP_TEMP=rwstream.maxoperatingtemperature,
                                   CHROMIUM_12=bool(rwmaterial.chromemoreequal12),
                                   MIN_OP_TEMP=rwstream.minoperatingtemperature,
                                   MIN_DESIGN_TEMP=rwmaterial.mindesigntemperature,
                                   Hydrogen=rwstream.hydrogen,
                                   REF_TEMP=rwmaterial.referencetemperature,
                                   AUSTENITIC_STEEL=bool(rwmaterial.austenitic), PERCENT_SIGMA=rwmaterial.sigmaphase,
                                   EquipmentType=models.EquipmentType.objects.get(
                                       equipmenttypeid=models.EquipmentMaster.objects.get(
                                           equipmentid=comp.equipmentid_id).equipmenttypeid_id).equipmenttypename,
                                   PREVIOUS_FAIL=rwcomponent.previousfailures,
                                   AMOUNT_SHAKING=rwcomponent.shakingamount, TIME_SHAKING=rwcomponent.shakingtime,
                                   CYLIC_LOAD=rwcomponent.cyclicloadingwitin15_25m,
                                   CORRECT_ACTION=rwcomponent.correctiveaction, NUM_PIPE=rwcomponent.numberpipefittings,
                                   PIPE_CONDITION=rwcomponent.pipecondition, JOINT_TYPE=rwcomponent.branchjointtype,
                                   BRANCH_DIAMETER=rwcomponent.branchdiameter, TensileStrengthDesignTemp=rwmaterial.tensilestrength,
                                   StructuralThickness=rwcomponent.structuralthickness, MINIUM_STRUCTURAL_THICKNESS_GOVERS=rwcomponent.minstructuralthickness,
                                   WeldJonintEfficiency=rwcomponent.weldjointefficiency, AllowableStress=rwcomponent.allowablestress,
                                   YeildStrengthDesignTemp=rwmaterial.yieldstrength,Pressure=rwmaterial.designpressure,
                                   ShapeFactor=comptype.shapefactor,CR_Confidents_Level=rwcomponent.confidencecorrosionrate,
                                   PRESSSURE_CONTROL=bool(rwequipment.pressurisationcontrolled),
                                   FABRICATED_STEEL=bool(rwcomponent.fabricatedsteel),EQUIPMENT_SATISFIED=bool(rwcomponent.equipmentsatisfied),
                                   NOMINAL_OPERATING_CONDITIONS=bool(rwcomponent.nominaloperatingconditions),CET_THE_MAWP=bool(rwcomponent.cetgreaterorequal),
                                   CYCLIC_SERVICE=bool(rwcomponent.cyclicservice),EQUIPMENT_CIRCUIT_SHOCK=bool(rwcomponent.equipmentcircuitshock),
                                   MIN_TEMP_PRESSURE=rwequipment.minreqtemperaturepressurisation)
        else:
            dm_cal = DM_CAL.DM_CAL(ComponentNumber=str(comp.componentnumber),
                                   Commissiondate=models.EquipmentMaster.objects.get(
                                   equipmentid=comp.equipmentid_id).commissiondate,
                                   AssessmentDate=rwassessment.assessmentdate,
                                   APIComponentType=models.ApiComponentType.objects.get(
                                   apicomponenttypeid=comp.apicomponenttypeid).apicomponenttypename,
                                   Diametter=rwcomponent.nominaldiameter, NomalThick=rwcomponent.nominalthickness,
                                   CurrentThick=rwcomponent.currentthickness, MinThickReq=rwcomponent.minreqthickness,
                                   CorrosionRate=rwcomponent.currentcorrosionrate, CA=rwmaterial.corrosionallowance,
                                   CladdingCorrosionRate=rwcoat.claddingcorrosionrate,
                                   InternalCladding=bool(rwcoat.internalcladding),
                                   OnlineMonitoring=rwequipment.onlinemonitoring,
                                   HighlyEffectDeadleg=bool(rwequipment.highlydeadleginsp),
                                   ContainsDeadlegs=bool(rwequipment.containsdeadlegs),
                                   LinningType=rwcoat.internallinertype,
                                   LINNER_ONLINE=bool(rwequipment.lineronlinemonitoring),
                                   LINNER_CONDITION=rwcoat.internallinercondition,
                                   INTERNAL_LINNING=bool(rwcoat.internallining),
                                   HEAT_TREATMENT=rwmaterial.heattreatment,
                                   NaOHConcentration=rwstream.naohconcentration,
                                   HEAT_TRACE=bool(rwequipment.heattraced),
                                   STEAM_OUT=bool(rwequipment.steamoutwaterflush),
                                   AMINE_EXPOSED=bool(rwstream.exposedtogasamine),
                                   AMINE_SOLUTION=rwstream.aminesolution,
                                   ENVIRONMENT_H2S_CONTENT=bool(rwstream.h2s),
                                   AQUEOUS_OPERATOR=bool(rwstream.aqueousoperation),
                                   AQUEOUS_SHUTDOWN=bool(rwstream.aqueousshutdown),
                                   H2SContent=rwstream.h2sinwater, PH=rwstream.waterph,
                                   PRESENT_CYANIDE=bool(rwstream.cyanide), BRINNEL_HARDNESS=rwcomponent.brinnelhardness,
                                   SULFUR_CONTENT=rwmaterial.sulfurcontent,
                                   CO3_CONTENT=rwstream.co3concentration,
                                   PTA_SUSCEP=bool(rwmaterial.ispta), NICKEL_ALLOY=bool(rwmaterial.nickelbased),
                                   EXPOSED_SULFUR=bool(rwstream.exposedtosulphur),
                                   Hydrogen= rwstream.hydrogen,
                                   ExposedSH2OOperation=bool(rwequipment.presencesulphideso2),
                                   ExposedSH2OShutdown=bool(rwequipment.presencesulphideso2shutdown),
                                   ThermalHistory=rwequipment.thermalhistory, PTAMaterial=rwmaterial.ptamaterialcode,
                                   DOWNTIME_PROTECTED=bool(rwequipment.downtimeprotectionused),
                                   INTERNAL_EXPOSED_FLUID_MIST=bool(rwstream.materialexposedtoclint),
                                   EXTERNAL_EXPOSED_FLUID_MIST=bool(rwequipment.materialexposedtoclext),
                                   CHLORIDE_ION_CONTENT=rwstream.chloride,
                                   HF_PRESENT=bool(rwstream.hydrofluoric),
                                   INTERFACE_SOIL_WATER=bool(rwequipment.interfacesoilwater),
                                   SUPPORT_COATING=bool(rwcoat.supportconfignotallowcoatingmaint),
                                   INSULATION_TYPE=rwcoat.externalinsulationtype,
                                   CUI_PERCENT_1=rwexcor.minus12tominus8, CUI_PERCENT_2=rwexcor.minus8toplus6,
                                   CUI_PERCENT_3=rwexcor.plus6toplus32, CUI_PERCENT_4=rwexcor.plus32toplus71,
                                   CUI_PERCENT_5=rwexcor.plus71toplus107,
                                   CUI_PERCENT_6=rwexcor.plus107toplus121, CUI_PERCENT_7=rwexcor.plus121toplus135,
                                   CUI_PERCENT_8=rwexcor.plus135toplus162,
                                   CUI_PERCENT_9=rwexcor.plus162toplus176, CUI_PERCENT_10=rwexcor.morethanplus176,
                                   EXTERNAL_INSULATION=bool(rwcoat.externalinsulation),
                                   COMPONENT_INSTALL_DATE=rwcoat.externalcoatingdate,
                                   CRACK_PRESENT=bool(rwcomponent.crackspresent),
                                   EXTERNAL_EVIRONMENT=rwequipment.externalenvironment,
                                   EXTERN_COAT_QUALITY=rwcoat.externalcoatingquality,
                                   PIPING_COMPLEXITY=rwcomponent.complexityprotrusion,
                                   INSULATION_CONDITION=rwcoat.insulationcondition,
                                   INSULATION_CHLORIDE=bool(rwcoat.insulationcontainschloride),
                                   MATERIAL_SUSCEP_HTHA=bool(rwmaterial.ishtha),
                                   HTHA_MATERIAL=rwmaterial.hthamaterialcode,
                                   HTHA_PRESSURE=rwstream.h2spartialpressure * 0.006895,
                                   CRITICAL_TEMP=rwstream.criticalexposuretemperature,
                                   DAMAGE_FOUND=bool(rwcomponent.damagefoundinspection),
                                   LOWEST_TEMP=bool(rwequipment.yearlowestexptemp),
                                   TEMPER_SUSCEP=bool(rwmaterial.temper), PWHT=bool(rwequipment.pwht),
                                   BRITTLE_THICK=rwcomponent.brittlefracturethickness,
                                   CARBON_ALLOY=bool(rwmaterial.carbonlowalloy),
                                   DELTA_FATT=rwcomponent.deltafatt,
                                   MAX_OP_TEMP=rwstream.maxoperatingtemperature,
                                   CHROMIUM_12=bool(rwmaterial.chromemoreequal12),
                                   MIN_OP_TEMP=rwstream.minoperatingtemperature,
                                   MIN_DESIGN_TEMP=rwmaterial.mindesigntemperature,
                                   REF_TEMP=rwmaterial.referencetemperature,
                                   AUSTENITIC_STEEL=bool(rwmaterial.austenitic), PERCENT_SIGMA=rwmaterial.sigmaphase,
                                   EquipmentType=models.EquipmentType.objects.get(
                                       equipmenttypeid=models.EquipmentMaster.objects.get(
                                           equipmentid=comp.equipmentid_id).equipmenttypeid_id).equipmenttypename,
                                   PREVIOUS_FAIL=rwcomponent.previousfailures,
                                   AMOUNT_SHAKING=rwcomponent.shakingamount, TIME_SHAKING=rwcomponent.shakingtime,
                                   CYLIC_LOAD=rwcomponent.cyclicloadingwitin15_25m,
                                   CORRECT_ACTION=rwcomponent.correctiveaction, NUM_PIPE=rwcomponent.numberpipefittings,
                                   PIPE_CONDITION=rwcomponent.pipecondition, JOINT_TYPE=rwcomponent.branchjointtype,
                                   BRANCH_DIAMETER=rwcomponent.branchdiameter, TensileStrengthDesignTemp=rwmaterial.tensilestrength,
                                   StructuralThickness=rwcomponent.structuralthickness, MINIUM_STRUCTURAL_THICKNESS_GOVERS=rwcomponent.minstructuralthickness,
                                   WeldJonintEfficiency=rwcomponent.weldjointefficiency, AllowableStress=rwcomponent.allowablestress,
                                   YeildStrengthDesignTemp=rwmaterial.yieldstrength,Pressure=rwmaterial.designpressure,
                                   ShapeFactor=comptype.shapefactor,CR_Confidents_Level=rwcomponent.confidencecorrosionrate,
                                   PRESSSURE_CONTROL=bool(rwequipment.pressurisationcontrolled),
                                   FABRICATED_STEEL=bool(rwcomponent.fabricatedsteel),EQUIPMENT_SATISFIED=bool(rwcomponent.equipmentsatisfied),
                                   NOMINAL_OPERATING_CONDITIONS=bool(rwcomponent.nominaloperatingconditions),CET_THE_MAWP=bool(rwcomponent.cetgreaterorequal),
                                   CYCLIC_SERVICE=bool(rwcomponent.cyclicservice),EQUIPMENT_CIRCUIT_SHOCK=bool(rwcomponent.equipmentcircuitshock),
                                   MIN_TEMP_PRESSURE=rwequipment.minreqtemperaturepressurisation)
        ca_cal = CA_CAL.CA_NORMAL(NominalDiametter=rwcomponent.nominaldiameter,
                                  MATERIAL_COST=rwmaterial.costfactor, FLUID=rwinputca.api_fluid,
                                  FLUID_PHASE=rwinputca.system,
                                  API_COMPONENT_TYPE_NAME=models.ApiComponentType.objects.get(apicomponenttypeid= comp.apicomponenttypeid).apicomponenttypename,
                                  DETECTION_TYPE=rwinputca.detection_type,
                                  ISULATION_TYPE=rwinputca.isulation_type, STORED_PRESSURE=rwstream.minoperatingpressure * 6.895,
                                  ATMOSPHERIC_PRESSURE=101, STORED_TEMP=rwstream.minoperatingtemperature + 273,
                                  MASS_INVERT=rwinputca.mass_inventory,
                                  MASS_COMPONENT=rwinputca.mass_component,
                                  MITIGATION_SYSTEM=rwinputca.mitigation_system,
                                  TOXIC_PERCENT=rwinputca.toxic_percent,
                                  RELEASE_DURATION=rwinputca.release_duration,
                                  PRODUCTION_COST=rwinputca.production_cost,
                                  INJURE_COST=rwinputca.injure_cost, ENVIRON_COST=rwinputca.evironment_cost,
                                  PERSON_DENSITY=rwinputca.personal_density,
                                  EQUIPMENT_COST=rwinputca.equipment_cost)
        TOTAL_DF_API1 = dm_cal.DF_TOTAL_API(0)
        TOTAL_DF_API2 = dm_cal.DF_TOTAL_API(3)
        TOTAL_DF_API3 = dm_cal.DF_TOTAL_API(6)

        TOTAL_DF_GENERAL_1 = dm_cal.DF_TOTAL_GENERAL(0)
        TOTAL_DF_GENERAL_2 = dm_cal.DF_TOTAL_GENERAL(3)
        TOTAL_DF_GENERAL_3 = dm_cal.DF_TOTAL_GENERAL(6)

        gffTotal = models.ApiComponentType.objects.get(apicomponenttypeid=comp.apicomponenttypeid).gfftotal
        pofap1 = pofConvert.convert(TOTAL_DF_API1 * datafaci.managementfactor * gffTotal)
        pofap2 = pofConvert.convert(TOTAL_DF_API2 * datafaci.managementfactor * gffTotal)
        pofap3 = pofConvert.convert(TOTAL_DF_API3 * datafaci.managementfactor * gffTotal)

        pof_general_ap1 = pofConvert.convert(TOTAL_DF_GENERAL_1 * datafaci.managementfactor * gffTotal)
        pof_general_ap2 = pofConvert.convert(TOTAL_DF_GENERAL_2 * datafaci.managementfactor * gffTotal)
        pof_general_ap3 = pofConvert.convert(TOTAL_DF_GENERAL_3 * datafaci.managementfactor * gffTotal)
        # full pof
        if countRefullPOF.count() != 0:
            refullPOF = models.RwFullPof.objects.get(id=proposalID)
            refullPOF.thinningap1 = dm_cal.DF_THINNING_TOTAL_API(0)
            refullPOF.thinningap2 = dm_cal.DF_THINNING_TOTAL_API(3)
            refullPOF.thinningap3 = dm_cal.DF_THINNING_TOTAL_API(6)
            refullPOF.sccap1 = dm_cal.DF_SSC_TOTAL_API(0)
            refullPOF.sccap2 = dm_cal.DF_SSC_TOTAL_API(3)
            refullPOF.sccap3 = dm_cal.DF_SSC_TOTAL_API(6)
            refullPOF.externalap1 = dm_cal.DF_EXT_TOTAL_API(0)
            refullPOF.externalap2 = dm_cal.DF_EXT_TOTAL_API(3)
            refullPOF.externalap3 = dm_cal.DF_EXT_TOTAL_API(6)
            refullPOF.brittleap1 = dm_cal.DF_BRIT_TOTAL_API(0)
            refullPOF.brittleap2 = dm_cal.DF_BRIT_TOTAL_API(3)
            refullPOF.brittleap3 = dm_cal.DF_BRIT_TOTAL_API(6)
            refullPOF.htha_ap1 = dm_cal.DF_HTHA_API(0)
            refullPOF.htha_ap2 = dm_cal.DF_HTHA_API(3)
            refullPOF.htha_ap3 = dm_cal.DF_HTHA_API(6)
            refullPOF.fatigueap1 = dm_cal.DF_PIPE_API(0)
            refullPOF.fatigueap2 = dm_cal.DF_PIPE_API(3)
            refullPOF.fatigueap3 = dm_cal.DF_PIPE_API(6)
            refullPOF.fms = datafaci.managementfactor
            refullPOF.thinninglocalap1 = max(dm_cal.DF_THINNING_TOTAL_API(0),
                                             dm_cal.DF_EXT_TOTAL_API(0))
            refullPOF.thinninglocalap2 = max(dm_cal.DF_THINNING_TOTAL_API(3),
                                             dm_cal.DF_EXT_TOTAL_API(3))
            refullPOF.thinninglocalap3 = max(dm_cal.DF_THINNING_TOTAL_API(6),
                                             dm_cal.DF_EXT_TOTAL_API(6))
            refullPOF.thinninggeneralap1 = dm_cal.DF_THINNING_TOTAL_API(0) + dm_cal.DF_EXT_TOTAL_API(0)
            refullPOF.thinninggeneralap2 = dm_cal.DF_THINNING_TOTAL_API(3) + dm_cal.DF_EXT_TOTAL_API(3)
            refullPOF.thinninggeneralap3 = dm_cal.DF_THINNING_TOTAL_API(6) + dm_cal.DF_EXT_TOTAL_API(6)
            if refullPOF.thinningtype == "General":
                refullPOF.totaldfap1 = TOTAL_DF_GENERAL_1
                refullPOF.totaldfap2 = TOTAL_DF_GENERAL_2
                refullPOF.totaldfap3 = TOTAL_DF_GENERAL_3
                refullPOF.pofap1 = pof_general_ap1
                refullPOF.pofap2 = pof_general_ap2
                refullPOF.pofap3 = pof_general_ap3
                refullPOF.pofap1category = dm_cal.PoFCategory(TOTAL_DF_GENERAL_1)
                refullPOF.pofap2category = dm_cal.PoFCategory(TOTAL_DF_GENERAL_2)
                refullPOF.pofap3category = dm_cal.PoFCategory(TOTAL_DF_GENERAL_3)
            else:
                refullPOF.thinningtype = "Local"
                refullPOF.totaldfap1 = TOTAL_DF_API1
                refullPOF.totaldfap2 = TOTAL_DF_API2
                refullPOF.totaldfap3 = TOTAL_DF_API3
                refullPOF.pofap1 = pofap1
                refullPOF.pofap2 = pofap2
                refullPOF.pofap3 = pofap3
                refullPOF.pofap1category = dm_cal.PoFCategory(TOTAL_DF_API1)
                refullPOF.pofap2category = dm_cal.PoFCategory(TOTAL_DF_API2)
                refullPOF.pofap3category = dm_cal.PoFCategory(TOTAL_DF_API3)
            refullPOF.gfftotal = gffTotal
            refullPOF.save()
        else:
            refullPOF = models.RwFullPof(id=rwassessment, thinningap1=dm_cal.DF_THINNING_TOTAL_API(0),
                                         thinningap2=dm_cal.DF_THINNING_TOTAL_API(3),
                                         thinningap3=dm_cal.DF_THINNING_TOTAL_API(6),
                                         sccap1=dm_cal.DF_SSC_TOTAL_API(0), sccap2=dm_cal.DF_SSC_TOTAL_API(3),
                                         sccap3=dm_cal.DF_SSC_TOTAL_API(6),
                                         externalap1=dm_cal.DF_EXT_TOTAL_API(0),
                                         externalap2=dm_cal.DF_EXT_TOTAL_API(3),
                                         externalap3=dm_cal.DF_EXT_TOTAL_API(6),
                                         brittleap1=dm_cal.DF_BRIT_TOTAL_API(0),
                                         brittleap2=dm_cal.DF_BRIT_TOTAL_API(3),
                                         brittleap3=dm_cal.DF_BRIT_TOTAL_API(6),
                                         htha_ap1=dm_cal.DF_HTHA_API(0), htha_ap2=dm_cal.DF_HTHA_API(3),
                                         htha_ap3=dm_cal.DF_HTHA_API(6),
                                         fatigueap1=dm_cal.DF_PIPE_API(0), fatigueap2=dm_cal.DF_PIPE_API(3),
                                         fatigueap3=dm_cal.DF_PIPE_API(6),
                                         fms=datafaci.managementfactor, thinningtype="Local",
                                         thinninglocalap1=max(dm_cal.DF_THINNING_TOTAL_API(0),
                                                              dm_cal.DF_EXT_TOTAL_API(0)),
                                         thinninglocalap2=max(dm_cal.DF_THINNING_TOTAL_API(3),
                                                              dm_cal.DF_EXT_TOTAL_API(3)),
                                         thinninglocalap3=max(dm_cal.DF_THINNING_TOTAL_API(6),
                                                              dm_cal.DF_EXT_TOTAL_API(6)),
                                         thinninggeneralap1=dm_cal.DF_THINNING_TOTAL_API(
                                             0) + dm_cal.DF_EXT_TOTAL_API(0),
                                         thinninggeneralap2=dm_cal.DF_THINNING_TOTAL_API(
                                             3) + dm_cal.DF_EXT_TOTAL_API(3),
                                         thinninggeneralap3=dm_cal.DF_THINNING_TOTAL_API(
                                             6) + dm_cal.DF_EXT_TOTAL_API(6),
                                         totaldfap1=TOTAL_DF_API1, totaldfap2=TOTAL_DF_API2,
                                         totaldfap3=TOTAL_DF_API3,
                                         pofap1=pofap1, pofap2=pofap2, pofap3=pofap3, gfftotal=gffTotal,
                                         pofap1category=dm_cal.PoFCategory(TOTAL_DF_API1),
                                         pofap2category=dm_cal.PoFCategory(TOTAL_DF_API2),
                                         pofap3category=dm_cal.PoFCategory(TOTAL_DF_API3))

            refullPOF.save()
        # ca level 1( CoF)
        if countCalv1.count() != 0:
            calv1 = models.RwCaLevel1.objects.get(id=proposalID)
            if ca_cal.NominalDiametter == 0 or ca_cal.STORED_PRESSURE == 0 or ca_cal.MASS_INVERT == 0 or ca_cal.MASS_COMPONENT == 0 or ca_cal.FLUID is None:
                calv1.fc_total = 100000000
                calv1.fcof_category = "E"
            else:
                calv1.release_phase = ca_cal.GET_RELEASE_PHASE()
                calv1.fact_di = ca_cal.fact_di()
                calv1.ca_inj_flame = ca_cal.ca_inj_flame()
                calv1.ca_inj_toxic = ca_cal.ca_inj_tox()
                calv1.ca_inj_ntnf = ca_cal.ca_inj_nfnt()
                calv1.fact_mit = ca_cal.fact_mit()
                calv1.fact_ait = ca_cal.fact_ait()
                calv1.ca_cmd = ca_cal.ca_cmd()
                calv1.fc_cmd = ca_cal.fc_cmd()
                calv1.fc_affa = ca_cal.fc_affa()
                calv1.fc_envi = ca_cal.fc_environ()
                calv1.fc_prod = ca_cal.fc_prod()
                calv1.fc_inj = ca_cal.fc_inj()
                calv1.fc_total = ca_cal.fc()
                calv1.fcof_category = ca_cal.FC_Category(ca_cal.fc())
            calv1.save()
        else:
            if ca_cal.NominalDiametter == 0 or ca_cal.STORED_PRESSURE == 0 or ca_cal.MASS_INVERT == 0 or ca_cal.MASS_COMPONENT == 0 or ca_cal.FLUID is None:
                calv1 = models.RwCaLevel1(id=rwassessment,
                                              fc_total=100000000, fcof_category="E")
            else:
                calv1 = models.RwCaLevel1(id=rwassessment, release_phase=ca_cal.GET_RELEASE_PHASE(),
                                              fact_di=ca_cal.fact_di(), ca_inj_flame=ca_cal.ca_inj_flame(),
                                              ca_inj_toxic=ca_cal.ca_inj_tox(), ca_inj_ntnf=ca_cal.ca_inj_nfnt(),
                                              fact_mit=ca_cal.fact_mit(), fact_ait=ca_cal.fact_ait(),
                                              ca_cmd=ca_cal.ca_cmd(), fc_cmd=ca_cal.fc_cmd(),
                                              fc_affa=ca_cal.fc_affa(), fc_envi=ca_cal.fc_environ(),
                                              fc_prod=ca_cal.fc_prod(), fc_inj=ca_cal.fc_inj(),
                                              fc_total=ca_cal.fc(), fcof_category=ca_cal.FC_Category(ca_cal.fc()))

            calv1.save()
        # damage machinsm
        damageList = dm_cal.ISDF()
        for dm in damageMachinsm:
            dm.delete()
        for damage in damageList:
            dm = models.RwDamageMechanism(id_dm=rwassessment, dmitemid_id=damage['DM_ITEM_ID'],
                                                          isactive=damage['isActive'],
                                                          df1=damage['DF1'], df2=damage['DF2'], df3=damage['DF3'],
                                                          highestinspectioneffectiveness=damage['highestEFF'],
                                                          secondinspectioneffectiveness=damage['secondEFF'],
                                                          numberofinspections=damage['numberINSP'],
                                                          lastinspdate=damage['lastINSP'].date().strftime('%Y-%m-%d'),
                                                          inspduedate=dm_cal.INSP_DUE_DATE(calv1.fc_total, gffTotal,
                                                                                           datafaci.managementfactor,
                                                                                           target.risktarget_fc).date().strftime(
                                                              '%Y-%m-%d'))
            dm.save()
        #full FC
        if countRefullfc.count() != 0:
            refullfc = models.RwFullFcof.objects.get(id= proposalID)
            refullfc.fcofvalue=calv1.fc_total
            refullfc.fcofcategory=calv1.fcof_category
            refullfc.envcost=rwinputca.evironment_cost
            refullfc.equipcost=rwinputca.equipment_cost
            refullfc.prodcost=rwinputca.production_cost
            refullfc.popdens=rwinputca.personal_density
            refullfc.injcost=rwinputca.injure_cost
            refullfc.save()
        else:
            refullfc = models.RwFullFcof(id=rwassessment, fcofvalue=calv1.fc_total,
                                             fcofcategory=calv1.fcof_category, envcost=rwinputca.evironment_cost,
                                             equipcost=rwinputca.equipment_cost, prodcost=rwinputca.production_cost,
                                             popdens=rwinputca.personal_density, injcost=rwinputca.injure_cost)
            refullfc.save()
        #Chart data
        fcTotal = models.RwFullFcof.objects.get(id=proposalID).fcofvalue
        fullPOF = models.RwFullPof.objects.get(id= proposalID)
        if fullPOF.thinningtype == "General":
            riskList = dm_cal.DF_LIST_16_GENERAL(fcTotal, gffTotal, datafaci.managementfactor, target.risktarget_fc)
        else:
            riskList = dm_cal.DF_LIST_16(fcTotal, gffTotal, datafaci.managementfactor, target.risktarget_fc)
        if chart.count() != 0:
            chartData = models.RwDataChart.objects.get(id=proposalID)
            chartData.riskage1 = riskList[1]
            chartData.riskage2 = riskList[2]
            chartData.riskage3 = riskList[3]
            chartData.riskage4 = riskList[4]
            chartData.riskage5 = riskList[5]
            chartData.riskage6 = riskList[6]
            chartData.riskage7 = riskList[7]
            chartData.riskage8 = riskList[8]
            chartData.riskage9 = riskList[9]
            chartData.riskage10 = riskList[10]
            chartData.riskage11 = riskList[11]
            chartData.riskage12 = riskList[12]
            chartData.riskage13 = riskList[13]
            chartData.riskage14 = riskList[14]
            chartData.riskage15 = riskList[15]
            chartData.risktarget = riskList[0]
            chartData.save()
        else:
            chartData = models.RwDataChart(id=rwassessment, riskage1=riskList[1], riskage2=riskList[2],
                                               riskage3=riskList[3],
                                               riskage4=riskList[4], riskage5=riskList[5], riskage6=riskList[6],
                                               riskage7=riskList[7],
                                               riskage8=riskList[8], riskage9=riskList[9], riskage10=riskList[10],
                                               riskage11=riskList[11],
                                               riskage12=riskList[12], riskage13=riskList[13],
                                               riskage14=riskList[14],
                                               riskage15=riskList[15], risktarget=riskList[0])
            chartData.save()
    except Exception as e:
        print("Exception at fast calculate")
        print('Error on line {}'.format(sys.exc_info()[-1].tb_lineno), type(e).__name__, e)
        print(e)

def calculateTank(proposalID):
    try:
        rwassessment = models.RwAssessment.objects.get(id=proposalID)
        rwequipment = models.RwEquipment.objects.get(id=proposalID)
        rwcomponent = models.RwComponent.objects.get(id=proposalID)
        rwstream = models.RwStream.objects.get(id=proposalID)
        rwexcor = models.RwExtcorTemperature.objects.get(id=proposalID)
        rwcoat = models.RwCoating.objects.get(id=proposalID)
        rwmaterial = models.RwMaterial.objects.get(id=proposalID)
        rwinputca = models.RwInputCaTank.objects.get(id=proposalID)
        countRwcatank = models.RwCaTank.objects.filter(id=proposalID)
        countRefullPOF = models.RwFullPof.objects.filter(id=proposalID)
        damageMachinsm = models.RwDamageMechanism.objects.filter(id_dm=proposalID)
        countRefullfc = models.RwFullFcof.objects.filter(id=proposalID)
        chart = models.RwDataChart.objects.filter(id=proposalID)

        comp = models.ComponentMaster.objects.get(componentid=rwassessment.componentid_id)
        eq = models.EquipmentMaster.objects.get(equipmentid=rwassessment.equipmentid_id)
        target = models.FacilityRiskTarget.objects.get(facilityid=eq.facilityid_id)
        datafaci = models.Facility.objects.get(facilityid=eq.facilityid_id)
        comptype = models.ComponentType.objects.get(componenttypeid=comp.componenttypeid_id)

        isshell = False
        if comp.componenttypeid_id == 8 or comp.componenttypeid_id == 14:
            isshell = True
        if not rwcoat.externalcoating:
            dm_cal = DM_CAL.DM_CAL(ComponentNumber=str(comp.componentnumber),
                                   Commissiondate=models.EquipmentMaster.objects.get(
                                       equipmentid=comp.equipmentid_id).commissiondate,
                                   AssessmentDate=rwassessment.assessmentdate,
                                   APIComponentType=models.ApiComponentType.objects.get(
                                       apicomponenttypeid=comp.apicomponenttypeid).apicomponenttypename,
                                   Diametter=rwcomponent.nominaldiameter, NomalThick=rwcomponent.nominalthickness,
                                   CurrentThick=rwcomponent.currentthickness, MinThickReq=rwcomponent.minreqthickness,
                                   CorrosionRate=rwcomponent.currentcorrosionrate, CA=rwmaterial.corrosionallowance,
                                   CladdingCorrosionRate=rwcoat.claddingcorrosionrate,
                                   InternalCladding=bool(rwcoat.internalcladding),
                                   OnlineMonitoring=rwequipment.onlinemonitoring,
                                   HighlyEffectDeadleg=bool(rwequipment.highlydeadleginsp),
                                   ContainsDeadlegs=bool(rwequipment.containsdeadlegs),
                                   LinningType=rwcoat.internallinertype,
                                   LINNER_ONLINE=bool(rwequipment.lineronlinemonitoring),
                                   LINNER_CONDITION=rwcoat.internallinercondition,
                                   INTERNAL_LINNING=bool(rwcoat.internallining),
                                   HEAT_TREATMENT=rwmaterial.heattreatment,
                                   NaOHConcentration=rwstream.naohconcentration,
                                   HEAT_TRACE=bool(rwequipment.heattraced),
                                   STEAM_OUT=bool(rwequipment.steamoutwaterflush),
                                   AMINE_EXPOSED=bool(rwstream.exposedtogasamine),
                                   AMINE_SOLUTION=rwstream.aminesolution,
                                   ENVIRONMENT_H2S_CONTENT=bool(rwstream.h2s),
                                   AQUEOUS_OPERATOR=bool(rwstream.aqueousoperation),
                                   AQUEOUS_SHUTDOWN=bool(rwstream.aqueousshutdown),
                                   H2SContent=rwstream.h2sinwater, PH=rwstream.waterph,
                                   PRESENT_CYANIDE=bool(rwstream.cyanide), BRINNEL_HARDNESS=rwcomponent.brinnelhardness,
                                   SULFUR_CONTENT=rwmaterial.sulfurcontent,
                                   CO3_CONTENT=rwstream.co3concentration,
                                   PTA_SUSCEP=bool(rwmaterial.ispta), NICKEL_ALLOY=bool(rwmaterial.nickelbased),
                                   EXPOSED_SULFUR=bool(rwstream.exposedtosulphur),
                                   ExposedSH2OOperation=bool(rwequipment.presencesulphideso2),
                                   ExposedSH2OShutdown=bool(rwequipment.presencesulphideso2shutdown),
                                   ThermalHistory=rwequipment.thermalhistory, PTAMaterial=rwmaterial.ptamaterialcode,
                                   DOWNTIME_PROTECTED=bool(rwequipment.downtimeprotectionused),
                                   INTERNAL_EXPOSED_FLUID_MIST=bool(rwstream.materialexposedtoclint),
                                   EXTERNAL_EXPOSED_FLUID_MIST=bool(rwequipment.materialexposedtoclext),
                                   CHLORIDE_ION_CONTENT=rwstream.chloride,
                                   HF_PRESENT=bool(rwstream.hydrofluoric),
                                   INTERFACE_SOIL_WATER=bool(rwequipment.interfacesoilwater),
                                   SUPPORT_COATING=bool(rwcoat.supportconfignotallowcoatingmaint),
                                   INSULATION_TYPE=rwcoat.externalinsulationtype,
                                   CUI_PERCENT_1=rwexcor.minus12tominus8, CUI_PERCENT_2=rwexcor.minus8toplus6,
                                   CUI_PERCENT_3=rwexcor.plus6toplus32, CUI_PERCENT_4=rwexcor.plus32toplus71,
                                   CUI_PERCENT_5=rwexcor.plus71toplus107,
                                   CUI_PERCENT_6=rwexcor.plus107toplus121, CUI_PERCENT_7=rwexcor.plus121toplus135,
                                   CUI_PERCENT_8=rwexcor.plus135toplus162,
                                   CUI_PERCENT_9=rwexcor.plus162toplus176, CUI_PERCENT_10=rwexcor.morethanplus176,
                                   EXTERNAL_INSULATION=bool(rwcoat.externalinsulation),
                                   COMPONENT_INSTALL_DATE=models.EquipmentMaster.objects.get(
                                       equipmentid=comp.equipmentid_id).commissiondate,
                                   CRACK_PRESENT=bool(rwcomponent.crackspresent),
                                   EXTERNAL_EVIRONMENT=rwequipment.externalenvironment,
                                   EXTERN_COAT_QUALITY=rwcoat.externalcoatingquality,
                                   PIPING_COMPLEXITY=rwcomponent.complexityprotrusion,
                                   INSULATION_CONDITION=rwcoat.insulationcondition,
                                   INSULATION_CHLORIDE=bool(rwcoat.insulationcontainschloride),
                                   MATERIAL_SUSCEP_HTHA=bool(rwmaterial.ishtha),
                                   HTHA_MATERIAL=rwmaterial.hthamaterialcode,
                                   HTHA_PRESSURE=rwstream.h2spartialpressure * 0.006895,
                                   CRITICAL_TEMP=rwstream.criticalexposuretemperature,
                                   DAMAGE_FOUND=bool(rwcomponent.damagefoundinspection),
                                   LOWEST_TEMP=bool(rwequipment.yearlowestexptemp),
                                   TEMPER_SUSCEP=bool(rwmaterial.temper), PWHT=bool(rwequipment.pwht),
                                   BRITTLE_THICK=rwcomponent.brittlefracturethickness,
                                   CARBON_ALLOY=bool(rwmaterial.carbonlowalloy),
                                   DELTA_FATT=rwcomponent.deltafatt,
                                   MAX_OP_TEMP=rwstream.maxoperatingtemperature,
                                   CHROMIUM_12=bool(rwmaterial.chromemoreequal12),
                                   MIN_OP_TEMP=rwstream.minoperatingtemperature,
                                   MIN_DESIGN_TEMP=rwmaterial.mindesigntemperature,
                                   Hydrogen=rwstream.hydrogen,
                                   REF_TEMP=rwmaterial.referencetemperature,
                                   AUSTENITIC_STEEL=bool(rwmaterial.austenitic), PERCENT_SIGMA=rwmaterial.sigmaphase,
                                   EquipmentType=models.EquipmentType.objects.get(
                                       equipmenttypeid=models.EquipmentMaster.objects.get(
                                           equipmentid=comp.equipmentid_id).equipmenttypeid_id).equipmenttypename,
                                   PREVIOUS_FAIL=rwcomponent.previousfailures,
                                   AMOUNT_SHAKING=rwcomponent.shakingamount, TIME_SHAKING=rwcomponent.shakingtime,
                                   CYLIC_LOAD=rwcomponent.cyclicloadingwitin15_25m,
                                   CORRECT_ACTION=rwcomponent.correctiveaction, NUM_PIPE=rwcomponent.numberpipefittings,
                                   PIPE_CONDITION=rwcomponent.pipecondition, JOINT_TYPE=rwcomponent.branchjointtype,
                                   BRANCH_DIAMETER=rwcomponent.branchdiameter,
                                   TensileStrengthDesignTemp=rwmaterial.tensilestrength,
                                   StructuralThickness=rwcomponent.structuralthickness,
                                   MINIUM_STRUCTURAL_THICKNESS_GOVERS=rwcomponent.minstructuralthickness,
                                   WeldJonintEfficiency=rwcomponent.weldjointefficiency,
                                   AllowableStress=rwcomponent.allowablestress,
                                   YeildStrengthDesignTemp=rwmaterial.yieldstrength, Pressure=rwmaterial.designpressure,
                                   ShapeFactor=comptype.shapefactor,
                                   CR_Confidents_Level=rwcomponent.confidencecorrosionrate,
                                   PRESSSURE_CONTROL=bool(rwequipment.pressurisationcontrolled),
                                   FABRICATED_STEEL=bool(rwcomponent.fabricatedsteel),
                                   EQUIPMENT_SATISFIED=bool(rwcomponent.equipmentsatisfied),
                                   NOMINAL_OPERATING_CONDITIONS=bool(rwcomponent.nominaloperatingconditions),
                                   CET_THE_MAWP=bool(rwcomponent.cetgreaterorequal),
                                   CYCLIC_SERVICE=bool(rwcomponent.cyclicservice),
                                   EQUIPMENT_CIRCUIT_SHOCK=bool(rwcomponent.equipmentcircuitshock),
                                   MIN_TEMP_PRESSURE=rwequipment.minreqtemperaturepressurisation)
        else:
            dm_cal = DM_CAL.DM_CAL(ComponentNumber=str(comp.componentnumber),
                                   Commissiondate=models.EquipmentMaster.objects.get(
                                       equipmentid=comp.equipmentid_id).commissiondate,
                                   AssessmentDate=rwassessment.assessmentdate,
                                   APIComponentType=models.ApiComponentType.objects.get(
                                       apicomponenttypeid=comp.apicomponenttypeid).apicomponenttypename,
                                   Diametter=rwcomponent.nominaldiameter, NomalThick=rwcomponent.nominalthickness,
                                   CurrentThick=rwcomponent.currentthickness, MinThickReq=rwcomponent.minreqthickness,
                                   CorrosionRate=rwcomponent.currentcorrosionrate, CA=rwmaterial.corrosionallowance,
                                   CladdingCorrosionRate=rwcoat.claddingcorrosionrate,
                                   InternalCladding=bool(rwcoat.internalcladding),
                                   OnlineMonitoring=rwequipment.onlinemonitoring,
                                   HighlyEffectDeadleg=bool(rwequipment.highlydeadleginsp),
                                   ContainsDeadlegs=bool(rwequipment.containsdeadlegs),
                                   LinningType=rwcoat.internallinertype,
                                   LINNER_ONLINE=bool(rwequipment.lineronlinemonitoring),
                                   LINNER_CONDITION=rwcoat.internallinercondition,
                                   INTERNAL_LINNING=bool(rwcoat.internallining),
                                   HEAT_TREATMENT=rwmaterial.heattreatment,
                                   NaOHConcentration=rwstream.naohconcentration,
                                   HEAT_TRACE=bool(rwequipment.heattraced),
                                   STEAM_OUT=bool(rwequipment.steamoutwaterflush),
                                   AMINE_EXPOSED=bool(rwstream.exposedtogasamine),
                                   AMINE_SOLUTION=rwstream.aminesolution,
                                   ENVIRONMENT_H2S_CONTENT=bool(rwstream.h2s),
                                   AQUEOUS_OPERATOR=bool(rwstream.aqueousoperation),
                                   AQUEOUS_SHUTDOWN=bool(rwstream.aqueousshutdown),
                                   H2SContent=rwstream.h2sinwater, PH=rwstream.waterph,
                                   PRESENT_CYANIDE=bool(rwstream.cyanide), BRINNEL_HARDNESS=rwcomponent.brinnelhardness,
                                   SULFUR_CONTENT=rwmaterial.sulfurcontent,
                                   CO3_CONTENT=rwstream.co3concentration,
                                   PTA_SUSCEP=bool(rwmaterial.ispta), NICKEL_ALLOY=bool(rwmaterial.nickelbased),
                                   EXPOSED_SULFUR=bool(rwstream.exposedtosulphur),
                                   Hydrogen=rwstream.hydrogen,
                                   ExposedSH2OOperation=bool(rwequipment.presencesulphideso2),
                                   ExposedSH2OShutdown=bool(rwequipment.presencesulphideso2shutdown),
                                   ThermalHistory=rwequipment.thermalhistory, PTAMaterial=rwmaterial.ptamaterialcode,
                                   DOWNTIME_PROTECTED=bool(rwequipment.downtimeprotectionused),
                                   INTERNAL_EXPOSED_FLUID_MIST=bool(rwstream.materialexposedtoclint),
                                   EXTERNAL_EXPOSED_FLUID_MIST=bool(rwequipment.materialexposedtoclext),
                                   CHLORIDE_ION_CONTENT=rwstream.chloride,
                                   HF_PRESENT=bool(rwstream.hydrofluoric),
                                   INTERFACE_SOIL_WATER=bool(rwequipment.interfacesoilwater),
                                   SUPPORT_COATING=bool(rwcoat.supportconfignotallowcoatingmaint),
                                   INSULATION_TYPE=rwcoat.externalinsulationtype,
                                   CUI_PERCENT_1=rwexcor.minus12tominus8, CUI_PERCENT_2=rwexcor.minus8toplus6,
                                   CUI_PERCENT_3=rwexcor.plus6toplus32, CUI_PERCENT_4=rwexcor.plus32toplus71,
                                   CUI_PERCENT_5=rwexcor.plus71toplus107,
                                   CUI_PERCENT_6=rwexcor.plus107toplus121, CUI_PERCENT_7=rwexcor.plus121toplus135,
                                   CUI_PERCENT_8=rwexcor.plus135toplus162,
                                   CUI_PERCENT_9=rwexcor.plus162toplus176, CUI_PERCENT_10=rwexcor.morethanplus176,
                                   EXTERNAL_INSULATION=bool(rwcoat.externalinsulation),
                                   COMPONENT_INSTALL_DATE=rwcoat.externalcoatingdate,
                                   CRACK_PRESENT=bool(rwcomponent.crackspresent),
                                   EXTERNAL_EVIRONMENT=rwequipment.externalenvironment,
                                   EXTERN_COAT_QUALITY=rwcoat.externalcoatingquality,
                                   PIPING_COMPLEXITY=rwcomponent.complexityprotrusion,
                                   INSULATION_CONDITION=rwcoat.insulationcondition,
                                   INSULATION_CHLORIDE=bool(rwcoat.insulationcontainschloride),
                                   MATERIAL_SUSCEP_HTHA=bool(rwmaterial.ishtha),
                                   HTHA_MATERIAL=rwmaterial.hthamaterialcode,
                                   HTHA_PRESSURE=rwstream.h2spartialpressure * 0.006895,
                                   CRITICAL_TEMP=rwstream.criticalexposuretemperature,
                                   DAMAGE_FOUND=bool(rwcomponent.damagefoundinspection),
                                   LOWEST_TEMP=bool(rwequipment.yearlowestexptemp),
                                   TEMPER_SUSCEP=bool(rwmaterial.temper), PWHT=bool(rwequipment.pwht),
                                   BRITTLE_THICK=rwcomponent.brittlefracturethickness,
                                   CARBON_ALLOY=bool(rwmaterial.carbonlowalloy),
                                   DELTA_FATT=rwcomponent.deltafatt,
                                   MAX_OP_TEMP=rwstream.maxoperatingtemperature,
                                   CHROMIUM_12=bool(rwmaterial.chromemoreequal12),
                                   MIN_OP_TEMP=rwstream.minoperatingtemperature,
                                   MIN_DESIGN_TEMP=rwmaterial.mindesigntemperature,
                                   REF_TEMP=rwmaterial.referencetemperature,
                                   AUSTENITIC_STEEL=bool(rwmaterial.austenitic), PERCENT_SIGMA=rwmaterial.sigmaphase,
                                   EquipmentType=models.EquipmentType.objects.get(
                                       equipmenttypeid=models.EquipmentMaster.objects.get(
                                           equipmentid=comp.equipmentid_id).equipmenttypeid_id).equipmenttypename,
                                   PREVIOUS_FAIL=rwcomponent.previousfailures,
                                   AMOUNT_SHAKING=rwcomponent.shakingamount, TIME_SHAKING=rwcomponent.shakingtime,
                                   CYLIC_LOAD=rwcomponent.cyclicloadingwitin15_25m,
                                   CORRECT_ACTION=rwcomponent.correctiveaction, NUM_PIPE=rwcomponent.numberpipefittings,
                                   PIPE_CONDITION=rwcomponent.pipecondition, JOINT_TYPE=rwcomponent.branchjointtype,
                                   BRANCH_DIAMETER=rwcomponent.branchdiameter,
                                   TensileStrengthDesignTemp=rwmaterial.tensilestrength,
                                   StructuralThickness=rwcomponent.structuralthickness,
                                   MINIUM_STRUCTURAL_THICKNESS_GOVERS=rwcomponent.minstructuralthickness,
                                   WeldJonintEfficiency=rwcomponent.weldjointefficiency,
                                   AllowableStress=rwcomponent.allowablestress,
                                   YeildStrengthDesignTemp=rwmaterial.yieldstrength, Pressure=rwmaterial.designpressure,
                                   ShapeFactor=comptype.shapefactor,
                                   CR_Confidents_Level=rwcomponent.confidencecorrosionrate,
                                   PRESSSURE_CONTROL=bool(rwequipment.pressurisationcontrolled),
                                   FABRICATED_STEEL=bool(rwcomponent.fabricatedsteel),
                                   EQUIPMENT_SATISFIED=bool(rwcomponent.equipmentsatisfied),
                                   NOMINAL_OPERATING_CONDITIONS=bool(rwcomponent.nominaloperatingconditions),
                                   CET_THE_MAWP=bool(rwcomponent.cetgreaterorequal),
                                   CYCLIC_SERVICE=bool(rwcomponent.cyclicservice),
                                   EQUIPMENT_CIRCUIT_SHOCK=bool(rwcomponent.equipmentcircuitshock),
                                   MIN_TEMP_PRESSURE=rwequipment.minreqtemperaturepressurisation)
        if isshell:
            cacal = CA_CAL.CA_SHELL(FLUID=rwinputca.api_fluid, FLUID_HEIGHT=rwstream.fluidheight,
                                    SHELL_COURSE_HEIGHT=rwinputca.shell_course_height,
                                    TANK_DIAMETER=rwcomponent.nominaldiameter,
                                    EnvironSensitivity=rwequipment.environmentsensitivity,
                                    P_lvdike=rwstream.fluidleavedikepercent,
                                    P_onsite=rwstream.fluidleavedikeremainonsitepercent,
                                    P_offsite=rwstream.fluidgooffsitepercent,
                                    MATERIAL_COST=rwmaterial.costfactor,
                                    API_COMPONENT_TYPE_NAME=models.ApiComponentType.objects.get(apicomponenttypeid= comp.apicomponenttypeid).apicomponenttypename,
                                    PRODUCTION_COST=rwinputca.productioncost)
            if countRwcatank.count() != 0:
                rwcatank = models.RwCaTank.objects.get(id=proposalID)
                rwcatank.flow_rate_d1 = cacal.W_n_Tank(1)
                rwcatank.flow_rate_d2 = cacal.W_n_Tank(2)
                rwcatank.flow_rate_d3 = cacal.W_n_Tank(3)
                rwcatank.flow_rate_d4 = cacal.W_n_Tank(4)
                rwcatank.leak_duration_d1 = cacal.ld_tank(1)
                rwcatank.leak_duration_d2 = cacal.ld_tank(2)
                rwcatank.leak_duration_d3 = cacal.ld_tank(3)
                rwcatank.leak_duration_d4 = cacal.ld_tank(4)
                rwcatank.release_volume_leak_d1 = cacal.Bbl_leak_n(1)
                rwcatank.release_volume_leak_d2 = cacal.Bbl_leak_n(2)
                rwcatank.release_volume_leak_d3 = cacal.Bbl_leak_n(3)
                rwcatank.release_volume_leak_d4 = cacal.Bbl_leak_n(4)
                rwcatank.release_volume_rupture = cacal.Bbl_rupture_release()
                rwcatank.liquid_height = cacal.FLUID_HEIGHT
                rwcatank.volume_fluid = cacal.Bbl_total_shell()
                rwcatank.time_leak_ground = cacal.ld_tank(4)
                rwcatank.volume_subsoil_leak_d1 = cacal.Bbl_leak_release()
                rwcatank.volume_subsoil_leak_d4 = cacal.Bbl_rupture_release()
                rwcatank.volume_ground_water_leak_d1 = cacal.Bbl_leak_water()
                rwcatank.volume_ground_water_leak_d4 = cacal.Bbl_rupture_water()
                rwcatank.barrel_dike_leak = cacal.Bbl_leak_indike()
                rwcatank.barrel_dike_rupture = cacal.Bbl_rupture_indike()
                rwcatank.barrel_onsite_leak = cacal.Bbl_leak_ssonsite()
                rwcatank.barrel_onsite_rupture = cacal.Bbl_rupture_ssonsite()
                rwcatank.barrel_offsite_leak = cacal.Bbl_leak_ssoffsite()
                rwcatank.barrel_offsite_rupture = cacal.Bbl_rupture_ssoffsite()
                rwcatank.barrel_water_leak = cacal.Bbl_leak_water()
                rwcatank.barrel_water_rupture = cacal.Bbl_rupture_water()
                rwcatank.fc_environ_leak = cacal.FC_leak_environ()
                rwcatank.fc_environ_rupture = cacal.FC_rupture_environ()
                rwcatank.fc_environ = cacal.FC_environ_shell()
                rwcatank.material_factor = rwmaterial.costfactor
                rwcatank.component_damage_cost = cacal.fc_cmd()
                rwcatank.business_cost = cacal.FC_PROD_SHELL()
                rwcatank.consequence = cacal.FC_total_shell()
                rwcatank.consequencecategory = cacal.FC_Category(cacal.FC_total_shell())
                rwcatank.save()
            else:
                rwcatank = models.RwCaTank(id=rwassessment, flow_rate_d1=cacal.W_n_Tank(1),
                                           flow_rate_d2=cacal.W_n_Tank(2),
                                           flow_rate_d3=cacal.W_n_Tank(3),
                                           flow_rate_d4=cacal.W_n_Tank(4), leak_duration_d1=cacal.ld_tank(1),
                                           leak_duration_d2=cacal.ld_tank(2),
                                           leak_duration_d3=cacal.ld_tank(3), leak_duration_d4=cacal.ld_tank(4),
                                           release_volume_leak_d1=cacal.Bbl_leak_n(1),
                                           release_volume_leak_d2=cacal.Bbl_leak_n(2),
                                           release_volume_leak_d3=cacal.Bbl_leak_n(3),
                                           release_volume_leak_d4=cacal.Bbl_leak_n(4),
                                           release_volume_rupture=cacal.Bbl_rupture_release(),
                                           liquid_height=cacal.FLUID_HEIGHT,
                                           volume_fluid=cacal.Bbl_total_shell(),
                                           time_leak_ground=cacal.ld_tank(4),
                                           volume_subsoil_leak_d1=cacal.Bbl_leak_release(),
                                           volume_subsoil_leak_d4=cacal.Bbl_rupture_release(),
                                           volume_ground_water_leak_d1=cacal.Bbl_leak_water(),
                                           volume_ground_water_leak_d4=cacal.Bbl_rupture_water(),
                                           barrel_dike_leak=cacal.Bbl_leak_indike(),
                                           barrel_dike_rupture=cacal.Bbl_rupture_indike(),
                                           barrel_onsite_leak=cacal.Bbl_leak_ssonsite(),
                                           barrel_onsite_rupture=cacal.Bbl_rupture_ssonsite(),
                                           barrel_offsite_leak=cacal.Bbl_leak_ssoffsite(),
                                           barrel_offsite_rupture=cacal.Bbl_rupture_ssoffsite(),
                                           barrel_water_leak=cacal.Bbl_leak_water(),
                                           barrel_water_rupture=cacal.Bbl_rupture_water(),
                                           fc_environ_leak=cacal.FC_leak_environ(),
                                           fc_environ_rupture=cacal.FC_rupture_environ(),
                                           fc_environ=cacal.FC_environ_shell(),
                                           material_factor=rwinputca.productioncost,
                                           component_damage_cost=cacal.fc_cmd(),
                                           business_cost=cacal.FC_PROD_SHELL(),
                                           consequence=cacal.FC_total_shell(),
                                           consequencecategory=cacal.FC_Category(cacal.FC_total_shell()))
                rwcatank.save()
            FC_TOTAL = cacal.FC_total_shell()
            FC_CATEGORY = cacal.FC_Category(cacal.FC_total_shell())
        else:
            cacal = CA_CAL.CA_TANK_BOTTOM(Soil_type=rwequipment.typeofsoil, TANK_FLUID=rwstream.tankfluidname,
                                          Swg=rwequipment.distancetogroundwater,
                                          TANK_DIAMETER=rwcomponent.nominaldiameter,
                                          FLUID_HEIGHT=rwstream.fluidheight,
                                          API_COMPONENT_TYPE_NAME=models.ApiComponentType.objects.get(apicomponenttypeid= comp.apicomponenttypeid).apicomponenttypename,
                                          PREVENTION_BARRIER=bool(rwcomponent.releasepreventionbarrier),
                                          EnvironSensitivity=rwequipment.environmentsensitivity,
                                          MATERIAL_COST=rwmaterial.costfactor,
                                          PRODUCTION_COST=rwinputca.productioncost,
                                          P_lvdike=rwstream.fluidleavedikepercent, P_onsite=rwstream.fluidleavedikeremainonsitepercent,
                                          P_offsite=rwstream.fluidgooffsitepercent,Concrete_Asphalt = rwcomponent.concretefoundation)
            if countRwcatank.count() != 0:
                rwcatank = models.RwCaTank.objects.get(id=proposalID)
                rwcatank.hydraulic_water = cacal.k_h_water()
                rwcatank.hydraulic_fluid = cacal.k_h_prod()
                rwcatank.seepage_velocity = cacal.vel_s_prod()
                rwcatank.flow_rate_d1 = cacal.rate_n_tank_bottom(1)
                rwcatank.flow_rate_d4 = cacal.rate_n_tank_bottom(4)
                rwcatank.leak_duration_d1 = cacal.ld_n_tank_bottom(1)
                rwcatank.leak_duration_d4 = cacal.ld_n_tank_bottom(4)
                rwcatank.release_volume_leak_d1 = cacal.Bbl_leak_n_bottom(1)
                rwcatank.release_volume_leak_d4 = cacal.Bbl_leak_n_bottom(4)
                rwcatank.release_volume_rupture = cacal.Bbl_rupture_bottom()
                rwcatank.liquid_height = cacal.FLUID_HEIGHT
                rwcatank.volume_fluid = cacal.BBL_TOTAL_TANKBOTTOM()
                rwcatank.time_leak_ground = cacal.t_gl_bottom()
                rwcatank.volume_subsoil_leak_d1 = cacal.Bbl_leak_subsoil(1)
                rwcatank.volume_subsoil_leak_d4 = cacal.Bbl_leak_subsoil(4)
                rwcatank.volume_ground_water_leak_d1 = cacal.Bbl_leak_groundwater(1)
                rwcatank.volume_ground_water_leak_d4 = cacal.Bbl_leak_groundwater(4)
                rwcatank.barrel_dike_rupture = cacal.Bbl_rupture_indike_bottom()
                rwcatank.barrel_onsite_rupture = cacal.Bbl_rupture_ssonsite_bottom()
                rwcatank.barrel_offsite_rupture = cacal.Bbl_rupture_ssoffsite_bottom()
                rwcatank.barrel_water_rupture = cacal.Bbl_rupture_water_bottom()
                rwcatank.fc_environ_leak = cacal.FC_leak_environ_bottom()
                rwcatank.fc_environ_rupture = cacal.FC_rupture_environ_bottom()
                rwcatank.fc_environ = cacal.FC_environ_bottom()
                rwcatank.material_factor = rwmaterial.costfactor
                rwcatank.component_damage_cost = cacal.FC_cmd_bottom()
                rwcatank.business_cost = cacal.FC_PROD_BOTTOM()
                rwcatank.consequence = cacal.FC_total_bottom()
                rwcatank.consequencecategory = cacal.FC_Category(cacal.FC_total_bottom())
                rwcatank.save()
            else:
                rwcatank = models.RwCaTank(id=rwassessment, hydraulic_water=cacal.k_h_water(),
                                           hydraulic_fluid=cacal.k_h_prod(),
                                           seepage_velocity=cacal.vel_s_prod(),
                                           flow_rate_d1=cacal.rate_n_tank_bottom(1),
                                           flow_rate_d4=cacal.rate_n_tank_bottom(4),
                                           leak_duration_d1=cacal.ld_n_tank_bottom(1),
                                           leak_duration_d4=cacal.ld_n_tank_bottom(4),
                                           release_volume_leak_d1=cacal.Bbl_leak_n_bottom(1),
                                           release_volume_leak_d4=cacal.Bbl_leak_n_bottom(4),
                                           release_volume_rupture=cacal.Bbl_rupture_release_bottom(),
                                           time_leak_ground=cacal.t_gl_bottom(),
                                           volume_subsoil_leak_d1=cacal.Bbl_leak_subsoil(1),
                                           volume_subsoil_leak_d4=cacal.Bbl_leak_subsoil(4),
                                           volume_ground_water_leak_d1=cacal.Bbl_leak_groundwater(1),
                                           volume_ground_water_leak_d4=cacal.Bbl_leak_groundwater(4),
                                           barrel_dike_rupture=cacal.Bbl_rupture_indike_bottom(),
                                           barrel_onsite_rupture=cacal.Bbl_rupture_ssonsite_bottom(),
                                           barrel_offsite_rupture=cacal.Bbl_rupture_ssoffsite_bottom(),
                                           barrel_water_rupture=cacal.Bbl_rupture_water_bottom(),
                                           fc_environ_leak=cacal.FC_leak_environ_bottom(),
                                           fc_environ_rupture=cacal.FC_rupture_environ_bottom(),
                                           fc_environ=cacal.FC_environ_bottom(),
                                           material_factor=rwmaterial.costfactor,
                                           component_damage_cost=cacal.FC_cmd_bottom(),
                                           business_cost=cacal.FC_PROD_BOTTOM(),
                                           consequence=cacal.FC_total_bottom(),
                                           consequencecategory=cacal.FC_Category(cacal.FC_total_bottom()),
                                           liquid_height=cacal.FLUID_HEIGHT,
                                           volume_fluid=cacal.BBL_TOTAL_TANKBOTTOM())
                rwcatank.save()
            FC_TOTAL = cacal.FC_total_bottom()
            FC_CATEGORY = cacal.FC_Category(cacal.FC_total_bottom())
        TOTAL_DF_API1 = dm_cal.DF_TOTAL_API(0)
        TOTAL_DF_API2 = dm_cal.DF_TOTAL_API(3)
        TOTAL_DF_API3 = dm_cal.DF_TOTAL_API(6)

        TOTAL_DF_GENERAL_1 = dm_cal.DF_TOTAL_GENERAL(0)
        TOTAL_DF_GENERAL_2 = dm_cal.DF_TOTAL_GENERAL(3)
        TOTAL_DF_GENERAL_3 = dm_cal.DF_TOTAL_GENERAL(6)

        gffTotal = models.ApiComponentType.objects.get(apicomponenttypeid=comp.apicomponenttypeid).gfftotal
        pofap1 = pofConvert.convert(float(TOTAL_DF_API1) * float(datafaci.managementfactor) * float(gffTotal))
        pofap2 = pofConvert.convert(float(TOTAL_DF_API2) * float(datafaci.managementfactor) * float(gffTotal))
        pofap3 = pofConvert.convert(float(TOTAL_DF_API3) * float(datafaci.managementfactor) * float(gffTotal))

        pof_general_ap1 = pofConvert.convert(TOTAL_DF_GENERAL_1 * datafaci.managementfactor * gffTotal)
        pof_general_ap2 = pofConvert.convert(TOTAL_DF_GENERAL_2 * datafaci.managementfactor * gffTotal)
        pof_general_ap3 = pofConvert.convert(TOTAL_DF_GENERAL_3 * datafaci.managementfactor * gffTotal)
        # thinningtype = General or Local
        if countRefullPOF.count() != 0:
            refullPOF = models.RwFullPof.objects.get(id=proposalID)
            refullPOF.thinningap1 = dm_cal.DF_THINNING_TOTAL_API(0)
            refullPOF.thinningap2 = dm_cal.DF_THINNING_TOTAL_API(3)
            refullPOF.thinningap3 = dm_cal.DF_THINNING_TOTAL_API(6)
            refullPOF.sccap1 = dm_cal.DF_SSC_TOTAL_API(0)
            refullPOF.sccap2 = dm_cal.DF_SSC_TOTAL_API(3)
            refullPOF.sccap3 = dm_cal.DF_SSC_TOTAL_API(6)
            refullPOF.externalap1 = dm_cal.DF_EXT_TOTAL_API(0)
            refullPOF.externalap2 = dm_cal.DF_EXT_TOTAL_API(3)
            refullPOF.externalap3 = dm_cal.DF_EXT_TOTAL_API(6)
            refullPOF.brittleap1 = dm_cal.DF_BRIT_TOTAL_API(0)
            refullPOF.brittleap2 = dm_cal.DF_BRIT_TOTAL_API(3)
            refullPOF.brittleap3 = dm_cal.DF_BRIT_TOTAL_API(6)
            refullPOF.htha_ap1 = dm_cal.DF_HTHA_API(0)
            refullPOF.htha_ap2 = dm_cal.DF_HTHA_API(3)
            refullPOF.htha_ap3 = dm_cal.DF_HTHA_API(6)
            refullPOF.fatigueap1 = dm_cal.DF_PIPE_API(0)
            refullPOF.fatigueap2 = dm_cal.DF_PIPE_API(3)
            refullPOF.fatigueap3 = dm_cal.DF_PIPE_API(6)
            refullPOF.fms = datafaci.managementfactor
            refullPOF.thinninglocalap1 = max(dm_cal.DF_THINNING_TOTAL_API(0), dm_cal.DF_EXT_TOTAL_API(0))
            refullPOF.thinninglocalap2 = max(dm_cal.DF_THINNING_TOTAL_API(3), dm_cal.DF_EXT_TOTAL_API(3))
            refullPOF.thinninglocalap3 = max(dm_cal.DF_THINNING_TOTAL_API(6), dm_cal.DF_EXT_TOTAL_API(6))
            refullPOF.thinninggeneralap1 = dm_cal.DF_THINNING_TOTAL_API(0) + dm_cal.DF_EXT_TOTAL_API(0)
            refullPOF.thinninggeneralap2 = dm_cal.DF_THINNING_TOTAL_API(3) + dm_cal.DF_EXT_TOTAL_API(3)
            refullPOF.thinninggeneralap3 = dm_cal.DF_THINNING_TOTAL_API(6) + dm_cal.DF_EXT_TOTAL_API(6)
            if refullPOF.thinningtype == "General":

                refullPOF.totaldfap1 = TOTAL_DF_GENERAL_1
                refullPOF.totaldfap2 = TOTAL_DF_GENERAL_2
                refullPOF.totaldfap3 = TOTAL_DF_GENERAL_3
                refullPOF.pofap1 = pof_general_ap1
                refullPOF.pofap2 = pof_general_ap2
                refullPOF.pofap3 = pof_general_ap3
                refullPOF.pofap1category = dm_cal.PoFCategory(TOTAL_DF_GENERAL_1)
                refullPOF.pofap2category = dm_cal.PoFCategory(TOTAL_DF_GENERAL_2)
                refullPOF.pofap3category = dm_cal.PoFCategory(TOTAL_DF_GENERAL_3)
            else:
                refullPOF.thinningtype = "Local"
                refullPOF.totaldfap1 = TOTAL_DF_API1
                refullPOF.totaldfap2 = TOTAL_DF_API2
                refullPOF.totaldfap3 = TOTAL_DF_API3
                refullPOF.pofap1 = pofap1
                refullPOF.pofap2 = pofap2
                refullPOF.pofap3 = pofap3
                refullPOF.pofap1category = dm_cal.PoFCategory(TOTAL_DF_API1)
                refullPOF.pofap2category = dm_cal.PoFCategory(TOTAL_DF_API2)
                refullPOF.pofap3category = dm_cal.PoFCategory(TOTAL_DF_API3)
            refullPOF.gfftotal = gffTotal
            refullPOF.save()
        else:
            refullPOF = models.RwFullPof(id=rwassessment, thinningap1=dm_cal.DF_THINNING_TOTAL_API(0),
                                         thinningap2=dm_cal.DF_THINNING_TOTAL_API(3),
                                         thinningap3=dm_cal.DF_THINNING_TOTAL_API(6),
                                         sccap1=dm_cal.DF_SSC_TOTAL_API(0), sccap2=dm_cal.DF_SSC_TOTAL_API(3),
                                         sccap3=dm_cal.DF_SSC_TOTAL_API(6),
                                         externalap1=dm_cal.DF_EXT_TOTAL_API(0),
                                         externalap2=dm_cal.DF_EXT_TOTAL_API(3),
                                         externalap3=dm_cal.DF_EXT_TOTAL_API(6),
                                         brittleap1=dm_cal.DF_BRIT_TOTAL_API(0),
                                         brittleap2=dm_cal.DF_BRIT_TOTAL_API(3),
                                         brittleap3=dm_cal.DF_BRIT_TOTAL_API(6),
                                         htha_ap1=dm_cal.DF_HTHA_API(0), htha_ap2=dm_cal.DF_HTHA_API(3),
                                         htha_ap3=dm_cal.DF_HTHA_API(6),
                                         fatigueap1=dm_cal.DF_PIPE_API(0), fatigueap2=dm_cal.DF_PIPE_API(3),
                                         fatigueap3=dm_cal.DF_PIPE_API(6),
                                         fms=datafaci.managementfactor, thinningtype="Local",
                                         thinninglocalap1=max(dm_cal.DF_THINNING_TOTAL_API(0),
                                                              dm_cal.DF_EXT_TOTAL_API(0)),
                                         thinninglocalap2=max(dm_cal.DF_THINNING_TOTAL_API(3),
                                                              dm_cal.DF_EXT_TOTAL_API(3)),
                                         thinninglocalap3=max(dm_cal.DF_THINNING_TOTAL_API(6),
                                                              dm_cal.DF_EXT_TOTAL_API(6)),
                                         thinninggeneralap1=dm_cal.DF_THINNING_TOTAL_API(
                                             0) + dm_cal.DF_EXT_TOTAL_API(0),
                                         thinninggeneralap2=dm_cal.DF_THINNING_TOTAL_API(
                                             3) + dm_cal.DF_EXT_TOTAL_API(3),
                                         thinninggeneralap3=dm_cal.DF_THINNING_TOTAL_API(
                                             6) + dm_cal.DF_EXT_TOTAL_API(6),
                                         totaldfap1=TOTAL_DF_API1, totaldfap2=TOTAL_DF_API2,
                                         totaldfap3=TOTAL_DF_API3,
                                         pofap1=pofap1, pofap2=pofap2, pofap3=pofap3, gfftotal=gffTotal,
                                         pofap1category=dm_cal.PoFCategory(TOTAL_DF_API1),
                                         pofap2category=dm_cal.PoFCategory(TOTAL_DF_API2),
                                         pofap3category=dm_cal.PoFCategory(TOTAL_DF_API3))
            refullPOF.save()
        # damage machinsm
        damageList = dm_cal.ISDF()
        for dm in damageMachinsm:
            dm.delete()
        ErrDammage = []
        for damage in damageList:
            dm = models.RwDamageMechanism(id_dm=rwassessment, dmitemid_id=damage['DM_ITEM_ID'],
                                          isactive=damage['isActive'],
                                          df1=damage['DF1'], df2=damage['DF2'], df3=damage['DF3'],
                                          highestinspectioneffectiveness=damage['highestEFF'],
                                          secondinspectioneffectiveness=damage['secondEFF'],
                                          numberofinspections=damage['numberINSP'],
                                          lastinspdate=damage['lastINSP'].date().strftime('%Y-%m-%d'),
                                          inspduedate=dm_cal.INSP_DUE_DATE(FC_TOTAL, gffTotal,
                                                                           datafaci.managementfactor,
                                                                           target.risktarget_fc).date().strftime('%Y-%m-%d'))
            dm.save()
            ErrDammage.append(damage['DM_ITEM_ID'])
        # for da in ErrDammage:
        #     print(da)
        dm_cal.SEND_EMAIL(FC_TOTAL, gffTotal,
                          datafaci.managementfactor,
                          target.risktarget_fc,ErrDammage,datafaci.facilityname)

        if countRefullfc.count() != 0:
            refullfc = models.RwFullFcof.objects.get(id=proposalID)
            refullfc.fcofvalue = FC_TOTAL
            refullfc.fcofcategory = FC_CATEGORY
            refullfc.prodcost = rwinputca.productioncost
            refullfc.save()
        else:
            refullfc = models.RwFullFcof(id=rwassessment, fcofvalue=FC_TOTAL, fcofcategory=FC_CATEGORY,
                                         prodcost=rwinputca.productioncost)
            refullfc.save()
        # data for chart
        fullPOF = models.RwFullPof.objects.get(id=proposalID)
        if fullPOF.thinningtype == "General":
            riskList = dm_cal.DF_LIST_16_GENERAL(FC_TOTAL, gffTotal, datafaci.managementfactor, target.risktarget_fc)
        else:
            riskList = dm_cal.DF_LIST_16(FC_TOTAL, gffTotal, datafaci.managementfactor, target.risktarget_fc)
        if chart.count() != 0:
            chartData = models.RwDataChart.objects.get(id=proposalID)
            chartData.riskage1 = riskList[1]
            chartData.riskage2 = riskList[2]
            chartData.riskage3 = riskList[3]
            chartData.riskage4 = riskList[4]
            chartData.riskage5 = riskList[5]
            chartData.riskage6 = riskList[6]
            chartData.riskage7 = riskList[7]
            chartData.riskage8 = riskList[8]
            chartData.riskage9 = riskList[9]
            chartData.riskage10 = riskList[10]
            chartData.riskage11 = riskList[11]
            chartData.riskage12 = riskList[12]
            chartData.riskage13 = riskList[13]
            chartData.riskage14 = riskList[14]
            chartData.riskage15 = riskList[15]
            chartData.risktarget = riskList[0]
            chartData.save()
        else:
            chartData = models.RwDataChart(id=rwassessment, riskage1=riskList[1], riskage2=riskList[2],
                                           riskage3=riskList[3],
                                           riskage4=riskList[4], riskage5=riskList[5], riskage6=riskList[6],
                                           riskage7=riskList[7],
                                           riskage8=riskList[8], riskage9=riskList[9], riskage10=riskList[10],
                                           riskage11=riskList[11],
                                           riskage12=riskList[12], riskage13=riskList[13], riskage14=riskList[14],
                                           riskage15=riskList[15], risktarget=riskList[0])
            chartData.save()
    except Exception as e:
        print("Exception at tank fast calculate")
        print(e)
        print('Error on line {}'.format(sys.exc_info()[-1].tb_lineno), type(e).__name__, e)

def ReCalculate(proposalID):
    try:
        rwAss = models.RwAssessment.objects.get(id=proposalID)
        component = models.ComponentMaster.objects.get(componentid=rwAss.componentid_id)
        if component.componenttypeid_id == 8 or component.componenttypeid_id == 12 or component.componenttypeid_id == 14 or component.componenttypeid_id == 15:
            isTank = 1
        else:
            isTank = 0
        if isTank:
            print("1")
            calculateTank(proposalID)
            caculateCorrisionRate(proposalID)
        else:
            calculateNormal(proposalID)
            caculateCorrisionRate(proposalID)
    except Exception as e:
        print("Exception at Fast Calculate General!")
        print(e)