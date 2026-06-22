#!/bin/bash

################################
################################
# Author: Harshvardhan Patil
# Date: 06th June 2026
#
# Version: V1
#
# This script will report the AWS resource usage
##################################
##################################

echo "=================================="
echo "Report Generated At: $(date)"
echo "=================================="

set -x 

# Resources we will track
# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM Users

# LIST S3 BUCKETS.
echo "Print list of s3 buckets: "
aws s3 ls 

# LIST EC2 INSTANCES
echo "Print list of ec2 instance: "
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' # fetching all instance id's and parsing the json data

# LIST AWS LAMBDA FUNCTIONS
echo "Print list of lambda functions: "
aws lambda list-functions

# LIST IAM USERS
echo "Print list of iam users: "
aws iam list-users


echo ""
echo "=================================="
echo "Report Completed"
echo "=================================="