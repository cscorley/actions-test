#!/bin/bash

set -e

function set_output() {
    echo "set-output name=$1::$2"
    echo "::set-output name=$1::$2"
}

set_output "bool_true" "true"
set_output "bool_false" "false"
