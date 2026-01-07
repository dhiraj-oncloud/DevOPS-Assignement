# Wobot.ai DevOps Assignment ✅

## Status: 100% Complete

### Infrastructure (40 points)
- ✅ VPC (vpc-0de0bc3a160f31f9d)
- ✅ EKS Cluster (my-eks-cluster)
- ✅ Bastion + Utility EC2 Instances
- ✅ ECR (977098991025.dkr.ecr.us-east-1.amazonaws.com/my-backend-repo)
- ✅ Terraform modules

### Docker (25 points)
- ✅ Multi-stage builds
- ✅ Non-root user
- ✅ Optimized images
- ✅ Pushed to ECR

### Kubernetes (35 points)
- ✅ 2 microservices (backend:3001, frontend:3000)
- ✅ HPA (2-5 pods @ 70% CPU)
- ✅ Ingress with HTTP routing (/api → backend, / → frontend)
- ✅ Canary deployment ready (v1 + v2 files)

### Documentation (10 points)
- ✅ Architecture diagram
- ✅ Demo video
- ✅ Postmortem

## Architecture
Internet → ALB Ingress (HTTP) → EKS Cluster (2 Nodes)
↓
Backend Pods (2) + Frontend Pods (2)
↓
VPC + Subnets


## Commands Used
```bash
# Infrastructure
terraform init,, terraform validate && terraform apply

# Deploy
kubectl apply -f k8s/

# Verify
kubectl get pods,svc,ingress,hpa

##Access Application
ALB URL: http://test.example.com----------(Frontend)
API: http://test.example.com/api----------(Backend)



