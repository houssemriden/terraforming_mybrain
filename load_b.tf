resource "aws_lb" "test" {
  name="loadbalancingmylife"
  internal=false
  load_balancer_type="application"
  security_groups = []
  
  
  
}
