#!/bin/bash

set -e

function set_output() {
    echo "set-output name=$1::$2"
    echo "::set-output name=$1::$2"
}

function set_output_json() {
    echo "set-output name=$1::${{ toJSON($2) }}"
    echo "::set-output name=$1::${{ toJSON($2) }}"
}

set_output "bool_true" "true"
set_output "bool_false" "false"
set_output_json "json_true" "true"
set_output_json "json_false" "false"
