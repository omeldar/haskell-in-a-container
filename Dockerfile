FROM haskell:9.8.1-buster
RUN cabal update
WORKDIR /haskellenv
CMD ["/bin/bash"]