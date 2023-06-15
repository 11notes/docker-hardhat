# :: Header
  FROM 11notes/node:stable
  ENV APP_VERSION=2.15.0
  ENV APP_ROOT=/hardhat

# :: Run
  USER root

  # :: install
    RUN set -ex; \
      mkdir -p ${APP_ROOT}/etc; \
      cd ${APP_ROOT}; \
      npm install --save --prefix ${APP_ROOT} \
        hardhat@${APP_VERSION}

  # :: copy root filesystem changes and add execution rights to init scripts
    COPY ./rootfs /
    RUN set -ex; \
      chmod +x -R /usr/local/bin

  # :: change home path for existing user and set correct permission
    RUN set -ex; \
      chown -R 1000:1000 \
        ${APP_ROOT};

# :: Volumes
  VOLUME ["${APP_ROOT}/etc"]

# :: Start
  USER docker