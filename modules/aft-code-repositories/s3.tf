# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#

resource "aws_s3_bucket" "global_customizations" {
  count         = local.vcs.is_s3 ? 1 : 0
  bucket_prefix = substr(var.global_customizations_repo_name, 0, 37)

  tags = {
    description = "This repo holds the Global Customizations for the CT-AFT solution"
  }
}

resource "aws_s3_bucket_versioning" "global_customizations" {
  count  = local.vcs.is_s3 ? 1 : 0
  bucket = aws_s3_bucket.global_customizations[0].id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "global_customizations" {
  count  = local.vcs.is_s3 ? 1 : 0
  bucket = aws_s3_bucket.global_customizations[0].id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "account_customizations" {
  count         = local.vcs.is_s3 ? 1 : 0
  bucket_prefix = substr(var.account_customizations_repo_name, 0, 37)

  tags = {
    description = "This repo holds the Account Customizations for the CT-AFT solution"
  }
}

resource "aws_s3_bucket_versioning" "account_customizations" {
  count  = local.vcs.is_s3 ? 1 : 0
  bucket = aws_s3_bucket.account_customizations[0].id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "account_customizations" {
  count  = local.vcs.is_s3 ? 1 : 0
  bucket = aws_s3_bucket.account_customizations[0].id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "account_request" {
  count         = local.vcs.is_s3 ? 1 : 0
  bucket_prefix = substr(var.account_request_repo_name, 0, 37)

  tags = {
    description = "This repo holds the Account Request Terraform for the CT-AFT solution"
  }
}

resource "aws_s3_bucket_versioning" "account_request" {
  count  = local.vcs.is_s3 ? 1 : 0
  bucket = aws_s3_bucket.account_request[0].id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "account_request" {
  count  = local.vcs.is_s3 ? 1 : 0
  bucket = aws_s3_bucket.account_request[0].id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "account_provisioning_customizations" {
  count         = local.vcs.is_s3 ? 1 : 0
  bucket_prefix = substr(var.account_provisioning_customizations_repo_name, 0, 37)

  tags = {
    description = "This repo holds the Account Provisioning Customizations Step Function Terraform Project"
  }
}

resource "aws_s3_bucket_versioning" "account_provisioning_customizations" {
  count  = local.vcs.is_s3 ? 1 : 0
  bucket = aws_s3_bucket.account_provisioning_customizations[0].id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "account_provisioning_customizations" {
  count  = local.vcs.is_s3 ? 1 : 0
  bucket = aws_s3_bucket.account_provisioning_customizations[0].id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
