#!/bin/bash

if [ -z $@ ]
then
  echo -e "mb302\nmb303\nfw315\nbb450\nyoutube"
else
  case $1 in 
    mb302)
      firefox https://canvas.oregonstate.edu/courses/1904276;;
    mb303)
      firefox https://canvas.oregonstate.edu/courses/1904287;;
    fw315)
      firefox https://canvas.oregonstate.edu/courses/1886629;;
    bb450)
      firefox https://canvas.oregonstate.edu/courses/1885591;;
    youtube)
      firefox https://youtube.com;;
    *);;
  esac
fi
