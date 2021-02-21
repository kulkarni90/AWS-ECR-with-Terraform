

provider aws {
  region = "ap-south-1" # change the region
}

resource "aws_ecr_repository" "foo" {
  name                 = "TEST-REPO"
  image_tag_mutability = "MUTABLE"
  
  image_scanning_configuration {
          scan_on_push = true
   }
}
