# Define provider
provider "aws" {
  region = "us-west-2"
}

# Create an EC2 instance (server)
resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

# Create an RDS instance (database)
resource "aws_db_instance" "database" {
  allocated_storage    = 10
  engine              = "mysql"
  instance_class      = "db.t2.micro"
  name                = "my_database"
  username            = "admin"
  password            = "password"
}
