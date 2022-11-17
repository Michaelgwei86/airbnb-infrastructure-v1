resource "aws_instance" "web" {
    ami = var.AMI_ID
    instance_type = var.INSTANCE_TYPE
    monitoring = true 
    ebs_optimized = true
    metadata_options {
       http_endpoint = "enabled"
       http_tokens   = "required"
  }
    
    oot_block_device {
        encrypted     = true
    }
    
    tags = {
        Name = "HelloWorld"
        }
    }
