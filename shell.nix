with import (import ./pinned-nixpkgs.nix) {};

let thisghc = haskell.packages.ghc865.ghcWithPackages
        (p: with p; [ cabal-install
                      ghcid
                      QuickCheck
                      ad
                      aeson
                      async
                      attoparsec
                      bench
                      binary
                      brick
                      bytestring
                      cassava
                      containers
                      criterion
                      deepseq
                      dhall
                      directory
                      distributive
                      dlist
                      ekg
                      fgl
                      filepath
                      free
                      hedgehog
                      lens
                      linear
                      logict
                      mtl
                      network
                      optparse-applicative
                      pandoc
                      parallel
                      process
                      random
                      reflection
                      scientific
                      servant
                      servant-client
                      servant-server
                      shake
                      smallcheck
                      statistics
                      stm
                      text
                      text
                      time
                      transformers
                      unix
                      vector
                      wai
                      warp
                      warp-tls
                    ]
        );
in runCommand "haskell-bootcamp-root-env"
{
    buildInputs = [ texlive.combined.scheme-full
                    thisghc
                  ];
} ""
