terraform  {
    backend "s3" {
        bucket = "albert-terraform-remote-state"
        key = "terraform/rstfstate.tfstate"
       region = "eu-west-2"  

    }
}


// storing sttae in an S3 bucket incase you are working in a group and you will make sure 
// versioning is enabled.