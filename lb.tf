resource "aws_lb" "Nlb" {
    name = "terraformnlb"
    internal = false
    load_balancer_type = "network"
    subnets = [aws_subnet.publicsubnet1.*.id]
    enable_deletion_protection = false
tags = {
    Environment = "hr"
  }
}

resource "aws_lb_target_group" "lbtg" {
  name     = "terraform-lbtg"
  port     = 80
  protocol = "tcp"
  vpc_id   = aws_vpc.myvpc.id
}

resource "aws_lb_target_group_attachment" "tg-attach" {
    target_group_arn = aws_lb_target_group.lbtg.arn
    target_id = "i-04ebd3c234e84cfae"
    port = "80"
}

resource "aws_lb_listener" "lblis" {
    load_balancer_arn = aws_lb.Nlb.arn
    port = "80"
    protocol = "tcp"
}


  default_action = { 
    type             = "forward"
    target_group_arn = aws_lb_target_group.lbtg.arn
  }
}

