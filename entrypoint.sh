#!/bin/bash

"$@" > /tmp/output
cat /tmp/output | grep AWS > /tmp/env/aws-vault
