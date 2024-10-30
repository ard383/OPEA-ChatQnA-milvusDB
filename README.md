
1.Set Up the Docker Compose File

#Combining the services from each repository into a single docker-compose.yaml file. Here is an overview of the required services:
Milvus Vector Store: A service to store and manage the vector embeddings.
MinIO: Object storage used by Milvus to store data files.
Milvus Standalone: A standalone deployment of Milvus to enable vector storage and retrieval.
Embedding Service: Provides embeddings for queries and documents.
Re-ranking Service: Re-ranks retrieved results to improve accuracy.
Retriever Service: Finds relevant documents for a given query.
TGI Service: Handles LLM model inference for generating answers.
ChatQnA Backend Server: Manages the application’s backend logic.
Configure each service block according to the settings in their respective repositories.'''

1.2 Configuring Environment Variables

#Define the necessary environment variables in a setup_env.sh script. Here’s a list of required variables and their descriptions:

HUGGINGFACEHUB_API_TOKEN: API token for accessing Hugging Face models.
EMBEDDING_MODEL_ID: Model ID for the embedding service.
INDEX_NAME: Name of the index in Milvus.
RERANK_MODEL_ID: Model ID for the re-ranking service.
LLM_MODEL_ID: Model ID for the language model used in inference.
NGINX_PORT: Port number for the NGINX server.
Additional proxy and network configurations as needed.

1.3 Run the Setup Script

#Execute the setup_env.sh script to export the required environment variables:

source setup_env.sh

1.4 Start the Pipeline

#Use Docker Compose to build and start all services:

docker-compose up -d

1.5 Verify the Setup

#Verify that each service is running by checking their health endpoints, or run the following commands to check the status of each container:

docker-compose ps

#To view logs for individual containers, use:

docker logs <container-id>

#Note: faced challenges / issues after the executions

Embedding Error:

export your_embedding=$(python3 -c "import random; embedding = [random.uniform(-1, 1) for _ in range(768)]; print(embedding)")
curl -X POST "http://${host_ip}:7000/v1/retrieval" \
     -d "{\"text\":\"test\",\"embedding\":${your_embedding}}" \
     -H 'Content-Type: application/json'


ChatQnA Response Error:
curl "http://${host_ip}:8888/v1/chatqna" \
     -H "Content-Type: application/json" \
     -d '{"messages": "What is the revenue of Nike in 2023?"}'
	 
 NGINX Service:
 curl "http://${host_ip}:${NGINX_PORT}/v1/chatqna" \
     -H "Content-Type: application/json" \
     -d '{"messages": "What is the revenue of Nike in 2023?"}'
