#!/bin/sh

cd "$(realpath $(dirname "$0"))"
sh do down &
sh do local
