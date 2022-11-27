#!/bin/bash

if [ -z $@ ]
then
  echo -e "geog360\ncrop330\nfw315\nbb450\nyoutube"
else
  case $1 in 
    geog360)
      firefox https://canvas.oregonstate.edu/courses/1891638;;
    crop330)
      firefox https://canvas.oregonstate.edu/courses/1886509;;
    fw315)
      firefox https://canvas.oregonstate.edu/courses/1886629;;
    bb450)
      firefox https://canvas.oregonstate.edu/courses/1885591;;
    youtube)
      firefox https://youtube.com;;
    *);;
  esac
fi
