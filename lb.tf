resource "aws_lb" "test" {
  name               = "${var.project_name}-alb-web"
  internal           = false
  load_balancer_type = "application"
  
  security_groups =[
        "${aws_security_group.allow_http_anywhere.id}"
  ]
  subnets = "${data.aws_subnet_ids.selected.ids}"

  enable_deletion_protection = false


  tags = {
    Environment = "test"
  }
}