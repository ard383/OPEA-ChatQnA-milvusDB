#!/usr/bin/env bash

# Copyright (C) 2024 Intel Corporation
# SPDX-License-Identifier: Apache-2.0

# Hugging Face API token used for authentication with Hugging Face models and services
export HUGGINGFACEHUB_API_TOKEN="${HUGGINGFACEHUB_API_TOKEN}"

# Embedding model ID for embedding service
export EMBEDDING_MODEL_ID="BAAI/bge-base-en-v1.5"

# Comma-separated list of IPs or domains that should bypass the proxy
export no_proxy="localhost,127.0.0.1"

# HTTP proxy server URL; leave empty if not using a proxy
export http_proxy=''

# HTTPS proxy server URL; leave empty if not using a proxy
export https_proxy=''

# Name of the Milvus index used by the retriever service
export INDEX_NAME="Chatqna-milvus"

# Model ID for re-ranking service
export RERANK_MODEL_ID="BAAI/bge-reranker-base"

# Model ID for LLM inference used by the ChatQnA backend server
export LLM_MODEL_ID="Intel/neural-chat-7b-v3-3"

# Flag to enable (1) or disable (0) logging in the ChatQnA backend server
export LOGFLAG="1"

# IP address of the frontend (UI) service
export FRONTEND_SERVICE_IP="chatqna-xeon-ui-server"

# Name of the backend service for ChatQnA
export BACKEND_SERVICE_NAME="chatqna"

# Host IP for the main backend server for ChatQnA
export MEGA_SERVICE_HOST_IP="chatqna-xeon-backend-server"

# Port for the NGINX server to expose, default is 80
export NGINX_PORT="80"
