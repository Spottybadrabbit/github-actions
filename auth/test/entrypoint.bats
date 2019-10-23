#!/usr/bin/env bats
# Copyright (c) 2018 GitHub, Inc. and contributors
# Copyright 2019 Google LLC

# Use of this source code is governed by an MIT-style
# license that can be found in the LICENSE file or at
# https://opensource.org/licenses/MIT.

PATH="$PATH:$BATS_TEST_DIRNAME/bin"

function setup() {
  # Ensure GITHUB_WORKSPACE is set
  export GITHUB_WORKSPACE='.'
}

@test "entrypoint runs successfully" {
  run gcloud help
  echo "$output"
  [ "$status" -eq 0 ]
}
