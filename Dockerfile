FROM google/cloud-sdk:alpine

LABEL name="gsutil"
LABEL version="1.0.0"
LABEL com.github.actions.name="gsutil CLI"
LABEL com.github.actions.description="GitHub action with gsutil command"
LABEL com.github.actions.color="green"
LABEL com.github.actions.icon="cloud"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
