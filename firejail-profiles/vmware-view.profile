##quiet

##ignore noexec ${HOME}
##ignore noexec /tmp
noexec /tmp
noexec ${HOME}
noblacklist ${HOME}/.vmware

#include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

##allusers
#apparmor
#caps.drop all
##caps.keep CAPS
##hostname NAME
# CLI only
##ipc-namespace
# breaks sound and sometime dbus related functions
#machine-id
# 'net none' or 'netfilter'
#net none
#netfilter
#no3d
#nodbus
nodvd
#nogroups
nonewprivs
noroot
nosound
notv
#nou2f
novideo

# Remove each unneeded protocol:
#  - unix is usually needed
#  - inet,inet6 only if internet access is required (see 'net none'/'netfilter' above)
#  - netlink is rarely needed
#  - packet almost never
protocol unix,inet,inet6
#seccomp
##seccomp !chroot
##seccomp.drop SYSCALLS (see syscalls.txt)
#shell none
#tracelog
# Prefer 'x11 none' instead of 'blacklist /tmp/.X11-unix' if 'net none' is set
##x11 none

disable-mnt
##private
# It's common practice to refer to the python executable(s) in private-bin with `python*`, which covers both v2 and v3
#private-bin PROGRAMS
private-cache
private-dev
private-etc firejail,ca-certificates,ssl,pki,resolv.conf,hosts,,ld.so.cache,ld.so.conf,ld.so.conf.d,ld.so.preload,locale,locale.alias,locale.conf,localtime
#  Sound: alsa,asound.conf,pulse,machine-id
#  GUI: fonts,pango,X11
#  GTK: dconf,gconf,gtk-2.0,gtk-3.0
#  Qt: Trolltech.conf
#  KDE: kde4rc,kde5rc
#  3D: drirc,glvnd,bumblebee,nvidia
#  D-Bus: dbus-1,machine-id
##private-lib LIBS
##private-opt NAME
#private-tmp
##writable-etc
##writable-run-user
writable-var
##writable-var-log

##env VAR=VALUE
#memory-deny-write-execute
##noexec PATH
read-only ${HOME}
read-only /etc/
##join-or-start NAME
