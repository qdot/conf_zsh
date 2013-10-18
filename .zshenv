# rcsstub
#
# Stub for all .z* files; actual content comes from a directory
#
# Copyright � 1994-2008 martin f. krafft <madduck@madduck.net>
# Released under the terms of the Artistic Licence 2.0
#
# Source repository: git://git.madduck.net/etc/zsh.git
#

if [[ -o rcs ]]; then
  source $ZDOTDIR/logging
  source $ZDOTDIR/util
  source $ZDOTDIR/sourcedir

#  __do_debug && set -x || :

  _DIR=$ZDOTDIR/${${(%):-%1N}#.}
  sourcedir $_DIR

  if [[ -d $_DIR/parts.d ]]; then
    sourcedir $_DIR/parts.d
  fi

  unset _DIR

#  __do_debug && set +x || :
fi


# vim:ft=zsh
