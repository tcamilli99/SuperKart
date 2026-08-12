cd backend
docker build -t superkart-backend .
cd ../frontend
docker build -t superkart-frontend .
docker network create superkart-network
docker run -d --name backend --network superkart-network -p 7860:7860 superkart-backend
docker run -d --name frontend --network superkart-network -p 8501:8501 superkart-frontend
