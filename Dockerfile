ARG VARIANT=3.10-bullseye

FROM python:${VARIANT}

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

ENV HOST=0.0.0.0
ENV PORT=8000

WORKDIR /usr/src/app

RUN groupadd --gid ${USER_GID} ${USERNAME} \
    && useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME} \
    && chown -R ${USERNAME} /usr/src/app \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

USER ${USERNAME}

COPY . .
RUN pip install -r requirements.txt

CMD [ "python", "manage.py", "runserver", "${HOST:-127.0.0.1}", "${PORT:-8000}" ]
