#!/bin/sh
ARGOCD_APP_NAME=vllm-mistral-7b

# Load environment variables
DATA_SCIENCE_PROJECT_NAMESPACE="embeddings"

  # --set model.accelerator.productName="NVIDIA-A10G" \
  # --set model.accelerator.min=1 \
  # --set model.accelerator.max=1 \

helm template . --name-template ${ARGOCD_APP_NAME} \
  --set createNamespace="true" \
  --set createSecret="true" \
  --set dataScienceProjectNamespace=${DATA_SCIENCE_PROJECT_NAMESPACE} \
  --set dataScienceProjectDisplayName=${DATA_SCIENCE_PROJECT_NAMESPACE} \
  --set model.root=nomic-ai \
  --set model.id=nomic-embed-text \
  --set model.name=nomic-embed \
  --set model.displayName="Nomic AI Tesxt" \
  --set model.accelerator.productName="NVIDIA-A10G" \
  --set model.accelerator.min=1 \
  --set model.accelerator.max=1 \
  --include-crds