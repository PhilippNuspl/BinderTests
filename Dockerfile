FROM sagemath/sagemath:9.5

# Inspired from https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

ENV NB_USER=sage
ENV HOME /home/sage

# Upgrade to jupyter 5.* as required by mybinder and install additional kernels
# This will eventually be lifted upstream to sagemath/sagemath
# RUN sage -pip install "notebook>=5" "ipykernel>=4.6"

USER root

# Make sure the contents of our repo are in ${HOME}
# COPY . ${HOME}
COPY --chown=sage:sage . ${HOME}
USER ${NB_USER}