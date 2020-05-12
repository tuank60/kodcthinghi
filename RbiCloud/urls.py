"""RbiCloud URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from cloud import views
from django.conf.urls import handler404
from django.conf.urls import handler500
import django.views.static
from RbiCloud import settings

urlpatterns = [
    # path('static/(?P<path>.*)$', django.views.static.serve, {'document_root': settings.STATIC_ROOT, 'show_indexes': settings.DEBUG}),
    ########################## Base ################################
    path('admin/', admin.site.urls),
    path('', views.signin, name='home'),
    path('basecitizen/',views.Base_citizen,name='basecitizen'),
    path('basemanagement/', views.base_manager, name= 'basemanager'),
    path('basebusiness/',views.base_business,name='basebusiness'),
    path('business/', views.business_home, name='business'),
    path('equipment/', views.base_equipment, name='equipment'),
    path('component/', views.base_component, name='component'),
    path('proposal/', views.base_proposal, name='prosal'),
    path('risksummary/', views.base_risksummary, name='risk'),
    path('designcode/', views.base_designcode, name='designcode'),
    path('manufacture/', views.base_manufacture, name= 'manufacture'),
    ########################## Facility UI################################
    path('inspection/plan/<int:siteID>/', views.InpsectionPlan, name='inspectionPlan'),
    path('inspection/plan/<int:siteID>/InpsectionPlan<str:name>/InpsectionPlan<str:date>/', views.InpsectionPlan,name='inspectionPlan'),
    path('add/<int:siteID>/<int:facilityID>/<int:equipID>/<str:name>/<str:date>/plan/', views.AdddInssepctionPlan,name='addInspectionPlan'),
    path('create/<int:siteID>/plan/', views.CreateInspectionPlan, name='createInspectionPlan'),
    path('facilities/display/<int:siteID>/', views.ListFacilities, name='facilitiesDisplay'),
    path('facilities/<int:siteID>/new/', views.NewFacilities, name='facilitiesNew'),
    path('facilities/<int:facilityID>/edit/', views.EditFacilities, name= 'facilitiesEdit'),
    path('designcode/display/<int:siteID>/', views.ListDesignCode, name='designcodeDisplay'),
    path('designcode/<int:siteID>/new/', views.NewDesignCode, name='designcodeNew'),
    path('designcode/<int:designcodeID>/edit/', views.EditDesignCode, name='designcodeEdit'),
    path('manufacture/display/<int:siteID>/', views.ListManufacture, name='manufactureDisplay'),
    path('manufacture/<int:siteID>/new/', views.NewManufacture , name='manufactureNew'),
    path('manufacture/<int:manufactureID>/edit/', views.EditManufacture, name='manufactureEdit'),
    path('equipment/display/<int:facilityID>/', views.ListEquipment, name='equipmentDisplay'),
    path('equipment/<int:facilityID>/new/', views.NewEquipment, name='equipmentNew'),
    path('equipment/<int:equipmentID>/edit/', views.EditEquipment, name='equipmentEdit'),
    path('component/display/<int:equipmentID>/', views.ListComponent, name='componentDisplay'),
    path('component/<int:equipmentID>/new/', views.NewComponent , name='componentNew'),
    path('component/<int:componentID>/edit/', views.EditComponent, name='componentEdit'),
    path('proposal/display/<int:componentID>/', views.ListProposal, name='proposalDisplay'),
    path('proposal/<int:componentID>/new/', views.NewProposal, name='proposalNew'),
    path('tank/<int:componentID>/new/', views.NewTank , name='tankNew'),
    path('proposal/<int:proposalID>/edit/', views.EditProposal, name='prosalEdit'),
    path('tank/<int:proposalID>/edit/', views.EditTank, name='tankEdit'),
    path('proposal/<int:proposalID>/risk-matrix/', views.RiskMatrix, name='riskMatrix'),
    path('proposal/<int:proposalID>/damage-factor/', views.FullyDamageFactor, name='damgeFactor'),
    path('proposal/<int:proposalID>/chart/', views.RiskChart, name='riskChart'),
    path('proposal/<int:proposalID>/fully-consequence/',views.FullyConsequence, name='fullyConsequence'),
    path('export/<int:index>/<str:type>/', views.ExportExcel, name='exportData'),
    path('site/<int:siteID>/upload/InspectionHistory/', views.uploadInspPlan, name='upload'),
    path('site/<int:siteID>/upload/Plan/', views.upload, name='uploadPlan'),
    ########################## forum ################################
    path('forum/',views.base_forum,name='forum'),
    path('forum/post/<int:postID>',views.posts_forum,name='posts'),
    path('logout',views.logout,name='logout'),
    ########################## Messages ################################
    path('messagesinbox/',views.MessagesInbox,name='messagesInbox'),
    path('messagessent/',views.Email_Message_sent,name='messagesSent'),
    ########################## Help ################################
    path('help/',views.Help, name='help'),
    path('help/UserManual/Citizen',views.Help_Usermanual_Citizen,name='helpUserManualCtizen'),
    path('help/UserManual/Business',views.Help_Usermanual_Business,name='helpUserManualBusiness'),
    path('help/UserManual/Manager',views.Help_Usermanual_Manager,name='helpUserManualManager'),
    path('help/AccountManagement/LoginPasswork',views.Help_AccountManagement_LoginPass,name='LoginPasswork'),
    path('help/AccountManagement/PersonalInfor',views.Help_AccountManagement_PerInfo,name='perinfor'),
    path('help/AccountManagement/AccessDownload',views.Help_AccountManagement_AccessDownload,name='accdownload'),
    path('help/AccountManagement/notification',views.Help_AccountManagement_Notification,name='notification'),
    path('help/PrivateSafe/',views.Private_Safe,name='PrivateSafe'),
    path('help/PoliciesReports/',views.Policies_Reports,name='PoliciesReports'),
    ########################## Dang ki tai khoan ################################
    path('AccountCitizen/', views.AccountCitizen, name='accountcitizen'),
    path('AccountBusiness/',views.AccountBusiness, name='accountbusiness'),
    path('AccountManagement',views.AccountManagement,name='accountmanagement'),
    path('activate/<slug:uidb64>/<slug:token>/', views.activate, name='activate'),
    ########################## Manager UI################################
    path('management/<int:siteID>/', views.ManagerHome, name= 'manager'),
    path('manufactureMana/display/<int:siteID>/', views.ListManufactureMana, name='manufactureDisplayMana'),
    path('designcodeMana/display/<int:siteID>/', views.ListDesignCodeMana, name='designcodeDisplayMana'),
    path('facilitiesMana/display/<int:siteID>/', views.ListFacilitiesMana, name='facilitiesDisplayMana'),
    path('equipmentMana/display/<int:facilityID>/', views.ListEquipmentMana, name='equipmentDisplayMana'),
    path('componentMana/display/<int:equipmentID>/', views.ListComponentMana, name='componentDisplayMana'),
    path('proposalMana/display/<int:componentID>/', views.ListProposalMana, name='proposalDisplayMana'),
    path('proposalMana/<int:proposalID>/data/', views.Inputdata, name='inputdata'),
    path('proposalMana/<int:proposalID>/damage-factor/', views.FullyDamageFactorMana, name='damgeFactorMana'),
    path('proposalMana/<int:proposalID>/chart/', views.RiskChartMana, name='riskChartMana'),
    path('proposalMana/<int:proposalID>/risk-matrix/', views.RiskMatrixMana, name='riskMatrixMana'),
    path('proposalMana/<int:proposalID>/fully-consequence/',views.FullyConsequenceMana, name='fullyConsequenceMana'),
#testCuong
    path('proposal/<int:proposalID>/corrisionRate/', views.CorrisionRate, name='corrision'),
    path('proposal/<int:proposalID>/caculated/', views.CaculateCorrision, name='Caculate'),
    ############# Verification #############
    path('proposalManaVeri/<int:proposalID>/damage-factor/', views.VeriFullyDamageFactorMana, name='veridamgeFactorMana'),
    path('proposalManaVeri/<int:proposalID>/fully-consequence/',views.VeriFullyConsequenceMana, name='verifullyConsequenceMana'),
    path('verification/<int:faciid>',views.VerificationHome,name='VerificationHome'),
    path('verification/<int:verifiID>/Check',views.VerificationCheck,name='VerificationCheck'),
    path('verificationFaci',views.VerificationNumberFacilities,name='VerificationFaci'),
    ######################### Citizen UI ##############################
    path('citizen/', views.citizen_home, name= 'citizenHome'),
    path('facilityCitizen/display/<int:siteID>/',views.ListfacilityCitizen, name='facilityCitizen'),
    path('ListProposalCitizen/display/<int:facilityID>/<int:siteID>/',views.ListProposalCitizen, name='ListProposalCitizen'),
    path('proposalCitizen/<int:proposalID>/risk-matrix/', views.RiskMatrixCitizen, name='riskMatrixCitizen'),
    path('proposalCitizen/<int:proposalID>/damage-factor/', views.FullyDamageFactorCitizen, name='damgeFactorCitizen'),
    path('proposalCitizen/<int:proposalID>/chart/', views.RiskChartCitizen, name='riskChartCitizen'),
    path('proposalCitizen/<int:proposalID>/fully-consequence/',views.FullyConsequenceCitizen, name='fullyConsequenceCitizen'),
    #############connect thingsboard _____ sensor, gateway #############
    path('newsensor/<int:componentID>/', views.NewSensor, name='newsensor')
]
'''
Dkm cuong luong
'''
handler500 = 'cloud.views.handler404'
handler404 = 'cloud.views.handler404'
