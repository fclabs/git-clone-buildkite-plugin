#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

@test "Echos repository" {
  export respository="git@github.com:fclabs/git-clone-buildkite-plugin.git"
  export branch="test"

  stub git clone ${repository}

  run "$PWD/hooks/post-checkout"

  unstub git

  assert_success
  assert_output --partial "cloning repository git@github.com:fclabs/git-clone-buildkite-plugin.git"
}