# Postmortem Report

## Challenges Faced
1. **AMI ID Error**: Invalid AMI ID due to region mismatch
   - Fix: Fetched the latest Amazon Linux 2 AMI using AWS CLI

2. **kubectl Timeout**: Network connectivity issue
   - Fix: Opened inbound port 443 in the security group

3. **ALB URL Delay**: Ingress propagation time
   - Fix: Manually checked DNS name in AWS Console

## Learnings
- Using dynamic AMI fetching (SSM Parameter) is more reliable
- Focus on configuring network security groups properly
- Allow 5-10 minutes for ALB propagation