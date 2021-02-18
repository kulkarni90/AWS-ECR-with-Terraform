

provider aws {
  region = "ap-south-1" # change the region
}

terraform {
  backend "s3" {
    encrypt = true
    bucket = "databucket"
    region = "ap-south-1"
    key = "tf.state"
  }
  
}

module "image-registry" {
    source = "github.com/" # your github repo link
    ecr_names = var.ecr_names
}
