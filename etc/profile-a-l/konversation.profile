# Firejail profile for konversation
# Description: User friendly Internet Relay Chat (IRC) client for KDE
# This file is overwritten after every install/update
# Persistent local customizations
include konversation.local
# Persistent global definitions
include globals.local

nodeny  ${HOME}/.config/konversationrc
nodeny  ${HOME}/.config/konversation.notifyrc
nodeny  ${HOME}/.kde/share/config/konversationrc
nodeny  ${HOME}/.kde4/share/config/konversationrc
nodeny  ${HOME}/.local/share/kxmlgui5/konversation

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-shell.inc
include disable-xdg.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nogroups
noinput
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp
shell none
tracelog

private-bin kbuildsycoca4,konversation
private-cache
private-dev
private-tmp

# memory-deny-write-execute
