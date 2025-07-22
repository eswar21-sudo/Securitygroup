name        = "EKS-SG"
description = "Allow HTTP and SSH traffic"
#vpc_id      = "vpc-0abcd1234efgh5678"

ingress_rules = [
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH access from anywhere"
  },
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP access from anywhere"
  }
]

# Optional: if you want custom egress rules
egress_rules = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }
]

tags = {
  Environment = "dev"
  Project     = "demo-app"
  Owner       = "team-infra"
}
