resource "aws_security_group" "allow_ssh_anywhere" {
  name        = "${var.project_name}-allow_ssh_anywhere"
  description = "Allow TLS inbound traffic ssh"
  vpc_id      = "${data.aws_vpc.selected.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [
        "0.0.0.0/0"
        ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh_anywhere"
  }
}

resource "aws_security_group" "allow_http_anywhere" {
  name        = "${var.project_name}-allow_http_anywhere"
  description = "Allow TLS inbound traffic http"
  vpc_id      = "${data.aws_vpc.selected.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [
        "0.0.0.0/0"
        ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh_anywhere"
  }
}