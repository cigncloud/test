resource "aws_s3_bucket_policy" "tfer--cign-home" {
  bucket = "cign-home"
  policy = "{\"Id\":\"PolicyForCloudFrontPrivateContent\",\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity E1IMDJ3DRTTLWP\"},\"Resource\":\"arn:aws:s3:::cign-home/*\",\"Sid\":\"1\"}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--cignaaaa-002E-com" {
  bucket = "cignaaaa.com"
  policy = "{\"Id\":\"Policy1335892530063\",\"Statement\":[{\"Action\":[\"s3:GetBucketAcl\",\"s3:GetBucketPolicy\"],\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"290896957503\",\"aws:SourceArn\":\"arn:aws:cur:us-east-1:290896957503:definition/*\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"billingreports.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::cignaaaa.com\",\"Sid\":\"Stmt1335892150622\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"aws:SourceAccount\":\"290896957503\",\"aws:SourceArn\":\"arn:aws:cur:us-east-1:290896957503:definition/*\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"billingreports.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::cignaaaa.com/*\",\"Sid\":\"Stmt1335892526596\"}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--cigncloud-002E-com" {
  bucket = "cigncloud.com"
  policy = "{\"Id\":\"PolicyForCloudFrontPrivateContent\",\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity EZ6ROKP07WC09\"},\"Resource\":\"arn:aws:s3:::cigncloud.com/*\",\"Sid\":\"1\"}],\"Version\":\"2008-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--cigninventory" {
  bucket = "cigninventory"
  policy = "{\"Id\":\"S3-Console-Auto-Gen-Policy-1657931181455\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Condition\":{\"ArnLike\":{\"aws:SourceArn\":\"arn:aws:s3:::cign-home\"},\"StringEquals\":{\"aws:SourceAccount\":\"290896957503\",\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"s3.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::cigninventory/*\",\"Sid\":\"InventoryAndAnalyticsExamplePolicy\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "tfer--www-002E-cigncloud-002E-com" {
  bucket = "www.cigncloud.com"
  policy = "{\"Id\":\"PolicyForCloudFrontPrivateContent\",\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity EYEIIDVDIM17H\"},\"Resource\":\"arn:aws:s3:::www.cigncloud.com/*\",\"Sid\":\"1\"},{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::cloudfront:user/CloudFront Origin Access Identity EYEIIDVDIM17H\"},\"Resource\":\"arn:aws:s3:::www.cigncloud.com/*\",\"Sid\":\"2\"}],\"Version\":\"2008-10-17\"}"
}
