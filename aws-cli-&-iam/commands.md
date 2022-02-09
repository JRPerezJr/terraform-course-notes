# AWS CLI & IAM

## Add a user mary to IAM

`aws iam create-user --user-name mary`

## Check configuration and credentials

`cat .aws/config`

`cat .aws/credentials`

## Add user mary to the AdministratorAccess

`aws iam attach-user-policy --user-name mary --policy-arn arn:aws:iam::aws:policy/AdministratorAccess`

## Create new IAM group developers

`aws iam create-group --group-name developers`

## Add users Jack and Jill to the IAM group developers

`aws iam add-user-to-group --group-name developers --user-name jack`

`aws iam add-user-to-group --group-name developers --user-name jill`

## Attach the AmazonEC2FullAccess policy with the ARN: arn:aws:iam::aws:policy/AmazonEC2FullAccess to the group developers

`aws iam attach-group-policy --group-name developers --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess`