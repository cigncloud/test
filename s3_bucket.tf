resource "aws_s3_bucket" "tfer--cign-home" {
  bucket        = "cign-home"
  force_destroy = "true"

  grant {
    id          = "c170d084459e17053bb69cfe8ccecc5d58f464bdf98f58d6340f5b18b3226e59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "true"

  policy = <<POLICY
{
  "Id": "PolicyForCloudFrontPrivateContent",
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity E1IMDJ3DRTTLWP"
      },
      "Resource": "arn:aws:s3:::cign-home/*",
      "Sid": "1"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--cignaaaa-002E-com" {
  bucket        = "cignaaaa.com"
  force_destroy = "false"

  grant {
    id          = "c170d084459e17053bb69cfe8ccecc5d58f464bdf98f58d6340f5b18b3226e59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "Policy1335892530063",
  "Statement": [
    {
      "Action": [
        "s3:GetBucketAcl",
        "s3:GetBucketPolicy"
      ],
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "290896957503",
          "aws:SourceArn": "arn:aws:cur:us-east-1:290896957503:definition/*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "billingreports.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::cignaaaa.com",
      "Sid": "Stmt1335892150622"
    },
    {
      "Action": "s3:PutObject",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "290896957503",
          "aws:SourceArn": "arn:aws:cur:us-east-1:290896957503:definition/*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "billingreports.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::cignaaaa.com/*",
      "Sid": "Stmt1335892526596"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--cigncloud-002E-com" {
  bucket        = "cigncloud.com"
  force_destroy = "false"

  grant {
    id          = "c170d084459e17053bb69cfe8ccecc5d58f464bdf98f58d6340f5b18b3226e59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "PolicyForCloudFrontPrivateContent",
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity EZ6ROKP07WC09"
      },
      "Resource": "arn:aws:s3:::cigncloud.com/*",
      "Sid": "1"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    redirect_all_requests_to = "https://cigncloud.com"
  }
}

resource "aws_s3_bucket" "tfer--cigninventory" {
  bucket        = "cigninventory"
  force_destroy = "false"

  grant {
    id          = "c170d084459e17053bb69cfe8ccecc5d58f464bdf98f58d6340f5b18b3226e59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "S3-Console-Auto-Gen-Policy-1657931181455",
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Condition": {
        "ArnLike": {
          "aws:SourceArn": "arn:aws:s3:::cign-home"
        },
        "StringEquals": {
          "aws:SourceAccount": "290896957503",
          "s3:x-amz-acl": "bucket-owner-full-control"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Resource": "arn:aws:s3:::cigninventory/*",
      "Sid": "InventoryAndAnalyticsExamplePolicy"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }
}

resource "aws_s3_bucket" "tfer--www-002E-cigncloud-002E-com" {
  bucket        = "www.cigncloud.com"
  force_destroy = "false"

  grant {
    id          = "c170d084459e17053bb69cfe8ccecc5d58f464bdf98f58d6340f5b18b3226e59"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled = "false"

  policy = <<POLICY
{
  "Id": "PolicyForCloudFrontPrivateContent",
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity EYEIIDVDIM17H"
      },
      "Resource": "arn:aws:s3:::www.cigncloud.com/*",
      "Sid": "1"
    },
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity EYEIIDVDIM17H"
      },
      "Resource": "arn:aws:s3:::www.cigncloud.com/*",
      "Sid": "2"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  request_payer = "BucketOwner"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = "false"
    }
  }

  versioning {
    enabled    = "false"
    mfa_delete = "false"
  }

  website {
    redirect_all_requests_to = "https://www.cigncloud.com"
  }
}
