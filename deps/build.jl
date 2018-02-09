using BinDeps

@BinDeps.setup 

const OPENJPEG_VERSION = "v2.3.0"
privides(Sources, URI("https://github.com/uclouvain/openjpeg/releases/download/v2.3.0/openjpeg-$(OPENJPEG_VERSION)-linux-x86_64.tar.gz"))
