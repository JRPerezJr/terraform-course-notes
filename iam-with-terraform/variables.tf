/*
Great! We have added one user called mary. However, project_sapphire has 5 more people who need access to the AWS Account!
Let's use the count meta-argument and the new variables.tf file created in the configuration directory to create these additional users!
*/
variable "project-sapphire-users" {
     type = list(string)
     default = [ "mary", "jack", "jill", "mack", "buzz", "mater"]
}

/*
Since we are making use of the mocking framework, the credentials defined using aws configure (stored within the file /root/.aws/credentials) do not work as it is.
We have now updated the provider.tf file with additional arguments to make it work. Take a look.

The endpoint argument is similar to the one we saw with the AWS CLI where we used the --endpoint http://aws:4566. Here we have defined it to make it work with the IAM service.

Please note that these additional configurations are not needed when working directly with the AWS Cloud. 
It is only needed by the lab as it is using an AWS mock framework.
*/
provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    iam                       = "http://aws:4566"
  }
}