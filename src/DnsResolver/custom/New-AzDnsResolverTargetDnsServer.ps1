<<<<<<< HEAD
=======

>>>>>>> 2935e5fc9cb77a0d10c6bd977239c21938094193
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create a in-memory object for Target DNS server
.Description
Create a in-memory object for Target DNS server
<<<<<<< HEAD
=======

>>>>>>> 2935e5fc9cb77a0d10c6bd977239c21938094193
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.TargetDnsServer
.Link
https://docs.microsoft.com/powershell/module/az.dnsresolver/new-azdnsresolvertargetdnsserverobject
#>
function New-AzDnsResolverTargetDnsServerObject {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.TargetDnsServer')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="DNS server IP address.")]
        [string]
        $IPAddress,
        [Parameter(HelpMessage="DNS server port.")]
        [int]
<<<<<<< HEAD
        $Port = 53
=======
        $Port
>>>>>>> 2935e5fc9cb77a0d10c6bd977239c21938094193
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.TargetDnsServer]::New()

        $Object.IPAddress = $IPAddress
        $Object.Port = $Port
        return $Object
    }
<<<<<<< HEAD
}
=======
}

>>>>>>> 2935e5fc9cb77a0d10c6bd977239c21938094193
