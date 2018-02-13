FROM fedora:latest

RUN dnf -y update && \
    dnf -y install \
        golang \
        git \
        python \
        python-pip \
        sudo \
        curl \
        man \
        net-tools \
        iputils \
        neovim \
        tig \
        docker-vim \ 
	tmux && \
    dnf clean all

# Add user
RUN useradd --user-group \
            --create-home \
            --shell /bin/bash \
            jdetiber && \
    echo 'jdetiber ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/jdetiber
# Switch to user and home directory
USER jdetiber
ENV HOME /home/jdetiber
WORKDIR /home/jdetiber

COPY . /home/jdetiber/src/dotfiles

RUN mkdir .ssh && \
    sudo chown -R jdetiber.jdetiber /home/jdetiber && \
    cd src/dotfiles && \
    ./install

ENTRYPOINT ["/bin/bash"]
CMD ["--login"]
