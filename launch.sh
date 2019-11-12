#!/bin/bash

project_dir=$(dirname "$0")

if [ "$1" == "edit" ]; then
        args+="-e "
fi

if [ "$1" == "perf" ]; then
	perf record --call-graph dwarf -o perf.data ${project_dir}/../../bin/godot.x11.* --path ${project_dir} ${args}
	hotspot perf.data
	rm perf.data
else
	${project_dir}/../../bin/godot.x11.* --path ${project_dir} ${args}
fi
