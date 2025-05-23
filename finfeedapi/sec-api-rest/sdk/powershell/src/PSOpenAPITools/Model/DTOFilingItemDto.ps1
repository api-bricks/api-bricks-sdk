#
# REST API
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: v1
# Contact: support@apibricks.io
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER ItemNumber
No description available.
.PARAMETER ItemTitle
No description available.
.PARAMETER Content
No description available.
.OUTPUTS

DTOFilingItemDto<PSCustomObject>
#>

function Initialize-DTOFilingItemDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ItemNumber},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ItemTitle},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Content}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => DTOFilingItemDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "item_number" = ${ItemNumber}
            "item_title" = ${ItemTitle}
            "content" = ${Content}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DTOFilingItemDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to DTOFilingItemDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DTOFilingItemDto<PSCustomObject>
#>
function ConvertFrom-JsonToDTOFilingItemDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => DTOFilingItemDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DTOFilingItemDto
        $AllProperties = ("item_number", "item_title", "content")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "item_number"))) { #optional property not found
            $ItemNumber = $null
        } else {
            $ItemNumber = $JsonParameters.PSobject.Properties["item_number"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "item_title"))) { #optional property not found
            $ItemTitle = $null
        } else {
            $ItemTitle = $JsonParameters.PSobject.Properties["item_title"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "content"))) { #optional property not found
            $Content = $null
        } else {
            $Content = $JsonParameters.PSobject.Properties["content"].value
        }

        $PSO = [PSCustomObject]@{
            "item_number" = ${ItemNumber}
            "item_title" = ${ItemTitle}
            "content" = ${Content}
        }

        return $PSO
    }

}

