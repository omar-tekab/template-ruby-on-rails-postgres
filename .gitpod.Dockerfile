# Use the gitpod/workspace-ruby-3.0 base image
FROM gitpod/workspace-ruby-3.0

# Switch to the 'gitpod' user
USER gitpod

# Install Ruby version 3.0.0 and set it as the default
RUN _ruby_version=3.0.0 \
    && printf "rvm_gems_path=/home/gitpod/.rvm\n" > ~/.rvmrc \
    && bash -lc "rvm reinstall ${_ruby_version} && \
                 rvm use ${_ruby_version} --default" \
    && printf "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc \
    && printf "{ rvm use \$(rvm current); } >/dev/null 2>&1\n" >> "$HOME/.bashrc.d/70-ruby"
