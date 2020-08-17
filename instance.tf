resource "aws_instance" "web-apache"  {

    ami           = "${data.aws_ami.ubuntu.id}"
    instance_type = "${var.instance_type}"
    key_name = "${aws_key_pair.keypair.key_name}"
    vpc_security_group_ids = [
        "${aws_security_group.allow_ssh_anywhere.id}",
        "${aws_security_group.allow_http_anywhere.id}"]
    user_data = "${file ("user-data-ap.txt")}"
    tags = {
        Name = "${var.project_name}-instance-apache"
    }
}
resource "aws_instance" "web-ng"  {

    ami           = "${data.aws_ami.ubuntu.id}"
    instance_type = "${var.instance_type}"
    key_name = "${aws_key_pair.keypair.key_name}"
    vpc_security_group_ids = [
        "${aws_security_group.allow_ssh_anywhere.id}",
        "${aws_security_group.allow_http_anywhere.id}"]
    user_data = "${file ("user-data-ng.txt")}"
    tags = {
        Name = "${var.project_name}-instance-ng"
    }
}