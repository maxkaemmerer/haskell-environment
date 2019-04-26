FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y ghc 
RUN apt-get install -y cabal-install 

RUN cabal update && cabal install hspec

RUN mkdir -p /app/haskell-environment

ADD htest /usr/local/bin

RUN chmod +x /usr/local/bin/htest

RUN chmod -R 777 /app

WORKDIR /app/haskell-environment

CMD tail -f /dev/null