Function Kick_CM2007RequestMachinePolicy { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000021}’)
}

Function Kick_CM2007EvaluateMachinePolicy { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000022}’)
}

Function Kick_CM2007RequestMachinePolicyAssignments { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000022}’)
}

Function Kick_CM2007SoftwareUpdatesScanCycle { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000021}’)
}

Function Kick_CM2007MachineSoftwareUpdatesDeploymentCycle { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000021}’)
}

Function Kick_CM2007MachinePolicyRefresh { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000021}’)
}

Function Kick_CM2007DiscoveryDataCollectionCycle { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000003}’)
}

Function Kick_CM2007HardwareInventory { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000001}’)
}

Function Kick_CM2007SoftwareInventory { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000002}’)
}


Function Kick_CM2007ForceUpdateScan { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000113}’)
}


Function Kick_CM2007UpdateAssignmentEvaluation { 
param($computer)     

    $Scope = new-object system.management.managementscope    
    $Scope.path = “\\$computer\root\CCM”    
    $mc = New-Object System.Management.ManagementClass($Scope , ‘sms_client’,$null)    
    $mc.invokeMethod(‘TriggerSchedule’,'{00000000-0000-0000-0000-000000000108}’)
}

Function Install-CM2007Client { 
param($computer, $SiteCode, $Cm2007ClientSource)     

 
}

Function Install-CM2012Client { 
param($computer, $SiteCode, $Cm2012ClientSource)     

 
}


Function UNInstall-CM2007Client { 
param($computer, $Cm2007ClientSource )     

 
}

Function UNInstall-CM2012Client { 
param($computer, $Cm2012ClientSource)     

 
}


Function Get-TestClient { 
param($computer)     

 
}


Function Get-CurrentSite {
param($computer)

$CurrentSite
$CM2007_Dev_HeartBeat
$CM2007_PreProd_HeartBeat
$CM2007_Prod_HeartBeat
$CM2007_Dev_HeartBeat
$CM2007_Pre2Prod_HeartBeat
$CM2007_Prod_HeartBeat

   $CM2007_DEV_SiteServer = "PTSSCMDEVPRI01"
   $CM2007_DEV_Siteode = "DV3"

   $CM2007_PREPROD_SiteServer = "RESSWCMSPRIT01"
   $CM2007_PREPROD_SiteCode = "PT2"

   $CM2007_PROD_SiteServer = "RESSWCMSPRIP01"
   $CM2007_PROD_SiteCode = "EC2"

$Result = Get-WMIObject -ComputerName $CM2007_DEV_SiteServer -Namepace "Root\SMS\Site_$SiteCode" -Query "SELECT * FROM SMS_R_SYSTEM WHERE Name = '$Computer'"
$Result.




}


#############################################
##              MAIN SCRIPT                ##
#############################################

$CM2007ClientSource = "\\RESSWCMSPRIP02\SMS_EC2\Client"
$CM2012ClientSource = ""

$CM2007HFTestSystems = @()
$CM2012HFTestSystems = @()

$CM2007HFTestSystems = "GIMRMWIN81TST04", "GIESCCMRM01", "GIESCCMRM02"
$CM2012HFTestSystems = "PTSWW7X86HF01", "PTSWW7X64HF02", "PTSWWXPX86HF03A", "GIMRMWIN81TST01", "GIMRMWIN81TST03"

ForEach ( $TS in $CM2007HFTestSystems ) {
    $Result = Test-Connection -ComputerName $TS  -ErrorAction SilentlyContinue 
    If ($Result) { Write-Host $TS  $Result.Address } ELSE { Write-Host $TS  "Not found" }
}