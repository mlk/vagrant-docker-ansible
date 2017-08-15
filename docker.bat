#!/user/bin/env bats

setup() {
  APPLICATION_NAME="test_${RANDOM}_app"
  docker build provisioning/www/ -t "${APPLICATION_NAME}:latest"
  docker run --name ${APPLICATION_NAME} -d "${APPLICATION_NAME}:latest"
}

teardown() {
  docker stop ${APPLICATION_NAME}
  docker rmi  -f "${APPLICATION_NAME}:latest"
}

@test "Application returns static content" {
  run docker run --link "${APPLICATION_NAME}"  uzyexe/curl -s "http://${APPLICATION_NAME}:80 -O -"
  [ "$output" == "Hello World" ]
}
