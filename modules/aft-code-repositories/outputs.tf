# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
output "codestar_connection_arn" {
  value = lookup(local.connection_arn, var.vcs_provider)
}

output "global_customizations_s3_bucket" {
  value = aws_s3_bucket.global_customizations[0].bucket
}

output "account_customizations_s3_bucket" {
  value = aws_s3_bucket.account_customizations[0].bucket
}

output "account_request_s3_bucket" {
  value = aws_s3_bucket.account_request[0].bucket
}

output "account_provisioning_customizations_s3_bucket" {
  value = aws_s3_bucket.account_provisioning_customizations[0].bucket
}
