#!/bin/bash

# url to be displayed
url0="geog 360"
url1="crop 330"
url2="fw 315"
url3="bb 450"
url4=""

# urls passed to variable
urls="$url0\n$url1\n$url2\n$url3"

selected="$(echo -e "$urls" | rofi -dmenu -p "Select URL")"
case $selected in
    $url0)
      firefox https://canvas.oregonstate.edu/courses/1891638;;
    $url1)
      firefox https://canvas.oregonstate.edu/courses/1886509;;
    $url2)
      firefox https://canvas.oregonstate.edu/courses/1886629;;
    $url3)
      firefox https://canvas.oregonstate.edu/courses/1885591;;
esac
