import os,sys
from msilib.schema import Component

from django.core.wsgi import get_wsgi_application

os.environ['DJANGO_SETTINGS_MODULE'] = 'RbiCloud.settings'
application = get_wsgi_application()

from django.http import Http404,HttpResponse
from cloud import models
import datetime
import time
import json
import paho.mqtt.client as mqtt
from cloud.process.RBI import fastCalulate as ReCalculate
from django.shortcuts import render, redirect, render_to_response
from cloud.regularverification.interpolation import Newton

class REGULAR:
    # def __init__(self):
    #     self.componentID

    def regular_1(self):
        try:
            while 1:
                component = models.ComponentMaster.objects.all()
                for compo in component:
                    dateins = self.getDate(compo.componentid)
                    if(dateins!=0):
                        date = datetime.datetime.now()
                        timer = (date.year*365 + date.month*30 + date.day) - (dateins.year*365 + dateins.month*30 + dateins.day)
                        if(timer>7):
                            self.NowProposal(compo.componentid)
                            print("New ok")
                time.sleep(100)#86400
        except Exception as e:
            print("Error: unable to start thread")


    def getDate(self,ComponentID):
        try:
            insdate = models.RwAssessment.objects.filter(componentid_id=ComponentID)
            # for i in range(len(insdate)):
            print(insdate[len(insdate)-1].create)
            return insdate[len(insdate)-1].create
        except:
            return 0

    def NowProposal(self,componentID):
        try:
            print("tuan")
            print(componentID)
            THINGSBOARD_HOST = "demo.thingsboard.io"
            ACCESS_TOKEN = models.ZSensor.objects.filter(Componentid=componentID)[0].Token
            print(ACCESS_TOKEN)
            client = mqtt.Client()
            client.username_pw_set("xv3Cb1rLYSwqLq0qakUJ")
            client.connect(THINGSBOARD_HOST, 1883)
            client.on_connect = self.on_connect
            client.on_message = self.on_message
            client.loop_forever()
        except Exception as e:
            print("eror")
            print(e)
            data=[]
            self.saveData(data,componentID)
            # raise Http404

    def on_connect(self,client, userdata, rc, *extra_params):
        print("Connected with result code "+str(rc))
        sensor_data = {"id": 1, "device": "Device A2", "client": 1, "key": "attribute1"}
        client.publish('v1/devices/me/attributes/request/1', json.dumps(sensor_data))

    def on_message(self,client, userdata, msg):
        print(msg)
        print(msg.topic)
        print(msg.payload)
        payload = msg.payload.decode()
        print(payload)
        self.Checkdatathingsboard(payload=payload)
        client.disconnect()


    def Checkdatathingsboard(self,payload):
        try:
            data_sensor = json.loads(payload)
            data = data_sensor['client']
            print(data)
            self.saveData(data,data['componentid'])
        except Exception as e:
            print(e)
            print('connect data error')


    def saveData(self,data,ComponentID):
        try:
            AdminControlUpset = data["AdminControlUpset"]
        except:
            AdminControlUpset = False
        try:
            ContainsDeadlegs = data['ContainsDeadlegs']
        except:
            ContainsDeadlegs = False
        try:
            CylicOper = data['CylicOper']
        except:
            CylicOper = False
        try:
            Highly = data['Highly']
        except:
            Highly = False
        try:
            Downtime = data['Downtime']
        except:
            Downtime = False
        try:
            ExternalEnvironment = data['ExternalEnvironment']
        except:
            ExternalEnvironment = ""
        try:
            HeatTraced = data['HeatTraced']
        except:
            HeatTraced = False
        try:
            InterfaceSoilWater = data['InterfaceSoilWater']
        except:
            InterfaceSoilWater = False
        try:
            LOM = data['LOM']
        except:
            LOM = False
        try:
            MFTF = data['MFTF']
        except:
            MFTF = False
        try:
            minTemp = data['minTemp']
        except:
            obj = Newton(ComponentID,"minTemp")
            minTemp = obj.calculate()
        try:
            OnlineMonitoring = data['OnlineMonitoring']
        except:
            OnlineMonitoring = "Amine high velocity corrosion - Corrosion coupons"
        try:
            PresenceofSulphides = data['PresenceofSulphides']
        except:
            PresenceofSulphides = False
        try:
            PresenceofSulphidesShutdown = data['PresenceofSulphidesShutdown']
        except:
            PresenceofSulphidesShutdown = False
        try:
            PressurisationControlled = data['PressurisationControlled']
        except:
            PressurisationControlled = False
        try:
            PWHT = data['PWHT']
        except:
            PWHT = False
        try:
            SteamedOut = data['SteamedOut']
        except:
            SteamedOut = False
        try:
            ThermalHistory = data['ThermalHistory']
        except:
            ThermalHistory = "None"
        try:
            EquOper = data['EquOper']
        except:
            EquOper = False
        try:
            EquipmentVolumn = data['EquipmentVolumn']
        except Exception as e:
            obj = Newton(ComponentID, "EquipmentVolumn")
            EquipmentVolumn = obj.calculate()
        #component
        try:
            NorminalDiameter = data['NorminalDiameter']
        except:
            obj = Newton(ComponentID,"NorminalDiameter")
            NorminalDiameter = obj.calculate()
        print(NorminalDiameter)
        try:
            NorminalThickness = data['NorminalThickness']
        except:
            obj = Newton(ComponentID,"NorminalThickness")
            NorminalThickness = obj.calculate()

        ##
        try:
            CurrentThickness = data['CurrentThickness']
        except:
            obj=Newton(ComponentID,"CurrentThickness")
            CurrentThickness = obj.calculate()
        try:
            MinReqThickness = data['MinReqThickness']
        except:
            obj = Newton(ComponentID,"MinReqThickness")
            MinReqThickness= obj.calculate()
        try:
            CurrentCorrosionRate = data['CurrentCorrosionRate']
        except:
            obj = Newton(ComponentID,"CurrentCorrosionRate")
            CurrentCorrosionRate= obj.calculate()
        print("aa1.3")
        try:
            BranchDiameter = data['BranchDiameter']
        except:
            BranchDiameter= 'Any branch less than or equal to 2" Nominal OD'
        print(BranchDiameter)
        try:
            BranchJointType = data['BranchDiameter']
        except:
            BranchJointType= 'None'
        print("tt1.4")
        try:
            MaxBrinell = data['MaxBrinell']
        except:
            MaxBrinell= 'Below 200'
        try:
            DeltaFATT = data['DeltaFATT']
        except:
            obj = Newton(ComponentID,"DeltaFATT")
            DeltaFATT= obj.calculate()
        try:
            ChemicalInjection = data['ChemicalInjection']
        except:
            ChemicalInjection= False
        try:
            HFICI = data['HFICI']
        except:
            HFICI = False
        try:
            complex = data['complex']
        except:
            complex = "Above average"
        print("tt1.44")
        try:
            CorrectiveAction = data['CorrectiveAction']
        except:
            CorrectiveAction = "None"
        try:
            PresenceCracks = data['PresenceCracks']
        except:
            PresenceCracks = False
        try:
            CylicLoad = data['CylicLoad']
        except:
            CylicLoad = "None"
        try:
            DFDI = data['DFDI']
        except:
            DFDI = False
        print("tt.124")
        try:
            NumberPipeFittings = data['NumberPipeFittings']
        except:
            NumberPipeFittings = "More than 10"
        try:
            PipeCondition = data['PipeCondition']
        except:
            PipeCondition = "Broken gussets or gussets welded directly to pipe"
        try:
            PreviousFailures = data['PreviousFailures']
        except:
            PreviousFailures = "None"
        try:
            ShakingAmount = data['ShakingAmount']
        except:
            ShakingAmount = "Minor"
        try:
            VASD = data['VASD']
        except:
            VASD = False
        try:
            timeShakingPipe = data['timeShakingPipe']
        except:
            timeShakingPipe = "13 to 52 weeks"
        print("aa99")
        try:
            weldjointeff = data['weldjointeff']
        except:
            obj = Newton(ComponentID,"weldjointeff")
            weldjointeff= obj.calculate()
        print("mm1")
        try:
            allowablestresss = data['allowablestresss']
        except:
            obj = Newton(ComponentID,"allowablestresss")
            allowablestresss= obj.calculate()
        print("tt1,5")
        try:
            structuralthickness = data['structuralthickness']
        except:
            obj = Newton(ComponentID,"structuralthickness")
            structuralthickness= obj.calculate()
        try:
            compvolume = data['compvolume']
        except:
            obj = Newton(ComponentID,"compvolume")
            compvolume= obj.calculate()
        try:
            HthaDamage = data['HthaDamage']
        except:
            HthaDamage = False
        try:
            MinStructuralThickness = data['MinStructuralThickness']
        except:
            MinStructuralThickness = False
        try:
            Fabricatedsteel = data['Fabricatedsteel']
        except:
            Fabricatedsteel = False
        try:
            EquipmentSatisfied = data['EquipmentSatisfied']
        except:
            EquipmentSatisfied = False
        try:
            NominalOperating = data['NominalOperating']
        except:
            NominalOperating = False
        try:
            Cetgreaterorequal = data['Cetgreaterorequal']
        except:
            Cetgreaterorequal = False
        try:
            Cyclicservice = data['Cyclicservice']
        except:
            Cyclicservice = False
        try:
            equipmentCircuit = data['equipmentCircuit']
        except:
            equipmentCircuit = False
        try:
            confidencecr = data['confidencecr']
        except:
            confidencecr = "Low"

        ##
        try:
            AminSolution = data['AminSolution']
        except:
            AminSolution = "Diethanolamine DEA"
        try:
            AqueOp = data['AqueOp']
        except:
            AqueOp = False
        try:
            AqueShutdown = data['AqueShutdown']
        except:
            AqueShutdown = False
        try:
            ToxicConstituents = data['ToxicConstituents']
        except:
            ToxicConstituents = False
        try:
            EnvCaustic = data['EnvCaustic']
        except:
            EnvCaustic = False
        try:
            ChlorideIon = data['ChlorideIon']
        except:
            obj = Newton(ComponentID,"ChlorideIon")
            ChlorideIon = obj.calculate()
        try:
            CO3 = data['CO3']
        except:
            obj = Newton(ComponentID,"CO3")
            CO3 = obj.calculate()
        try:
            PresenceCyanides = data['PresenceCyanides']
        except:
            PresenceCyanides = False
        try:
            exposureAcid = data['exposureAcid']
        except:
            exposureAcid = False
        try:
            ExposedSulfur = data['ExposedSulfur']
        except:
            ExposedSulfur = False
        try:
            ExposureAmine = data['ExposureAmine']
        except:
            ExposureAmine = "High Rich Amine"
        try:
            EnvCH2S = data['EnvCH2S']
        except:
            EnvCH2S = False
        try:
            H2SInWater = data['H2SInWater']
        except:
            obj = Newton(ComponentID,"H2SInWater")
            H2SInWater = obj.calculate()
        try:
            hydrogen = data['hydrogen']
        except:
            hydrogen = False
        try:
            HydrogenFluoric = data['HydrogenFluoric']
        except:
            HydrogenFluoric = False
        try:
            materialExposedFluid = data['materialExposedFluid']
        except:
            materialExposedFluid = False
        try:
            maxOP = data['maxOP']
        except:
            obj = Newton(ComponentID,"maxOP")
            maxOP = obj.calculate()
        try:
            maxOT = data['maxOT']
        except:
            obj = Newton(ComponentID,"maxOT")
            maxOT = obj.calculate()
        try:
            minOP = data['minOP']
        except:
            obj = Newton(ComponentID,"minOP")
            minOP = obj.calculate()
        try:
            minOT = data['minOT']
        except:
            obj = Newton(ComponentID,"minOT")
            minOT = obj.calculate()
        try:
            CriticalTemp = data['CriticalTemp']
        except:
            obj = Newton(ComponentID,"CriticalTemp")
            CriticalTemp = obj.calculate()
        try:
            NaOHConcentration = data['NaOHConcentration']
        except:
            obj = Newton(ComponentID, "NaOHConcentration")
            NaOHConcentration = obj.calculate()
        try:
            ReleasePercentToxic = data['ReleasePercentToxic']
        except:
            obj = Newton(ComponentID, "ReleasePercentToxic")
            ReleasePercentToxic = obj.calculate()
        try:
            PHWater = data['PHWater']
        except:
            obj = Newton(ComponentID, "PHWater")
            PHWater = obj.calculate()
        try:
            PHWater = data['OpHydroPressure']
        except:
            obj = Newton(ComponentID, "OpHydroPressure")
            OpHydroPressure = obj.calculate()
        try:
            flowrate = data['flowrate']
        except:
            obj = Newton(ComponentID, "flowrate")
            flowrate = obj.calculate()

        ##
        try:
            OP1 = data['OP1']
        except:
            obj = Newton(ComponentID, "OP1")
            OP1 = obj.calculate()
        try:
            OP2 = data['OP2']
        except:
            obj = Newton(ComponentID, "OP2")
            OP2 = obj.calculate()
        try:
            OP3 = data['OP3']
        except:
            obj = Newton(ComponentID, "OP3")
            OP3 = obj.calculate()
        try:
            OP4 = data['OP4']
        except:
            obj = Newton(ComponentID, "OP4")
            OP4 = obj.calculate()
        try:
            OP5 = data['OP5']
        except:
            obj = Newton(ComponentID, "OP5")
            OP5 = obj.calculate()
        try:
            OP6 = data['OP6']
        except:
            obj = Newton(ComponentID, "OP6")
            OP6 = obj.calculate()
        try:
            OP7 = data['OP7']
        except:
            obj = Newton(ComponentID, "OP7")
            OP7 = obj.calculate()
        try:
            OP8 = data['OP8']
        except:
            obj = Newton(ComponentID, "OP8")
            OP8 = obj.calculate()
        try:
            OP9 = data['OP9']
        except:
            obj = Newton(ComponentID, "OP9")
            OP9 = obj.calculate()
        try:
            OP10 = data['OP10']
        except:
            obj = Newton(ComponentID, "OP10")
            OP10 = obj.calculate()

        ##
        try:
            ExternalCoating = data['ExternalCoating']
        except:
            ExternalCoating = False
        try:
            ExternalInsulation = data['ExternalInsulation']
        except:
            ExternalInsulation = False
        try:
            InternalCladding = data['InternalCladding']
        except:
            InternalCladding = False
        try:
            InternalCoating = data['InternalCoating']
        except:
            InternalCoating = False
        try:
            InternalLining = data['InternalLining']
        except:
            InternalLining = False
        try:
            ExternalCoatingDate = data['ExternalCoatingDate']
        except:
            ExternalCoatingDate = datetime.datetime.now()
        try:
            ExternalCoatingQuality = data['ExternalCoatingQuality']
        except:
            ExternalCoatingQuality = "High coating quality"
        try:
            ExternalInsulationType = data['ExternalInsulationType']
        except:
            ExternalInsulationType = ""
        try:
            InsulationCondition = data['InsulationCondition']
        except:
            InsulationCondition = ""
        try:
            InsulationCholride = data['InsulationCholride']
        except:
            InsulationCholride = False
        try:
            InternalLinerCondition = data['InternalLinerCondition']
        except:
            InternalLinerCondition = ""
        try:
            InternalLinerType = data['InternalLinerType']
        except:
            InternalLinerType = ""
        try:
            CladdingCorrosionRate = data['CladdingCorrosionRate']
        except:
            obj = Newton(ComponentID,"CladdingCorrosionRate")
            CladdingCorrosionRate = obj.calculate()
        try:
            supportMaterial = data['supportMaterial']
        except:
            supportMaterial = False
        try:
            claddingthickness = data['claddingthickness']
        except:
            obj = Newton(ComponentID,"claddingthickness")
            claddingthickness = obj.calculate()

        ## input stream
        try:
            CorrosionAllowance = data['CorrosionAllowance']
        except:
            CorrosionAllowance = False
        try:
            Material = data['Material']
        except:
            Material = ""
        try:
            DesignPressure = data['DesignPressure']
        except:
            obj = Newton(ComponentID,"DesignPressure")
            DesignPressure = obj.calculate()
        try:
            MaxDesignTemp = data['MaxDesignTemp']
        except:
            obj = Newton(ComponentID,"MaxDesignTemp")
            MaxDesignTemp = obj.calculate()
        try:
            MinDesignTemp = data['MinDesignTemp']
        except:
            obj = Newton(ComponentID,"MinDesignTemp")
            MinDesignTemp = obj.calculate()
        try:
            BrittleFacture = data['BrittleFacture']
        except:
            BrittleFacture = False
        try:
            SigmaPhase = data['SigmaPhase']
        except:
            obj = Newton(ComponentID,"SigmaPhase")
            SigmaPhase = obj.calculate()
        try:
            SulfurContent = data['SulfurContent']
        except:
            SulfurContent = ""
        try:
            heatTreatment = data['heatTreatment']
        except:
            heatTreatment = ""
        try:
            tempRef = data['tempRef']
        except:
            obj = Newton(ComponentID,"tempRef")
            tempRef = obj.calculate()
        try:
            PTAMaterialGrade = data['PTAMaterialGrade']
        except:
            PTAMaterialGrade = ""
        try:
            HTHAMaterialGrade = data['HTHAMaterialGrade']
        except:
            HTHAMaterialGrade = ""
        try:
            MaterialPTA = data['MaterialPTA']
        except:
            MaterialPTA = False
        try:
            MaterialHTHA = data['MaterialHTHA']
        except:
            MaterialHTHA = False
        try:
            AusteniticSteel = data['AusteniticSteel']
        except:
            AusteniticSteel = False
        try:
            SusceptibleTemper = data['SusceptibleTemper']
        except:
            SusceptibleTemper = False
        try:
            CarbonAlloySteel = data['CarbonAlloySteel']
        except:
            obj = Newton(ComponentID,"CarbonAlloySteel")
            CarbonAlloySteel = obj.calculate()
        try:
            NickelAlloy = data['NickelAlloy']
        except:
            NickelAlloy = False
        try:
            Chromium = data['Chromium']
        except:
            Chromium = False
        try:
            MaterialCostFactor = data['MaterialCostFactor']
        except:
            obj = Newton(ComponentID, "MaterialCostFactor")
            MaterialCostFactor = obj.calculate()
        try:
            yieldstrength = data['yieldstrength']
        except:
            obj = Newton(ComponentID,"yieldstrength")
            yieldstrength = obj.calculate()
        try:
            tensilestrength = data['tensilestrength']
        except:
            obj = Newton(ComponentID,"tensilestrength")
            tensilestrength = obj.calculate()

        ## input CA
        try:
            APIFluid = data['APIFluid']
        except:
            APIFluid = ""
        try:
            Systerm = data['Systerm']
        except:
            Systerm = ""
        try:
            ReleaseDuration = data['ReleaseDuration']
        except:
            ReleaseDuration = ""
        try:
            DetectionType = data['DetectionType']
        except:
            DetectionType = ""
        try:
            IsulationType = data['IsulationType']
        except:
            IsulationType = ""
        try:
            MittigationSysterm = data['MittigationSysterm']
        except:
            MittigationSysterm = ""
        try:
            EquipmentCost = data['EquipmentCost']
        except:
            EquipmentCost = 0
        try:
            InjureCost = data['InjureCost']
        except:
            InjureCost = 0
        try:
            EnvironmentCost = data['EnvironmentCost']
        except:
            EnvironmentCost = 0
        try:
            ToxicPercent = data['ToxicPercent']
        except:
            ToxicPercent = 0
        try:
            PersonDensity = data['PersonDensity']
        except:
            PersonDensity = 0
        try:
            ProductionCost = data['ProductionCost']
        except:
            ProductionCost = 0
        try:
            MassInventory = data['MassInventory']
        except:
            MassInventory = 0
        try:
            MassComponent = data['MassComponent']
        except:
            MassComponent = 0

        ### input tank CA
        try:
            fluidHeight = data['fluidHeight']
        except:
            fluidHeight = 0
        try:
            tankDiameter = data['tankDiameter']
        except:
            tankDiameter = 0
        try:
            preventBarrier = data['preventBarrier']
        except:
            preventBarrier = 0
        try:
            envsensitivity = data['envsensitivity']
        except:
            envsensitivity = "High"
        try:
            fluidLeaveDike = data['fluidLeaveDike']
        except:
            fluidLeaveDike = 0
        try:
            fluidOffsite = data['fluidOffsite']
        except:
            fluidOffsite = 0
        try:
            fluidOnsite = data['fluidOnsite']
        except:
            fluidOnsite = 0
        try:
            fluid = data['fluid']
        except:
            fluid = "Gasoline"

        ### input Equiment Tank
        try:
            componentWelded = data['componentWelded']
        except:
            componentWelded = False
        try:
            tankIsMaintain = data['tankIsMaintain']
        except:
            tankIsMaintain = False
        try:
            adjustSettlement = data['adjustSettlement']
        except:
            adjustSettlement = ""
        try:
            EnvSensitivity = data['EnvSensitivity']
        except:
            EnvSensitivity = ""
        try:
            distance = data['distance']
        except:
            obj = Newton(ComponentID, "distance")
            distance = obj.calculate()
        try:
            soiltype = data['soiltype']
        except:
            soiltype = ""

        ## input component Tank
        try:
            shellHieght = data['shellHieght']
        except:
            obj = Newton(ComponentID, "shellHieght")
            shellHieght = obj.calculate()
        try:
            concreteFoundation = data['concreteFoundation']
        except:
            concreteFoundation = False
        try:
            severityVibration = data['severityVibration']
        except:
            severityVibration = ""


        print("1m6")

        checktank = 0
        comp = models.ComponentMaster.objects.get(componentid=ComponentID)
        if comp.componenttypeid_id == 8 or comp.componenttypeid_id == 12 or comp.componenttypeid_id == 14 or comp.componenttypeid_id == 15:
            checktank = 1
        else:
            checktank = 0
        Proposalname = "proposal" + str(models.RwAssessment.objects.filter(componentid=comp.componentid).count())
        if(checktank==0):
            rwassessment = models.RwAssessment(equipmentid_id=comp.equipmentid_id,
                                               componentid_id=comp.componentid,
                                               assessmentdate=datetime.datetime.now(),
                                               riskanalysisperiod=36,
                                               isequipmentlinked=comp.isequipmentlinked,
                                               assessmentmethod="",
                                               proposalname=Proposalname)
            rwassessment.save()
            eq=models.EquipmentMaster.objects.get(equipmentid=comp.equipmentid_id)
            faci = models.Facility.objects.get(facilityid=models.EquipmentMaster.objects.get(equipmentid=comp.equipmentid_id).facilityid_id)
            rwequipment = models.RwEquipment(id=rwassessment, commissiondate=eq.commissiondate,
                                             adminupsetmanagement=AdminControlUpset,
                                             containsdeadlegs=ContainsDeadlegs,
                                             cyclicoperation=CylicOper,
                                             highlydeadleginsp=Highly,
                                             downtimeprotectionused=Downtime,
                                             externalenvironment=ExternalEnvironment,
                                             heattraced=HeatTraced,
                                             interfacesoilwater=InterfaceSoilWater,
                                             lineronlinemonitoring=LOM,
                                             materialexposedtoclext=MFTF,
                                             minreqtemperaturepressurisation=minTemp,
                                             onlinemonitoring=OnlineMonitoring,
                                             presencesulphideso2=PresenceofSulphides,
                                             presencesulphideso2shutdown=PresenceofSulphidesShutdown,
                                             pressurisationcontrolled=PressurisationControlled,
                                             pwht=PWHT,
                                             steamoutwaterflush=SteamedOut,
                                             managementfactor=faci.managementfactor,
                                             thermalhistory=ThermalHistory,
                                             yearlowestexptemp=EquOper,
                                             volume=EquipmentVolumn)
            rwequipment.save()

            rwcomponent = models.RwComponent(id=rwassessment,
                                             nominaldiameter=NorminalDiameter,
                                             nominalthickness=NorminalThickness,
                                             currentthickness=CurrentThickness,
                                             minreqthickness=MinReqThickness,
                                             currentcorrosionrate=CurrentCorrosionRate,
                                             branchdiameter=BranchDiameter,
                                             branchjointtype=BranchJointType,
                                             brinnelhardness=MaxBrinell,
                                             deltafatt=DeltaFATT,
                                             chemicalinjection=ChemicalInjection,
                                             highlyinjectioninsp=HFICI,
                                             complexityprotrusion=complex,
                                             correctiveaction=CorrectiveAction,
                                             crackspresent=PresenceCracks,
                                             cyclicloadingwitin15_25m=CylicLoad,
                                             damagefoundinspection=DFDI,
                                             numberpipefittings=NumberPipeFittings,
                                             pipecondition=PipeCondition,
                                             previousfailures=PreviousFailures,
                                             shakingamount=ShakingAmount,
                                             shakingdetected=VASD,
                                             shakingtime=timeShakingPipe,
                                             weldjointefficiency=weldjointeff,
                                             allowablestress=allowablestresss,
                                             structuralthickness=structuralthickness,
                                             componentvolume=compvolume,
                                             hthadamage=HthaDamage,
                                             minstructuralthickness=MinStructuralThickness,
                                             fabricatedsteel=Fabricatedsteel,
                                             equipmentsatisfied=EquipmentSatisfied,
                                             nominaloperatingconditions=NominalOperating,
                                             cetgreaterorequal=Cetgreaterorequal, cyclicservice=Cyclicservice,
                                             equipmentcircuitshock=equipmentCircuit,
                                             confidencecorrosionrate=confidencecr)
            rwcomponent.save()

            rwstream = models.RwStream(id=rwassessment, aminesolution=AminSolution,
                                       aqueousoperation=AqueOp,
                                       aqueousshutdown=AqueShutdown,
                                       toxicconstituent=ToxicConstituents,
                                       caustic=EnvCaustic,
                                       chloride=ChlorideIon,
                                       co3concentration=CO3,
                                       cyanide=PresenceCyanides,
                                       exposedtogasamine=exposureAcid,
                                       exposedtosulphur=ExposedSulfur,
                                       exposuretoamine=ExposureAmine,
                                       h2s=EnvCH2S,
                                       h2sinwater=H2SInWater,
                                       hydrogen=hydrogen,
                                       hydrofluoric=HydrogenFluoric,
                                       materialexposedtoclint=materialExposedFluid,
                                       maxoperatingpressure=maxOP,
                                       maxoperatingtemperature=float(maxOT),
                                       minoperatingpressure=float(minOP),
                                       minoperatingtemperature=minOT,
                                       criticalexposuretemperature=CriticalTemp,
                                       naohconcentration=NaOHConcentration,
                                       releasefluidpercenttoxic=float(ReleasePercentToxic),
                                       waterph=float(PHWater),
                                       h2spartialpressure=float(OpHydroPressure),
                                       flowrate=float(flowrate))
            rwstream.save()

            rwexcor = models.RwExtcorTemperature(id=rwassessment, minus12tominus8=OP1,
                                                 minus8toplus6=OP2,
                                                 plus6toplus32=OP3,
                                                 plus32toplus71=OP4,
                                                 plus71toplus107=OP5,
                                                 plus107toplus121=OP6,
                                                 plus121toplus135=OP7,
                                                 plus135toplus162=OP8,
                                                 plus162toplus176=OP9,
                                                 morethanplus176=OP10)
            rwexcor.save()

            rwcoat = models.RwCoating(id=rwassessment, externalcoating=ExternalCoating,
                                      externalinsulation=ExternalInsulation,
                                      internalcladding=InternalCladding,
                                      internalcoating=InternalCoating,
                                      internallining=InternalLining,
                                      externalcoatingdate=ExternalCoatingDate,
                                      externalcoatingquality=ExternalCoatingQuality,
                                      externalinsulationtype=ExternalInsulationType,
                                      insulationcondition=InsulationCondition,
                                      insulationcontainschloride=InsulationCholride,
                                      internallinercondition=InternalLinerCondition,
                                      internallinertype=InternalLinerType,
                                      claddingcorrosionrate=CladdingCorrosionRate,
                                      supportconfignotallowcoatingmaint=supportMaterial,
                                      claddingthickness=claddingthickness)
            rwcoat.save()

            rwmaterial = models.RwMaterial(id=rwassessment, corrosionallowance=CorrosionAllowance,
                                           materialname=Material,
                                           designpressure=DesignPressure,
                                           designtemperature=MaxDesignTemp,
                                           mindesigntemperature=MinDesignTemp,
                                           brittlefracturethickness=BrittleFacture, sigmaphase=SigmaPhase,
                                           sulfurcontent=SulfurContent, heattreatment=heatTreatment,
                                           referencetemperature=tempRef,
                                           ptamaterialcode=PTAMaterialGrade,
                                           hthamaterialcode=HTHAMaterialGrade, ispta=MaterialPTA,
                                           ishtha=MaterialHTHA,
                                           austenitic=AusteniticSteel, temper=SusceptibleTemper, carbonlowalloy=CarbonAlloySteel,
                                           nickelbased=NickelAlloy, chromemoreequal12=Chromium,
                                           costfactor=MaterialCostFactor,
                                           yieldstrength=yieldstrength, tensilestrength=tensilestrength)
            rwmaterial.save()

            rwinputca = models.RwInputCaLevel1(id=rwassessment, api_fluid=APIFluid, system=Systerm,
                                               release_duration=ReleaseDuration,
                                               detection_type=DetectionType,
                                               isulation_type=IsulationType,
                                               mitigation_system=MittigationSysterm,
                                               equipment_cost=EquipmentCost, injure_cost=InjureCost,
                                               evironment_cost=EnvironmentCost, toxic_percent=ToxicPercent,
                                               personal_density=PersonDensity,
                                               material_cost=MaterialCostFactor,
                                               production_cost=ProductionCost, mass_inventory=MassInventory,
                                               mass_component=MassComponent,
                                               stored_pressure=float(minOP) * 6.895, stored_temp=minOT)
            rwinputca.save()
            ReCalculate.ReCalculate(rwassessment.id)
        else:
            rwassessment = models.RwAssessment(equipmentid_id=comp.equipmentid_id, componentid_id=comp.componentid,
                                               assessmentdate=datetime.datetime.now(),
                                               riskanalysisperiod=36,
                                               isequipmentlinked=comp.isequipmentlinked,
                                               assessmentmethod="",
                                               proposalname=Proposalname)
            rwassessment.save()
            eq = models.EquipmentMaster.objects.get(equipmentid=comp.equipmentid_id)
            faci = models.Facility.objects.get(
            facilityid=models.EquipmentMaster.objects.get(equipmentid=comp.equipmentid_id).facilityid_id)

            rwequipment = models.RwEquipment(id=rwassessment, commissiondate=eq.commissiondate,
                                             adminupsetmanagement=AdminControlUpset,
                                             cyclicoperation=CylicOper, highlydeadleginsp=Highly,
                                             downtimeprotectionused=Downtime, steamoutwaterflush=SteamedOut,
                                             pwht=PWHT, heattraced=HeatTraced, distancetogroundwater=distance,
                                             interfacesoilwater=InterfaceSoilWater, typeofsoil=soiltype,
                                             pressurisationcontrolled=PressurisationControlled,
                                             minreqtemperaturepressurisation=minTemp,
                                             yearlowestexptemp=EquOper,
                                             materialexposedtoclext=MFTF,
                                             lineronlinemonitoring=LOM,
                                             presencesulphideso2=PresenceofSulphides,
                                             presencesulphideso2shutdown=PresenceofSulphidesShutdown,
                                             componentiswelded=componentWelded, tankismaintained=tankIsMaintain,
                                             adjustmentsettle=adjustSettlement,
                                             externalenvironment=ExternalEnvironment,
                                             environmentsensitivity=EnvSensitivity,
                                             onlinemonitoring=OnlineMonitoring, thermalhistory=ThermalHistory,
                                             managementfactor=faci.managementfactor,
                                             volume=EquipmentVolumn)
            rwequipment.save()

            rwcomponent = models.RwComponent(id=rwassessment, nominaldiameter=NorminalDiameter,
                                             allowablestress=allowablestresss,
                                             nominalthickness=NorminalThickness, currentthickness=CurrentThickness,
                                             minreqthickness=MinReqThickness,
                                             currentcorrosionrate=CurrentCorrosionRate,
                                             shellheight=shellHieght, damagefoundinspection=DFDI,
                                             crackspresent=PresenceCracks,
                                             # trampelements=trampElements,
                                             releasepreventionbarrier=preventBarrier, concretefoundation=concreteFoundation,
                                             brinnelhardness=MaxBrinell,
                                             structuralthickness=structuralthickness,
                                             complexityprotrusion=complex, minstructuralthickness=MinStructuralThickness,
                                             severityofvibration=severityVibration,
                                             confidencecorrosionrate=confidencecr)
            rwcomponent.save()
            rwstream = models.RwStream(id=rwassessment, maxoperatingtemperature=maxOT,
                                       maxoperatingpressure=maxOP,
                                       minoperatingtemperature=minOT, minoperatingpressure=minOP,
                                       h2spartialpressure=float(OpHydroPressure), criticalexposuretemperature=CriticalTemp,
                                       tankfluidname=fluid, fluidheight=fluidHeight,
                                       fluidleavedikepercent=fluidLeaveDike,
                                       fluidleavedikeremainonsitepercent=fluidOnsite,
                                       fluidgooffsitepercent=fluidOffsite,
                                       naohconcentration=NaOHConcentration,
                                       releasefluidpercenttoxic=float(ReleasePercentToxic),
                                       chloride=ChlorideIon, co3concentration=CO3,
                                       h2sinwater=H2SInWater,
                                       waterph=float(PHWater), exposedtogasamine=exposureAcid,
                                       aminesolution=AminSolution,
                                       exposuretoamine=ExposureAmine, aqueousoperation=AqueOp, h2s=EnvCH2S,
                                       aqueousshutdown=AqueShutdown, cyanide=PresenceCyanides, hydrofluoric=HydrogenFluoric,
                                       caustic=EnvCaustic, hydrogen=hydrogen,
                                       materialexposedtoclint=materialExposedFluid,
                                       exposedtosulphur=ExposedSulfur)
            rwstream.save()
            rwexcor = models.RwExtcorTemperature(id=rwassessment, minus12tominus8=OP1, minus8toplus6=OP2,
                                                 plus6toplus32=OP3, plus32toplus71=OP4,
                                                 plus71toplus107=OP5,
                                                 plus107toplus121=OP6, plus121toplus135=OP7,
                                                 plus135toplus162=OP8, plus162toplus176=OP9,
                                                 morethanplus176=OP10)
            rwexcor.save()
            rwcoat = models.RwCoating(id=rwassessment, internalcoating=InternalCoating, externalcoating=ExternalCoating,
                                      externalcoatingdate=ExternalCoatingDate,
                                      externalcoatingquality=ExternalCoatingQuality,
                                      supportconfignotallowcoatingmaint=supportMaterial,
                                      internalcladding=InternalCladding,
                                      claddingcorrosionrate=CladdingCorrosionRate, internallining=InternalLining,
                                      internallinertype=InternalLinerType,
                                      internallinercondition=InternalLinerCondition, externalinsulation=ExternalInsulation,
                                      insulationcontainschloride=InsulationCholride,
                                      externalinsulationtype=ExternalInsulationType,
                                      insulationcondition=InsulationCondition,
                                      claddingthickness=claddingthickness
                                      )
            rwcoat.save()
            rwmaterial = models.RwMaterial(id=rwassessment, materialname=Material,
                                           designtemperature=MaxDesignTemp,
                                           mindesigntemperature=MinDesignTemp, designpressure=DesignPressure,
                                           referencetemperature=tempRef,
                                           # allowablestress=data['allowStress'],
                                           brittlefracturethickness=BrittleFacture,
                                           corrosionallowance=CorrosionAllowance,
                                           carbonlowalloy=CarbonAlloySteel, austenitic=AusteniticSteel,
                                           nickelbased=NickelAlloy,
                                           chromemoreequal12=Chromium,
                                           sulfurcontent=SulfurContent, heattreatment=heatTreatment,
                                           ispta=MaterialPTA, ptamaterialcode=PTAMaterialGrade,
                                           costfactor=MaterialCostFactor)
            rwmaterial.save()

            rwinputca = models.RwInputCaTank(id=rwassessment, fluid_height=fluidHeight,
                                             shell_course_height=shellHieght,
                                             tank_diametter=tankDiameter, prevention_barrier=preventBarrier,
                                             environ_sensitivity=envsensitivity,
                                             p_lvdike=fluidLeaveDike, p_offsite=fluidOffsite,
                                             p_onsite=fluidOnsite, soil_type=soiltype,
                                             tank_fluid=fluid, api_fluid=APIFluid, sw=distance,
                                             productioncost=ProductionCost)
            rwinputca.save()
            # Customize Caculate Here
            ReCalculate.ReCalculate(rwassessment.id)
        # return redirect('damgeFactor', proposalID=rwassessment.id)
        print("okok")
if __name__=="__main__":
    obj = REGULAR()
    data=[]
    # obj.getDate(27)
    # obj.regular_1()
    # obj.NowProposal(27)
    # obj.NowProposal(28)
    obj.saveData(data,28)