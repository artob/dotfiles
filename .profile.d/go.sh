case $OSTYPE in
  darwin*)
    export GOPATH=/opt/go
    export GOROOT=/opt/homebrew/opt/go/libexec
    export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
    ;;
esac

export GOPRIVATE="github.com/aurora-is-near,github.com/conreality"
