# Tim hieu data.tf va local.tf</summary>

## . Data source allow terraform to use information defined outside of Terraform. declared using a "data" block 
- Read only ( Chỉ đọc các resouce không tác động, hay thay đổi đc)
- Example   
```
data "aws_ami" "example" {  
    most_recent = true   
    owners = ["self"]  
    tags = {  
        Name   = "app-server"  
        Tested = "true"  
    }  
}  
```
- Example2:
```    
data "aws_db_instance" "example" {  
    identifier = "my-existing-db-instance"  
}  
resource "aws_db_snapshot" "example" {  
    db_instance_identifier = data.aws_db_instance.example.id  
    db_snapshot_identifier = "my-db-snapshot"   
    #Other snapshot configuration...  
}  
```

- Example 3:
```
data "aws_security_group" "example" {
  name = "my-existing-security-group"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_security_group.example.id]
  # Other instance configuration...
}
```



## the term "local" refers to a special block and its associated functions that allow you to define local variables within your Terraform configuration files.
- Varriable are scoped to the the configuration file in which they are defined, Thay can not accessed outside that file.
- Local values are like a function's temporary local variables.
- Example 
```
variable "users" {
  type = map(object({
    is_admin = bool
  }))
}

locals {
  admin_users = {
    for name, user in var.users : name => user
    if user.is_admin
  }
  regular_users = {
    for name, user in var.users : name => user
    if !user.is_admin
  }
}
```

# terraform.tfstate
- The Terraform state file (usually named "terraform.tfstate") is a JSON file that keeps track of the resources and infrastructure managed by Terraform. It records the relationships between resources, their current state, and other metadata. When you apply a Terraform configuration, it reads this state file to determine what changes are required to reach the desired state specified in your Terraform code.

- When workings with terraform team, how we manage state
1. Remote state storage: s3, gooogle cloud storage -> using remote backend allows all team members to access and modify state
2. 
