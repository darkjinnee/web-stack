#!/usr/bin/env bash

cd $ROOT && eval $(sed 's/^\"\(.*\)\"$/\1/g' <<< $GOLANG_COMMAND)
