resource "aws_lb_target_group" "app1_tg" {
  name        = "app1-target-group"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.app1.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "App1TargetGroup"
    Service = "App1"
    Owner   = "User"
    Project = "Web Service"
  }
}

/*resource "aws_lb_target_group" "app1_tg_443" {
  name        = "app1tg443"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.app1.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "app1tg443"
    Service = "App1"
    Owner   = "JDollas"
    Project = "Kamehameha"
  }
}

*/
