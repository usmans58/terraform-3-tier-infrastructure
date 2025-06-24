
resource "aws_key_pair" "ssh_key" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)

}

module "ec2" {
  source          = "./modules/EC2"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  public_key_path = var.public_key_path
  subnet_id       = module.vpc.public_subnet_ids[0]



  depends_on = [module.vpc]
}

module "vpc" {
  source = "./modules/VPC"

  vpc_cidr_block             = var.vpc_cidr_block
  public_subnet_cidr_blocks  = var.public_subnet_cidr_blocks
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  availability_zones         = var.availability_zones

}