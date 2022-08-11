#!/bin/bash

cat /etc/shells | grep  "/usr" | awk 'BEGIN { FS="/" } {print $4}'
