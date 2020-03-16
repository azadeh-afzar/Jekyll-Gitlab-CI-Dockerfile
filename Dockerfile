FROM azadehafzarhub/gitlab-ci-ruby-build:latest

LABEL maintainer="Mohammad Mahdi Baghbani Pourvahid <MahdiBaghbani@protonmail.com>"

# install node version manager (nvm).
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash

# export paths to bash_profile.
RUN echo "export NVM_DIR='$HOME/.nvm'" >> ~/.bash_profile
RUN echo "[ -s '$NVM_DIR/nvm.sh' ] && \. '$NVM_DIR/nvm.sh'" >> ~/.bash_profile
RUN echo "[ -s '$NVM_DIR/bash_completion' ] && \. '$NVM_DIR/bash_completion'" >> ~/.bash_profile
RUN source ~/.bash_profile

# install nodejs.
RUN nvm install node

# install surge.
RUN npm install --global surge

