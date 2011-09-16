#!/bin/bash


SKEY_WARN_LEVEL=${SKEY_WARN_LEVEL:-3}

left=$((`skeyinfo | cut -d ' ' -f 4` + 1))
if [ $left -le 0 ]; then
    echo "$(tput setaf 1)***********************************************$(tput sgr0)"
    echo "$(tput setaf 1)*$(tput sgr0) You $(tput setaf 1)$(tput bold)ABSOLUTELY MUST$(tput sgr0) run $(tput bold)skeyinit$(tput sgr0) right now"'!'" $(tput setaf 1)*$(tput sgr0)"
    echo "$(tput setaf 1)***********************************************$(tput sgr0)"
    echo "Press <Enter> to continue..." && read
elif [ $left -le $SKEY_WARN_LEVEL ]; then
    echo "$(tput setaf 3)*$(tput sgr0) You have $(tput setaf 2)$(tput bold)2$(tput sgr0) one-time passwords left."
    echo "Press <Enter> to continue..." && read
fi
