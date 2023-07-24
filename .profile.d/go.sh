case $OSTYPE in
  darwin*)
    export GOPATH=/opt/go
    export GOROOT=/opt/homebrew/opt/go/libexec
    export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
    ;;
esac

export GOPRIVATE="github.com/Conreality"
export GOPRIVATE="github.com/ConrealityCorp,$GOPRIVATE"
export GOPRIVATE="github.com/HaltiaAI,$GOPRIVATE"
