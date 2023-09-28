FROM gitpod/workspace-ruby-3.0:2022-06-17-15-14-36
USER gitpod

RUN Bash -lc "rvm reinstall ruby-3.0.0 && \
    rvm use ruby-3.0.0 --default" \