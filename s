#!/bin/bash

#declare an associative array $searchplatform and fill it with our possible search sites and urls
declare -A searchplatform
searchplatform=( ["google"]="https://www.google.com/search?q=" ["scholar"]="https://scholar.google.com/scholar?hl=en&as_sdt=0%2C10&q=")


#turn our search string into valid search query syntax
searchstring=$(echo "$2" | sed -r 's/ /+/g')

#concatenate our url
address="${searchplatform[$1]}""$searchstring"

#Open our url in firefox
firefox "$address"