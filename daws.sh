#!/usr/bin/env bash
tty=
[[ -t 0 ]] && tty=--tty

env_keys=
for var in $(env); do
	[[ $var =~ ^(LC_|PATH|SHELL|TERM|PYTHONPATH|USER|HOME|PWD) ]] && continue
	env_keys="$env_keys --env=${var%%=*}"
done

docker run \
	--interactive \
	$tty \
	--rm \
	--net host \
	--user "$(id -u):$(id -g)" \
	--volume "$PWD:/src:rw" \
	--workdir /src \
	$env_keys \
	neochrome/daws:latest \
	$@

exit $?
