#!/bin/bash
dependency-check -s . --project GHA-ODC -o dcheck_report.xml
if grep dcheck_report.xml -e "<vulnerability source"; then
   exit 1
else
   exit 0
fi
