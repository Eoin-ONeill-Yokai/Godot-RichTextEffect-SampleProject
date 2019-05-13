#!/bin/bash

project_dir=$(dirname "$0")

if [ "$1" == "edit" ]; then
        args+="-e"
fi

${project_dir}/../../bin/godot.x11.* --path ${project_dir} ${args}
