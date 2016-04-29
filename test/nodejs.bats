#!/usr/bin/env bats

setup() {
  docker history "$REGISTRY/$REPOSITORY:$TAG" >/dev/null 2>&1
  export IMG="$REGISTRY/$REPOSITORY:$TAG"
  export NODEJS_VERSION=$NODEJS_VERSION
  export NPM_VERSION=$NPM_VERSION
  export MAX_SIZE=200000
}

@test "checking image size" {
  run docker run $IMG bash -c "[[ \"\$(du -d0 / 2>/dev/null | awk '{print \$1; print > \"/dev/stderr\"}')\" -lt \"$MAX_SIZE\" ]]"
  [ $status -eq 0 ]
}

@test "It should use Node $NODEJS_VERSION" {
  run docker run $IMG bash -c "node -v | grep $NODEJS_VERSION"
  [ $status -eq 0 ]
}

@test "It should use npm $NPM_VERSION" {
  run docker run $IMG bash -c "npm -v | grep $NPM_VERSION"
  [ $status -eq 0 ]
}
