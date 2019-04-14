FROM ubuntu:18.04

LABEL "name"="Assign Issues"
LABEL "maintainer"="Moreal <dev.moreal@gmail.com>"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="Assign Issues"
LABEL "com.github.actions.description"="Assign users to issues"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="pink"

RUN apt-get update && apt-get install jq -y
COPY encrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]