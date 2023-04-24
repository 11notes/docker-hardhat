# :: Header
	FROM 11notes/node:lts

# :: Run
	USER root

	# :: install
		RUN set -ex; \
      mkdir -p /hardhat/etc; \
			cd /hardhat; \
			npm install --save --prefix /hardhat \
				hardhat

  # :: copy root filesystem changes
    ADD --chown=1000:1000 ./rootfs /
    RUN set -ex; chmod +x -R /usr/local/bin

  # :: docker -u 1000:1000 (no root initiative)
    RUN set -ex; \
        chown -R node:node \
          /hardhat

# :: Volumes
	VOLUME ["/hardhat/etc"]

  USER node