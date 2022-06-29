FROM alpine:latest
RUN apk update && \
    apk add bash curl vim git bash-completion

RUN curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > home/root/.bash_git
COPY bashrc /home/root/.bashrc
CMD ["/bin/bash"]