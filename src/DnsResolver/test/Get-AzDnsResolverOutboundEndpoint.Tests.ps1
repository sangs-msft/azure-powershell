<<<<<<< HEAD
."$PSScriptRoot\testDataGenerator.ps1"
."$PSScriptRoot\virtualNetworkClient.ps1"
."$PSScriptRoot\outboundEndpointAssertions.ps1"
."$PSScriptRoot\stringExtensions.ps1"

Add-AssertionOperator -Name 'BeSuccessfullyCreatedOutboundEndpoint' -Test $Function:BeSuccessfullyCreatedOutboundEndpoint

=======
>>>>>>> 2935e5fc9cb77a0d10c6bd977239c21938094193
$loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
if (-Not (Test-Path -Path $loadEnvPath)) {
    $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
}
. ($loadEnvPath)
$TestRecordingFile = Join-Path $PSScriptRoot 'Get-AzDnsResolverOutboundEndpoint.Recording.json'
$currentPath = $PSScriptRoot
while(-not $mockingPath) {
    $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
    $currentPath = Split-Path -Path $currentPath -Parent
}
. ($mockingPath | Select-Object -First 1).FullName

Describe 'Get-AzDnsResolverOutboundEndpoint' {
<<<<<<< HEAD
    It 'Get single outbound endpoint by name, expect outbound endpoint by name retrieved' {
        $outboundEndpointName = $env.InboundEndpointNamePrefixForGet0
        $outboundEndpoint =  Get-AzDnsResolverOutboundEndpoint -DnsResolverName $env.DnsResolverNameForInboundEndpointGet -Name $outboundEndpointName -ResourceGroupName $env.ResourceGroupName
        $outboundEndpoint | Should -BeSuccessfullyCreatedInboundEndpoint
    }

    It 'Get single outbound endpoint that does not exist by name, expect failure' {
        $outboundEndpointName = (RandomString -allChars $false -len 10)
        {Get-AzDnsResolverOutboundEndpoint -DnsResolverName $env.DnsResolverNameForInboundEndpointGet -Name $outboundEndpointName -ResourceGroupName $env.ResourceGroupName} | Should -Throw "not found"
    }

    It 'List Outbound Endpoints under a DNS Resolver name, expected exact number of outbound endpoints retrieved' {
        $dnsResolverName = $env.DnsResolverNameForInboundEndpointGet
        $outboundEndpoints =  Get-AzDnsResolverInboundEndpoint -DnsResolverName $dnsResolverName -ResourceGroupName $env.ResourceGroupName
        $outboundEndpoints.Count | Should -Be $env.NumberOfInboundEndpointForGet
    }
}
=======
    It 'List' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'Get' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }

    It 'GetViaIdentity' -skip {
        { throw [System.NotImplementedException] } | Should -Not -Throw
    }
}
>>>>>>> 2935e5fc9cb77a0d10c6bd977239c21938094193
