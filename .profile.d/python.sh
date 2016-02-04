case $OSTYPE in
  darwin*)
    export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin
    ;;
esac

alias markdoc-init='markdoc init doc --vcs-ignore git'
alias markdoc-build='markdoc build'
alias markdown='markdown -x extra'
