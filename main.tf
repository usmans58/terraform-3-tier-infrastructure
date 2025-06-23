data "aws_ami" "amazon_linux_2023" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name = "name"
    values = ["al2023-ami-2023.7*"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_key_pair" "ssh_key" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
  
}

module "ec2" {
    source          = "./modules/EC2"
    ami_id          = data.aws_ami.amazon_linux_2023.id
    instance_type   = var.instance_type
    key_name        = var.key_name
    public_key_path = var.public_key_path

}