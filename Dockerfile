FROM sagemath/sagemath

RUN sage -pip install jupyterlab

COPY --chown=sage:sage . ${HOME}