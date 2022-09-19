FROM sagemath/sagemath:9.5

COPY --chown=sage:sage . ${HOME}