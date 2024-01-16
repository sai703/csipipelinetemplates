param (
    [Parameter(Mandatory = $true)]
    [string]$tenantId,
    [Parameter(Mandatory = $true)]
    [string]$appName,
    [Parameter(Mandatory = $true)]
    [string]$redirectUri,
    [Parameter(Mandatory = $true)]
    [string]$frontChannelLogoutUrl,
    [Parameter(Mandatory = $true)]
    [string]$userDisplayName,
    [Parameter(Mandatory = $true)]
    [string]$userPrincipalName,
    [Parameter(Mandatory = $true)]
    [string]$mailNickName
)

Connect-MgGraph -TenantId $tenantId -Scopes "RoleManagement.ReadWrite.Directory, User.ReadWrite.All, Application.ReadWrite.All" -DeviceCode

# Create a new Azure AD B2C application registration
$newApp = New-MgApplication -DisplayName $appName -PublicClient $null -Web @{
    RedirectUris = @($redirectUri)
    LogoutUrl    = $frontChannelLogoutUrl
}
Write-Output $newApp


$implicitGrantSettings = @{
    "enableAccessTokenIssuance" = $true
    "enableIdTokenIssuance"     = $true
}

# Update the application with Implicit Grant settings
Update-MgApplication -ApplicationId $newApp.Id -Web @{ ImplicitGrantSettings = $implicitGrantSettings }

Write-Host "App Registration Updated Successfully!"

# Generate and add an application secret (password credential)
$passwordCred = @{
    displayName = 'AppSecret1'
    endDateTime = (Get-Date).AddMonths(6)
}

$secret = Add-MgApplicationPassword -ApplicationId $newApp.Id -PasswordCredential $passwordCred
$secret | Format-List


$params = @{
    accountEnabled    = $true
    displayName       = $userDisplayName
    userPrincipalName = $userPrincipalName
    mailNickName      = $mailNickName
    passwordProfile   = @{
        forceChangePasswordNextSignIn = $true
        password                      = "xWwvJ]6NMw+bWH-d"
    }
}

New-MgUser -BodyParameter $params

$userResponse = Get-MgUser -UserId  $userPrincipalName

$params = @{
    "@odata.type"    = "#microsoft.graph.unifiedRoleAssignment"
    principalId      = $UserResponse.id
    roleDefinitionId = "62e90394-69f5-4237-9190-012177145e10"
    directoryScopeId = "/"
}

 

$roleAssignment = New-MgRoleManagementDirectoryRoleAssignment -BodyParameter $params

$roleAssignments