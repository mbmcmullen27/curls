FROM alpine:latest
RUN apk update && \
    apk add bash curl vim git bash-completion

RUN addgroup -S curl && adduser -S croupier -G curl

RUN curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > /home/croupier/.bash_git
COPY bashrc /home/croupier/.bashrc
RUN chown croupier /home/croupier/.bashrc

USER croupier 
WORKDIR /home/croupier
CMD ["/bin/bash"]