FROM ubuntu

RUN apt update && \
    apt install -y curl && \
    rm -rf /var/lib/apt/lists/*
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/bin/kubectl

ENTRYPOINT ["/usr/bin/kubectl"]