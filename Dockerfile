FROM alpine:latest

RUN apk add --no-cache curl

ENV EARNFM_TOKEN=79ef1a6d-2f66-47f9-95ae-20198c9cf464

ENTRYPOINT ["sh", "-c", "curl -sL https://earn.fm/install.sh | bash -s -- --token $EARNFM_TOKEN"]
