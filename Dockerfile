FROM node:12-alpine3.15
LABEL "repository"="https://github.com/skillupco/github-tag-action"
LABEL "homepage"="https://github.com/skillupco/github-tag-action"
LABEL "maintainer"="Nick Sjostrom & Skillup"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]
