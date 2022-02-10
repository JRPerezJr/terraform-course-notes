/*
Great! Now, let us configure the remote backend with s3. Add a terraform block in a new file called terraform.tf with the following arguments:

bucket: remote-state
key: terraform.tfstate
region: us-east-1

Do not run terraform init yet! Since we are making use of minio we also have to add a couple of additional arguments to get this to work!
We will do that in the next step. 
When using the regular s3 service from AWS the above arguments should be sufficient to configure remote state.
*/
terraform {
    backend "s3" {
        bucket = "remote-state"
        key = "terraform.tfstate"
        region = "us-east-1"
    }
}

/*
To make the s3 backend with Minio to work, we have to add a few additional arguments. The terraform.tf file has been updated. Check it out.
Please note that these arguments are optional and not needed when working with the regular S3 service in AWS.
*/
terraform {
  backend "s3" {
    key = "terraform.tfstate"
    region = "us-east-1"
    bucket = "remote-state"
    endpoint = "http://<YOUR SERVER IP>:9000"
    force_path_style = true


    skip_credentials_validation = true

    skip_metadata_api_check = true
    skip_region_validation = true
  }
}