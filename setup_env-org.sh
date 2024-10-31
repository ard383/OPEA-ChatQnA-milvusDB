devcloud@ubuntu:~/milvus$ cat set_env.sh
#!/usr/bin/env bash

# Copyright (C) 2024 Intel Corporation
# SPDX-License-Identifier: Apache-2.0


export host_ip=$(hostname -I | awk '{print $1}')
export HUGGINGFACEHUB_API_TOKEN="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"
export https_proxy=''
export http_proxy=''
export no_proxy=''
export HF_TOKEN="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"
export EMBEDDING_MODEL_ID="BAAI/bge-base-en-v1.5"
export RERANK_MODEL_ID="BAAI/bge-reranker-base"
export LLM_MODEL_ID="Intel/neural-chat-7b-v3-3"
export INDEX_NAME="rag-milvus"
export LOGFLAG="true"