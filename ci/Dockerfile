FROM alpine:3.4 as binaries
RUN apk --no-cache add ca-certificates wget
RUN mkdir /tmp/binaries
RUN true \
  && wget -qO /tmp/binaries/meta4 "https://github.com/dpb587/metalink/releases/download/v0.2.0/meta4-0.2.0-linux-amd64" \
  && echo "81a592eaf647358563f296aced845ac60d9061a45b30b852d1c3f3674720fe19  /tmp/binaries/meta4" | sha256sum -c \
  && chmod +x /tmp/binaries/meta4

FROM alpine
RUN apk --no-cache add bash git
COPY --from=binaries /tmp/binaries /usr/local/bin
