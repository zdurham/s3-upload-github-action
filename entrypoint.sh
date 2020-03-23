#!/bin/sh 

mkdir -p ~/.aws

touch ~/.aws/credentials

echo "[default
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}" > ~/.aws/credentials

aws s3 cp ${FILE} s3://${S3_BUCKET} \
  --region ${AWS_REGION} $*

rm -rf ~/.aws
