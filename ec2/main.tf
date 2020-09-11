provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_key_pair" "deployer" {
  key_name   = "rmendal-personal-aws"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDH33fgOQoixlB1nrdEPK4Hjt9Vm5Gr/nH2wwIh3NWikdrMpcXBEUW8MPq0fSRi3nl6TqD3l2+GTKTxt827+yR9RVaGG42okGuEM8RNg2+h/c2M6iaMAHkRYINUUKb2jgwxF3icLRop8YYpP3eZHWTPPKHhoNUVZ1cq1pSWDhGgfR08ZYvQInbHpqK4qarA0cTlwKvat5Rn745rbS2tBMS6sjrGNUSnyvco8aYF/mWtyO8e92pSL21WGPLQ5/bHtDtWIWpeboCogd/NZ0B1GryK88hcQm/J7c92N4L3EVj5iQ7gnxe0B+6YEUHT4WK1mhkScLyBURsFpZSn4SMUHVEIgDdiFXba6FENyIJHkba3WCwp+ZiUHcwW988cNo0xPzyKqtk61CSgovedwE0pKanQS40Ar/MdcEyv/RoHH6meM2ym01gkTc7aFURma9rqalDbQ13JZqTnOIW+P7y2ivkmESFznRLxQTeS7BXMKU6ujhjUyPDvvcPFQqE1z5eXZgdp83Gdfa4nnb6lkduXOuiyGMVeoe7o2kjZ221BV9HYLg25nbWL5q3ddA+mEgMZoXGjgyYRo5J6rFinpzYHDxmglOgjFreyvNUE6MwK+6GrD06YzQF+QZWdI0rH26aMhdmsWEVsVs/CjImZoLyHJjjczZqRAEU4K45vNUnVdbTY2w== rmendal@cuda-dell"
}


resource "aws_instance" "terraform_test" {
  ami             = "ami-0010d386b82bc06f0"
  instance_type   = "t2.micro"
  vpc_security_group_ids = ["sg-0998727f95dea09b4"]
  key_name = "rmendal-personal-aws"
}