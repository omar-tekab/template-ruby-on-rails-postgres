FROM gitpod/workspace-ruby-3:2022-01-28-08-49-12
USER gitpod

# Install Ruby version 2.7.6 and set it as default
RUN _ruby_version=ruby-3.0.0 \
    && rvm get master \
    && printf "rvm_gems_path=/home/gitpod/.rvm\n" > ~/.rvmrc \
    && bash -lc "rvm reinstall ${_ruby_version} && \
                 rvm use ${_ruby_version} --default" \
    && printf "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc \
    && printf "{ rvm use \$(rvm current); } >/dev/null 2>&1\n" >> "$HOME/.bashrc.d/70-ruby"
