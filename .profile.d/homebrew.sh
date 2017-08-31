case $OSTYPE in
  darwin*)
    export HOMEBREW_CASK_OPTS='--appdir=~/Applications'
    export PATH=/opt/homebrew/bin:$PATH
    export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/homebrew/lib/pkgconfig:/usr/lib/pkgconfig:/usr/X11/lib/pkgconfig
    export PKG_CONFIG_PATH=/opt/homebrew/opt/libffi/lib/pkgconfig:$PKG_CONFIG_PATH
    export CPPFLAGS='-I/opt/homebrew/include'
    export LDFLAGS='-L/opt/homebrew/opt/libffi/lib -L/opt/homebrew/lib'
    ;;
esac
