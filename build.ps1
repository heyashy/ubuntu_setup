# Build the Dockerfile
docker build -t myimage .

# Run the container with --it flag
docker run --privileged -it --rm myimage

# Delete the container on exit
docker prune -f

