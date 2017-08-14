#!/user/bin/env bats

setup() {
  vagrant up
}

teardown() {
  vagrant destroy -f
}

@test "Docker should be installed on the vagrant instance" {
  run vagrant ssh -c "docker run hello-world"
  [[ "$output" == *"Hello from Docker"* ]]
}

@test "Web application running on port 8080" {
  curl "http://192.168.33.10:8080"
}
