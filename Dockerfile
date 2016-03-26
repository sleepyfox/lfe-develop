FROM lfex/lfe

# User management
# Make sure we switch to the correct user/group before doing anything else
ARG user
RUN adduser --disabled-login --gecos "" --uid 1000 --home /home/lfe $user
# RUN echo 'export PS1="\W\$ "' >> /home/lfe/.bashrc

USER $user
WORKDIR /home/lfe
ENV USER $user
CMD ["bash"]
