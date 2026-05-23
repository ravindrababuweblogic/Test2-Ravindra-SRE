# Test2-Ravindra-SRE

A small Java calculator demo prepared for containerized deployment.

## What is in this repo

- Java calculator source in `Simple java - calci`
- Multistage `Dockerfile`
- GitHub Actions CI workflow in `.github/workflows/ci.yml`
- Kubernetes Job manifest in `k8s/job.yaml`

## Run locally

```bash
javac "Simple java - calci"
java Calculator
```

You can also provide values through environment variables:

```bash
CALCULATOR_NUM1=10 CALCULATOR_NUM2=5 CALCULATOR_OPERATOR=+ java Calculator
```

## Build container image

```bash
docker build -t calculator:latest .
```

## Deploy to Kubernetes

Update the values in `k8s/job.yaml`, then apply it:

```bash
kubectl apply -f k8s/job.yaml
```

## Recommended cloud targets

- **Azure**: Azure Container Apps
- **AWS**: ECS Fargate or App Runner
- **GCP**: Cloud Run

If you want, I can next add a registry publish workflow or a Helm chart.
