FROM node:latest
EXPOSE 5432 4321 35729
RUN npm i -g gulp@4 yo @pnp/generator-spfx@latest --unsafe-perm 

VOLUME /usr/app/spfx
WORKDIR /usr/app/spfx

RUN useradd --create-home --shell /bin/bash spfx && \
    chown -R spfx:spfx /usr/app/spfx && \
	chown -R spfx:spfx /usr/local/lib/node_modules

USER spfx
CMD /bin/bash