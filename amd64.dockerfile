# :: Header
	FROM 11notes/node:lts

# :: Run
	USER root

	# :: install
		RUN set -ex; \
			npm install --save --prefix /node \
				hardhat;

  # :: copy root filesystem changes
    ADD --chown=1000:1000 ./rootfs /
    RUN set -ex; chmod +x -R /usr/local/bin

  USER nginx