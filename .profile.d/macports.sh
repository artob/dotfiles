case $OSTYPE in
  darwin*)
    export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:$PATH
    export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/local/lib/pkgconfig:/usr/lib/pkgconfig:/usr/X11/lib/pkgconfig
    ;;
esac
