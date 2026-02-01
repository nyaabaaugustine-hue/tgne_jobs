#!/bin/bash

echo "=== Testing Docker Build Locally ==="

# Build the Docker image
echo "Building Docker image..."
docker build -f Dockerfile.simple -t jobbox-test .

if [ $? -eq 0 ]; then
    echo "✅ Docker build successful!"
    
    # Test running the container
    echo "Testing container startup..."
    docker run -d -p 8080:80 --name jobbox-test-container jobbox-test
    
    if [ $? -eq 0 ]; then
        echo "✅ Container started successfully!"
        echo "🌐 Test at: http://localhost:8080"
        echo ""
        echo "To stop the test container:"
        echo "docker stop jobbox-test-container"
        echo "docker rm jobbox-test-container"
        echo "docker rmi jobbox-test"
    else
        echo "❌ Container failed to start"
    fi
else
    echo "❌ Docker build failed!"
    echo "Check the error messages above"
fi