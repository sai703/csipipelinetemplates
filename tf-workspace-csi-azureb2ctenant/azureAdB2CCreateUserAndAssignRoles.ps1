# Define the parameters 
param ( 
    [Parameter(Mandatory = $true)] [string]$tenantId, 
    [Parameter(Mandatory = $true)] [string]$appId, 
    [Parameter(Mandatory = $true)] [string]$appSecret,  
    [Parameter(Mandatory = $true)] [string]$displayName,
    [Parameter(Mandatory = $true)] [string]$mailNickname,
    [Parameter(Mandatory = $true)] [string]$userPrincipalName
)
Import-Module Microsoft.Graph.Users

# Construct the token endpoint URL
Connect-MgGraph -TenantId $tenantId -Scopes "Directory.ReadWrite.All, RoleManagement.ReadWrite.Directory, User.ReadWrite.All, Group.ReadWrite.All"
$tokenEndpoint = "https://login.microsoftonline.com/$tenantId/oauth2/v2.0/token"
$scope = "https://graph.microsoft.com/.default"
# Construct the request body
$body = @{
    grant_type    = "client_credentials"
    client_id     = $appId
    client_secret = $appSecret
    scope         = $scope
}

# Send the request to the token endpoint and extract the access token from the response

$response = Invoke-RestMethod -Uri $tokenEndpoint -Method Post -Body $body
$accessToken = $response.access_token 
 
$userData = @{
    accountEnabled    = $true
    displayName       = $displayName
    mailNickname      = $mailNickname
    userPrincipalName = $userPrincipalName
    passwordProfile   = @{
        forceChangePasswordNextSignIn = $true
        password                      = "MyPassword123"
    }
}
$jsonBody = $userData | ConvertTo-Json


$params = @{
    accountEnabled    = $true
    displayName       = $displayName
    mailNickname      = $mailNickname
    userPrincipalName = $userPrincipalName
    passwordProfile   = @{
        forceChangePasswordNextSignIn = $true
        password                      = "xWwvJ]6NMw+bWH-d"
    }
}

New-MgUser -BodyParameter $params

$userResponse = Get-MgUser -UserId  $userPrincipalName

$headers = @{
    "Content-Type"  = "application/json";
    "Authorization" = "Bearer $accessToken"
}

#$uri = "https://graph.microsoft.com/v1.0/users"
#$UserResponse = Invoke-RestMethod -Method Post -Uri $uri -Headers $headers -Body $jsonBody 
Write-Output "User created with Object Id $($UserResponse.id)"

$params = @{
    "@odata.type" = "#microsoft.graph.unifiedRoleAssignment"
    principalId = $UserResponse.id
    roleDefinitionId = "62e90394-69f5-4237-9190-012177145e10"
    directoryScopeId = "/"
}

 

$roleAssignment = New-MgRoleManagementDirectoryRoleAssignment -BodyParameter $params

$roleAssignment


# Set headers
$roleAssignmentHeader = @{
    "Authorization" = "Bearer $accessToken"
    "Content-Type"  = "application/json"
}
$roleAssignmentUserUrl = "https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments"

# Set body with user properties to update (in this case, we're adding the user to the Global Administrator role)

$roleAssignmentBody = @{
    "@odata.type"      = "#microsoft.graph.unifiedRoleAssignment"
    "roleDefinitionId" = "31e08e0a-d3f7-4ca2-ac39-7343fb83e8ad"
    "principalId"      = $UserResponse.id

    "directoryScopeId" = "/"
}  | ConvertTo-Json -Depth 3

# Send POST request to update user 
#$roleAssignmentResponse = Invoke-RestMethod -Method POST -Uri $roleAssignmentUserUrl -Headers $roleAssignmentHeader -Body $roleAssignmentBody 

# Output the response
Write-Host "Added UserId: $($UserResponse.id) to the Global Administrtaor role." 




#$sp = Get-AzADServicePrincipal -DisplayName "997c94ed-6286-4788-9ec0-538cd56519cb"
#$sp


#New-AzRoleAssignment -ObjectId "997c94ed-6286-4788-9ec0-538cd56519cb" -RoleDefinitionId "e8611ab8-c189-46e8-94e1-60213ab1f814" -Scope = "/"