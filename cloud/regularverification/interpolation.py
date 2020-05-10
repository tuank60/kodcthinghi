import os,sys
from django.core.wsgi import get_wsgi_application

os.environ['DJANGO_SETTINGS_MODULE'] = 'RbiCloud.settings'
application = get_wsgi_application()

import traceback
import sys
import datetime
from mpmath.calculus.optimization import Newton
from cloud import models

class Newton:
    X = []
    Y = []


    def __init__(self,ConponentID,value=""):
        self.n=len(self.X)
        self.componontID=ConponentID
        self.value=value
        self.n = len(self.X)
    def calculate(self):
        try:
            Thresholdmax = 0
            Thresholdmin = 0
            output = 0
            if self.value=="minTemp":
                Thresholdmax = 10000
                Thresholdmin = -100
                output= self.AddListInter("minTemp")
            elif self.value=="EquipmentVolumn":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("EquipmentVolumn")
            elif self.value == "NorminalDiameter":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("NorminalDiameter")
            elif self.value == "NorminalThickness":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("NorminalThickness")
            elif self.value == "CurrentThickness":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("CurrentThickness")
            elif self.value == "MinReqThickness":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("MinReqThickness")
            elif self.value == "CurrentCorrosionRate":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("CurrentCorrosionRate")
            elif self.value == "DeltaFATT":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("DeltaFATT")
            elif self.value == "weldjointeff":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("weldjointeff")
            elif self.value == "allowablestresss":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("allowablestresss")
            elif self.value == "structuralthickness":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("structuralthickness")
            elif self.value == "compvolume":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("compvolume")
            elif self.value == "ChlorideIon":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("ChlorideIon")
            elif self.value == "CO3":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("CO3")
            elif self.value == "H2SInWater":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("H2SInWater")
            elif self.value == "maxOP":
                Thresholdmax = 1000
                Thresholdmin = -100
                output = self.AddListInter("maxOP")
            elif self.value == "maxOT":
                Thresholdmax = 1000
                Thresholdmin = -100
                output = self.AddListInter("maxOT")
            elif self.value == "minOP":
                Thresholdmax = 1000
                Thresholdmin = -100
                output = self.AddListInter("minOP")
            elif self.value == "minOT":
                Thresholdmax = 1000
                Thresholdmin = -100
                output = self.AddListInter("minOT")
            elif self.value == "CriticalTemp":
                Thresholdmax = 1000
                Thresholdmin = -100
                output = self.AddListInter("CriticalTemp")
            elif self.value == "NaOHConcentration":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("NaOHConcentration")
            elif self.value == "ReleasePercentToxic":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("ReleasePercentToxic")
            elif self.value == "PHWater":
                Thresholdmax = 15
                Thresholdmin = 0
                output = self.AddListInter("PHWater")
            elif self.value == "OpHydroPressure":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("OpHydroPressure")
            elif self.value == "flowrate":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("flowrate")
            elif self.value == "OP1":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP1")
            elif self.value == "OP2":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP2")
            elif self.value == "OP3":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP3")
            elif self.value == "OP4":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP4")
            elif self.value == "OP5":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP5")
            elif self.value == "OP6":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP6")
            elif self.value == "OP7":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP7")
            elif self.value == "OP8":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP8")
            elif self.value == "OP9":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP9")
            elif self.value == "OP10":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("OP10")
            elif self.value == "CladdingCorrosionRate":
                Thresholdmax = 1000
                Thresholdmin = 0
                output = self.AddListInter("CladdingCorrosionRate")
            elif self.value == "claddingthickness":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("claddingthickness")
            elif self.value == "DesignPressure":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("DesignPressure")
            elif self.value == "MaxDesignTemp":
                Thresholdmax = 1000
                Thresholdmin = -100
                output = self.AddListInter("MaxDesignTemp")
            elif self.value == "MinDesignTemp":
                Thresholdmax = 1000
                Thresholdmin = -100
                output = self.AddListInter("MinDesignTemp")
            elif self.value == "SigmaPhase":
                Thresholdmax = 100
                Thresholdmin = 0
                output = self.AddListInter("SigmaPhase")
            elif self.value == "tempRef":
                Thresholdmax = 1000
                Thresholdmin = -10
                output = self.AddListInter("tempRef")
            elif self.value == "CarbonAlloySteel":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("CarbonAlloySteel")
            elif self.value == "MaterialCostFactor":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("MaterialCostFactor")
            elif self.value == "yieldstrength":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("yieldstrength")
            elif self.value == "tensilestrength":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("tensilestrength")
            elif self.value == "shellHieght":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("shellHieght")
            elif self.value == "distance":
                Thresholdmax = 100000
                Thresholdmin = 0
                output = self.AddListInter("distance")
            else:
                print("a")
            # print(output)
            # print(self.X)
            # print(self.Y)
            if (output>Thresholdmax or output<Thresholdmin):
                output = (max(self.Y)+min(self.Y))/2
            self.X.clear()
            self.Y.clear()
            # print(self.X)
            # print(self.Y)
            # print("1")
            return output
        except Exception as e:
            print(e)
            raise

    def AddListInter(self,value1):
        assm = models.RwAssessment.objects.filter(componentid=self.componontID)
        tmin = assm[0].create
        datatmin = tmin.year * 365 + tmin.month * 30 + tmin.day
        checkdate = -1
        for ass in assm:
            date = ass.create
            if ((date.year * 365 + date.month * 30 + date.day) - datatmin != checkdate):
                self.X.append((date.year * 365 + date.month * 30 + date.day) - datatmin)
                if(value1== "minTemp"):
                    Equiment = models.RwEquipment.objects.get(id=ass.id)
                    self.Y.append(Equiment.minreqtemperaturepressurisation)
                elif (value1 == "EquipmentVolumn"):
                    Equiment = models.RwEquipment.objects.get(id=ass.id)
                    self.Y.append(Equiment.volume)
                elif (value1 == "distance"):
                    Equiment = models.RwEquipment.objects.get(id=ass.id)
                    self.Y.append(Equiment.distancetogroundwater)
                elif value1 == "NorminalDiameter":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.nominaldiameter)
                elif value1== "NorminalThickness":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.nominalthickness)
                elif value1 == "CurrentThickness":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.currentthickness)
                elif value1 == "MinReqThickness":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.minreqthickness)
                elif value1 == "CurrentCorrosionRate":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.currentcorrosionrate)
                elif value1 == "DeltaFATT":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.deltafatt)
                elif value1 == "weldjointeff":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.weldjointefficiency)
                elif value1 == "allowablestresss":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.allowablestress)
                elif value1 == "structuralthickness":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.structuralthickness)
                elif value1 == "compvolume":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.componentvolume)
                elif value1 == "shellHieght":
                    Component = models.RwComponent.objects.get(id=ass.id)
                    self.Y.append(Component.shellheight)
                elif value1 == "ChlorideIon":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.chloride)
                elif value1 == "CO3":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.co3concentration)
                elif value1 == "H2SInWater":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.h2sinwater)
                elif value1 == "maxOP":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.maxoperatingpressure)
                elif value1 == "maxOT":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.maxoperatingtemperature)
                elif value1 == "minOP":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.minoperatingpressure)
                elif value1 == "minOT":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.minoperatingtemperature)
                elif value1 == "CriticalTemp":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.criticalexposuretemperature)
                elif value1 == "NaOHConcentration":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.naohconcentration)
                elif value1 == "ReleasePercentToxic":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.releasefluidpercenttoxic)
                elif value1 == "PHWater":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.waterph)
                elif value1 == "OpHydroPressure":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.h2spartialpressure)
                elif value1 == "flowrate":
                    stream = models.RwStream.objects.get(id=ass.id)
                    self.Y.append(stream.flowrate)
                elif value1 == "OP1":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.minus12tominus8)
                elif value1 == "OP2":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.minus8toplus6)
                elif value1 == "OP3":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.plus6toplus32)
                elif value1 == "OP4":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.plus32toplus71)
                elif value1 == "OP5":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.plus71toplus107)
                elif value1 == "OP6":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.plus107toplus121)
                elif value1 == "OP7":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.plus121toplus135)
                elif value1 == "OP8":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.plus135toplus162)
                elif value1 == "OP9":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.plus162toplus176)
                elif value1 == "OP10":
                    excor = models.RwExtcorTemperature.objects.get(id=ass.id)
                    self.Y.append(excor.morethanplus176)
                elif value1 == "CladdingCorrosionRate":
                    coating = models.RwCoating.objects.get(id=ass.id)
                    self.Y.append(coating.claddingcorrosionrate)
                elif value1 == "claddingthickness":
                    coating = models.RwCoating.objects.get(id=ass.id)
                    self.Y.append(coating.claddingthickness)
                elif value1 == "DesignPressure":
                    meterial = models.RwMaterial.objects.get(id=ass.id)
                    self.Y.append(meterial.designpressure)
                elif value1 == "MaxDesignTemp":
                    meterial = models.RwMaterial.objects.get(id=ass.id)
                    self.Y.append(meterial.designtemperature)
                elif value1 == "MinDesignTemp":
                    meterial = models.RwMaterial.objects.get(id=ass.id)
                    self.Y.append(meterial.mindesigntemperature)
                elif value1 == "SigmaPhase":
                    meterial = models.RwMaterial.objects.get(id=ass.id)
                    self.Y.append(meterial.sigmaphase)
                elif value1 == "tempRef":
                    meterial = models.RwMaterial.objects.get(id=ass.id)
                    self.Y.append(meterial.referencetemperature)
                elif value1 == "CarbonAlloySteel":
                    meterial = models.RwMaterial.objects.get(id=ass.id)
                    self.Y.append(meterial.carbonlowalloy)
                elif value1 == "MaterialCostFactor":
                    meterial = models.RwMaterial.objects.get(id=ass.id)
                    self.Y.append(meterial.costfactor)
                elif value1 == "yieldstrength":
                    meterial = models.RwMaterial.objects.get(id=ass.id)
                    self.Y.append(meterial.yieldstrength)
                elif value1 == "tensilestrength":
                    meterial = models.RwMaterial.objects.get(id=ass.id)
                    self.Y.append(meterial.tensilestrength)
                else:
                    print("a")
                checkdate = (date.year * 365 + date.month * 30 + date.day) - datatmin
        self.n = len(self.X)
        datenow = datetime.datetime.now()
        return self.__interpolation((datenow.year * 365 + datenow.month * 30 + datenow.day) - datatmin)

    def __interpolation(self, t):
        try:
            c = [0 for _ in range(self.n)]
            w = [0 for _ in range(self.n)]
            for i in range (0, self.n):
                w[i]=self.Y[i]
                for j in reversed(range(i)):
                    #print(j)
                    w[j] = (w[j + 1] - w[j]) / (self.X[i] - self.X[j])
                c[i]=w[0]
            s = c[self.n-1]
            for i in reversed(range(self.n-1)):
                s = s * (t -self.X[i])+c[i]
            return s
        except Exception as e:
            raise
import math
if __name__=="__main__":
        try:
            # obj = Newton(27, "DeltaFATT")
            # obj.calculate()
            # print(obj.calculate())
            # obj = Newton(27,"SigmaPhase")
            # # obj.calculate()
            # print(obj.calculate())
            # print(math.log10(65))
            print(1/0.74)
        except Exception as e:
            traceback.print_exc()
            sys.exit(1)

# from django.core.mail import EmailMessage
# Email = EmailMessage("aa", "aa", to=["doanhtuan14111997@gmail.com"])
# Email.send()

# DFm =models.DMItems.objects.get(dmitemid=1)
# print(DFm.dmdescription)




