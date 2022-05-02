FROM ubuntu:bionic
RUN apt-get update
RUN apt-get install zip wget -y
RUN wget https://github.com/kyve-org/solana/releases/download/v0.0.0/kyve-solana-linux.zip
RUN unzip kyve-solana-linux
COPY . .
RUN chmod 755 ./kyve-solana-linux
CMD ["sh","run.sh"]