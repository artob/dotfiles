case $OSTYPE in
  darwin*)
    eval "$(/opt/homebrew/bin/brew shellenv)"
    #export HOMEBREW_CASK_OPTS='--appdir=~/Applications'
    #export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$HOMEBREW_PREFIX/pkgconfig:/usr/lib/pkgconfig:/usr/X11/lib/pkgconfig
    #export PKG_CONFIG_PATH=$HOMEBREW_PREFIX/opt/libffi/lib/pkgconfig:$PKG_CONFIG_PATH
    #export CPPFLAGS="-I$HOMEBREW_PREFIX/include"
    #export LDFLAGS="-L$HOMEBREW_PREFIX/opt/libffi/lib -L$HOMEBREW_PREFIX/lib"
    ;;
esac
