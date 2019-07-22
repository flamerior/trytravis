#!/bin/bash
set -e

# Install requirements
cd ansible && ansible-galaxy install -r environments/stage/requirements.yml && cd ..

# Run InSpec
inspec exec infra_tests/tests
