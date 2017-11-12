FROM ruby:2.4

ENV VERSION=0.3.9

RUN gem install cfn-nag --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cfn_nag_scan"]
CMD ["--help"]
