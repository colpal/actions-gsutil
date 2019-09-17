#!/bin/sh

set -e

if [ -z "${GCP_CREDENTIALS-}" ]; then
   echo "GCP_CREDENTIALS not found. Exiting."
   exit 1
fi

echo "$GCP_CREDENTIALS" | base64 -d > /tmp/service_account.json

gcloud auth activate-service-account --key-file=/tmp/service_account.json

sh -c "gsutil $*"
