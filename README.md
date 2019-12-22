Test Github Actions

- feature-one
- feature-two
- feature-three

test of pushing existing tag

- feature-docker
- fix-asset-type
- feature-imgjob

# Notes

beginning docker image build where image repo is deduced by lowercasing standard env variables

```yaml
- name: build docker image
run: |
  LOWER_GH_REPO=$(echo "$GITHUB_REPOSITORY" | tr '[:upper:]' '[:lower:]')
  DOCKER_IMAGE=$DOCKER_REGISTRY/$LOWER_GH_REPO/ghat
  DOCKER_IMAGE_SHA=$DOCKER_IMAGE:$GITHUB_SHA
  docker build -t $DOCKER_IMAGE_SHA .
  echo "::set-env name=DOCKER_IMAGE::$DOCKER_IMAGE"
  echo "::set-output name=docker_image::$DOCKER_IMAGE"
  echo "::set-env name=DOCKER_IMAGE_SHA::$DOCKER_IMAGE_SHA"
  echo "::set-output name=docker_image_sha::$DOCKER_IMAGE_SHA"
```
