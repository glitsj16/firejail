# Firejail profile for flashpeak-slimjet
# This file is overwritten after every install/update
# Persistent local customizations
include flashpeak-slimjet.local
# Persistent global definitions
include globals.local

# Disable for now, see https://github.com/netblue30/firejail/pull/3688#issuecomment-718711565
ignore whitelist /usr/share/chromium
ignore include whitelist-runuser-common.inc
ignore include whitelist-usr-share-common.inc

nodeny  ${HOME}/.cache/slimjet
nodeny  ${HOME}/.config/slimjet

mkdir ${HOME}/.cache/slimjet
mkdir ${HOME}/.config/slimjet
allow  ${HOME}/.cache/slimjet
allow  ${HOME}/.config/slimjet

# Redirect
include chromium-common.profile
