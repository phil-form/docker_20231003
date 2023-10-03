FROM debian:11

RUN apt-get update -yq \
    && apt-get install curl gnupg git -yq
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sh - &&\
    apt-get install -y nodejs npm

# sudo apt purge nodejs npm
# sudo apt autoremove

RUN apt-get clean -y

# using local script file
COPY start_server /bin/start_server
RUN chmod 750 /bin/start_server

ADD ./app /app/
WORKDIR /app

RUN npm install -g @angular/cli

# RUN ng new app --directory ./ --skip-git

EXPOSE 4200
# VOLUME /app # create a random UID named volume use full for persisting files eg: databases

# CMD pwd && ls && ng serve --host 0.0.0.0
CMD pwd && ls && cat /bin/start_server && start_server

