resource "aws_eip" "web_eip_ap" {

    instance = "${aws_instance.web-apache.id}"
    tags = {
        Name = "${var.project_name}-eip-ap"
    }
}

resource "aws_eip" "web_eip_ng" {

    instance = "${aws_instance.web-apache.id}"
    tags = {
        Name = "${var.project_name}-eip-ng"
    }
}