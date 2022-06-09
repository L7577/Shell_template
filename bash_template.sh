#!/bin/bash
#
# This is a template for writing a new bash (/bin/bash) script
#
set -e
set -u
# if need debug this script , use set -x
#set -x
#set -o pipefail
# if use set -o pipefail , can't run with sh command and Dockerfile RUN 
#------------------------------
readonly ROOT=ON
# if don't need root,change it to OFF

#-------------------------------

command_exists() {
    command -v "$@" > /dev/null 2>&1
}

err(){
    echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

usage(){
  cat << EOF
Usage: bash $0 [help] ...

help:    this message
 *  : 	 do nothing

Examples:

EOF
}

need_root(){
  if [[ "$1" == "ON" ]];then
      if [[ "$(id -un 2>/dev/null)" == "root" ]];then
           true
      else
           false
      fi
  elif [[ "$1" == "OFF" ]];then
      true 
  else 
      err "The variable: ROOT in the script is set incorrectly, please check it" 
      exit 1 
  fi
}

#--------------------------------


main(){
  case "$1" in
	help) usage ; exit 0;;
	*)
	  usage;
          ;;
  esac
}



if [[ "${BASH_SOURCE[0]}" == "${0}" ]];then
   if need_root ${ROOT} ;then
      if [[ "$#" != "0" ]];then
        main $@
      else
        err " No input!  Usage: bash $0 [help] ... "
      fi
   else
       err " This bash script need root privileges.  Please use root user or sudo command !"
   fi
fi

