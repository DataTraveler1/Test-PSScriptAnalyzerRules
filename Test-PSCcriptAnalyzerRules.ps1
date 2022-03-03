#AlignAssignmentStatement

$hashtable = @{
    property1 = "value"
    anotherProperty = "another value"
}


#AvoidAssignmentToAutomaticVariable

function foo($Error){ }


#AvoidDefaultValueForMandatoryParameter

function Test
{

    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory=$true)]
        $Parameter1 = 'default Value'
    )
}


#AvoidDefaultValueSwitchParameter

function Test-Script
{
    [CmdletBinding()]
    Param
    (
        [String]
        $Param1,

        [switch]
        $Switch=$True
    )
    Write-Output ""
}


#AvoidGlobalAliases1

New-Alias -Name Name -Value Value -Scope "Global"


#AvoidGlobalFunctions

function global:functionName {}


#AvoidGlobalVars

$Global:var1 = $null
function Test-NotGlobal ($var)
{
    $a = $var + $var1
}


#AvoidInvokingEmptyMembers

$MyString = "abc"
$MyString.('len'+'gth')


#AvoidLongLines ### NOT ENABLED BY DEFAULT

Rules = @{
    PSAvoidLongLines  = @{
        Enable     = $true
        MaximumLineLength = 120
    }
}


#AvoidMultipleTypeAttributes1

function Test-Script
{
    [CmdletBinding()]
    Param
    (
        [String]
        $Param1,

        [switch]
        [bool]
        $Switch
    )
    Write-Output ""
}


#AvoidNullOrEmptyHelpMessageAttribute

Function BadFuncEmptyHelpMessageEmpty
{
    Param(
        [Parameter(HelpMessage='')]
        [String]
        $Param
    )

    $Param
}

Function BadFuncEmptyHelpMessageNull
{
    Param(
        [Parameter(HelpMessage=$null)]
        [String]
        $Param
    )

    $Param
}

Function BadFuncEmptyHelpMessageNoAssignment
{
    Param(
        [Parameter(HelpMessage)]
        [String]
        $Param
    )

    $Param
}


#AvoidOverwritingBuiltInCmdlets

???


#AvoidShouldContinueWithoutForce

Function Test-ShouldContinue
{
    [CmdletBinding(SupportsShouldProcess=$true)]
    Param
    (
        $MyString = 'blah'
    )

    if ($PsCmdlet.ShouldContinue("ShouldContinue Query", "ShouldContinue Caption"))
    {
        ...
    }
}


#AvoidTrailingWhitespace

Write-Host "a"    


#AvoidUsingCmdletAliases

gps | Where-Object {$_.WorkingSet -gt 20000000}


#AvoidUsingComputerNameHardcoded

Function Invoke-MyRemoteCommand ()
{
    Invoke-Command -Port 343 -ComputerName "hardcoderemotehostname"
}


#AvoidUsingConvertToSecureStringWithPlainText

$UserInput = Read-Host "Please enter your secure code"
$EncryptedInput = ConvertTo-SecureString -String $UserInput -AsPlainText -Force


#AvoidUsingDeprecatedManifestFields

???


#AvoidUsingDoubleQuotesForConstantString

$constantValue = "I Love PowerShell"


#AvoidUsingEmptyCatchBlock

try
{
    1/0
}
catch [DivideByZeroException]
{
}


#AvoidUsingInvokeExpression

Invoke-Expression "Get-Process"


#AvoidUsingPlainTextForPassword

function Test-Script
{
    [CmdletBinding()]
    Param
    (
        [string]
        $Password
    )
    Write-Output ""
}

#AvoidUsingPositionalParameters

Get-Command ChildItem Microsoft.PowerShell.Management


#AvoidUsingUsernameAndPasswordParams

function Test-Script
{
    [CmdletBinding()]
    Param
    (
        [String]
        $Username,
        [SecureString]
        $Password
    )
    Write-Output ""
}


#AvoidUsingWMICmdlet

Get-WmiObject -Query 'Select * from Win32_Process where name LIKE "myprocess%"' | Remove-WmiObject
Invoke-WmiMethod ?Class Win32_Process ?Name "Create" ?ArgumentList @{ CommandLine = "notepad.exe" }


#AvoidUsingWriteHost

function Get-MeaningOfLife
{
    ...
    Write-Host "Computing the answer to the ultimate question of life, the universe and everything"
    ...
    Write-Host 42
}


#DSCDscExamplesPresent

???


#DSCDscTestsPresent

???


#DSCReturnCorrectTypesForDSCFunctions

???


#DSCStandardDSCFunctionsInResource

???


#DSCUseIdenticalMandatoryParametersForDSC

???


#DSCUseIdenticalParametersForDSC

???


#DSCUseVerboseMessageInDSCResource

???


#MisleadingBacktick


Write-Host "a" `  


#MissingModuleManifestField

???


#PlaceCloseBrace ### NOT ENABLED BY DEFAULT

???


#PlaceOpenBrace

???


#PossibleIncorrectComparisonWithNull

function Test-CompareWithNull
{
    if ($DebugPreference -eq $null)
    {
    }
}


#PossibleIncorrectUsageOfAssignmentOperator

if ($a = $b)
{
    ...
}


#PossibleIncorrectUsageOfRedirectionOperator

if ($a > $b)
{
    ...
}


#ProvideCommentHelp

function Get-File
{
    [CmdletBinding()]
    Param
    (
        ...
    )

}


#ReservedCmdletChar

function MyFunction[1]
{...}


#ReservedParams

function Test
{
    [CmdletBinding]
    Param
    (
        $ErrorVariable,
        $Parameter2
    )
}


#ReviewUnusedParameter

function Test-Parameter
{
    Param (
        $Parameter1,

        # this parameter is never called in the function
        $Parameter2
    )

    Get-Something $Parameter1
}


#ShouldProcess

function Set-File
    {
        [CmdletBinding(SupportsShouldProcess=$true)]
        Param
        (
            # Path to file
            [Parameter(Mandatory=$true)]
            $Path
        )
        "String" | Out-File -FilePath $FilePath
    }


#UseApprovedVerbs

function Change-Item
{
    ...
}


#UseBOMForUnicodeEncodedFile

???


#UseCmdletCorrectly

Function Set-TodaysDate ()
{
    Set-Date
    Write-Output ""
}


#UseCompatibleCmdlets

???


#UseCompatibleCommands

???


#UseCompatibleSyntax

???


#UseCompatibleTypes

???


#UseConsistentIndentation ### NOT ENABLED BY DEFAULT

???


#UseConsistentWhitespace ### NOT ENABLED BY DEFAULT

???


#UseCorrectCasing

invoke-command { 'foo' } -runasadministrator


#UseDeclaredVarsMoreThanAssignments

function Test
{
    $declaredVar = "Declared just for fun"
    $declaredVar2 = "Not used"
    Write-Output $declaredVar
}


#UseLiteralInitializerForHashtable

$hashtable = New-Object -TypeName hashtable


#UseOutputTypeCorrectly

function Get-Foo
{
        [CmdletBinding()]
        [OutputType([String])]
        Param(
        )
        return 4
}


#UseProcessBlockForPipelineCommand

Function Get-Number
{
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline)]
        [int]
        $Number
    )

    $Number
}


#UsePSCredentialType

function Credential([String]$Credential)
{
    ...
}


#UseShouldProcessForStateChangingFunctions

function Set-ServiceObject
{
    [CmdletBinding()]
    param
    (
        [string]
        $Parameter1
    )
    ...
}


#UseSingularNouns

function Get-Files
{
    ...
}


#UseSupportsShouldProcess

function foo {
    param(
        $param1,
        $Confirm,
        $WhatIf
    )
}


#UseToExportFieldsInManifest

???


#UseUsingScopeModifierInNewRunspaces

???


#UseUTF8EncodingForHelpFile

???
