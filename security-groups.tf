
resource "aws_security_group" "worker_group_mgmt_one" {
  name_prefix = "worker_group_mgmt_one"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.8.0/21",
    ]
  }
  tags = {
    yor_trace = "c37c10d8-51fb-439e-85f3-6c25357cc67a"
  }
}

resource "aws_security_group" "all_worker_mgmt" {
  name_prefix = "all_worker_management"
  vpc_id      = module.vpc.vpc_id

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.8.0/21",
      "172.16.0.0/12",
      "192.168.0.0/16",
    ]
  }
  tags = {
    yor_trace = "a84d7e02-ef19-4949-9c99-5b629ef8c4f8"
  }
}
