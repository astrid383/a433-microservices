DOCKER_HUB_USER="23pstars"
DOCKER_HUB_IMAGE_PATH="$DOCKER_HUB_USER/shipping-service:latest"

docker build . -t $DOCKER_HUB_IMAGE_PATH

if [ -z "$DOCKER_HUB_PASS" ]; then
  read -p "Enter Docker Hub Password ($DOCKER_HUB_USER) : " DOCKER_HUB_PASS
fi

echo $DOCKER_HUB_PASS | docker login -u $DOCKER_HUB_USER --password-stdin

docker push $DOCKER_HUB_IMAGE_PATH
