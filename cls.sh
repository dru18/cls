#!/bin/bash

if [ -z $1 ]; then
  ls | toilet -f term --gay
else
  if [ $1 == '--help' ] || [ $1 == '-h' ]; then cat $HOME/.cls/About/Help
  else
    if [ $1 == '--show' ] || [ $1 == '-s' ]; then cat $HOME/.cls/About/Info |cowsay -f tux | toilet -f term --gay
    else
      if [ $1 == '--version' ] || [ $1 == '-v' ]; then cat $HOME/.cls/About/Release | toilet -f term -F border --gay
      else
        ls $1 $2 | toilet -f term --gay
      fi
    fi
  fi
fi
