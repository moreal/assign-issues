FROM python:3

LABEL "name"="Assign Issues"
LABEL "maintainer"="Moreal <dev.moreal@gmail.com>"
LABEL "version"="0.0.1"

LABEL "com.github.actions.name"="Assign Issues"
LABEL "com.github.actions.description"="Assign users to issues"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="pink"

COPY run.py /run.py

ENTRYPOINT ["/run.py"]