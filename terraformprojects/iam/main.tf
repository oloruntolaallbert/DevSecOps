provider "aws" {
    region = "eu-west-2"

}

resource "aws_iam_user" "user" {
    name = "Albert-test"
}

resource "aws_iam_policy" "CPolicy" {
    name = "GlacierEC2EFS"
    policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "ec2:GetIpamResourceCidrs",
                "elasticfilesystem:DescribeReplicationConfigurations",
                "ec2:GetIpamPoolCidrs",
                "ec2:GetInstanceUefiData",
                "glacier:AbortMultipartUpload",
                "ec2:GetEbsEncryptionByDefault",
                "ec2:ExportClientVpnClientConfiguration",
                "ec2:GetHostReservationPurchasePreview",
                "elasticfilesystem:DescribeAccountPreferences",
                "ec2:GetConsoleScreenshot",
                "glacier:ListParts",
                "ec2:GetLaunchTemplateData",
                "ec2:GetSerialConsoleAccessStatus",
                "ec2:GetEbsDefaultKmsKeyId",
                "glacier:PurchaseProvisionedCapacity",
                "ec2:GetIpamDiscoveredResourceCidrs",
                "glacier:InitiateJob",
                "ec2:GetManagedPrefixListEntries",
                "ec2:CreateTags",
                "glacier:ListTagsForVault",
                "glacier:DeleteVault",
                "glacier:DeleteArchive",
                "ec2:GetNetworkInsightsAccessScopeContent",
                "ec2:GetReservedInstancesExchangeQuote",
                "ec2:GetPasswordData",
                "ec2:GetAssociatedIpv6PoolCidrs",
                "glacier:ListMultipartUploads",
                "ec2:GetSpotPlacementScores",
                "glacier:SetVaultNotifications",
                "glacier:CompleteMultipartUpload",
                "glacier:UploadMultipartPart",
                "ec2:GetAwsNetworkPerformanceData",
                "ec2:GetIpamDiscoveredAccounts",
                "glacier:ListVaults",
                "ec2:GetResourcePolicy",
                "ec2:GetDefaultCreditSpecification",
                "ec2:DeleteTags",
                "glacier:CreateVault",
                "ec2:GetCapacityReservationUsage",
                "ec2:GetNetworkInsightsAccessScopeAnalysisFindings",
                "ec2:GetSubnetCidrReservations",
                "ec2:GetConsoleOutput",
                "ec2:ExportClientVpnClientCertificateRevocationList",
                "glacier:DeleteVaultNotifications",
                "glacier:ListJobs",
                "ec2:GetFlowLogsIntegrationTemplate",
                "glacier:InitiateMultipartUpload",
                "elasticfilesystem:DescribeFileSystems",
                "glacier:UploadArchive",
                "ec2:GetCoipPoolUsage",
                "elasticfilesystem:DescribeAccessPoints",
                "ec2:GetAssociatedEnclaveCertificateIamRoles",
                "ec2:GetIpamAddressHistory",
                "ec2:GetManagedPrefixListAssociations",
                "glacier:ListProvisionedCapacity"
            ],
            "Resource": "*"
        }
    ]
}


EOF
}

resource "aws_iam_policy_attachment" "Pattachment" {
    name = "Pattachment"
    users = [aws_iam_user.user.name]
    policy_arn = aws_iam_policy.CPolicy.arn
  
}
// EOF see the whole block json as one 