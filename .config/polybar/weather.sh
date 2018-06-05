#!/usr/bin/env bash
curl -s https://darksky.net/forecast/52.4417,-2.163/uk212/en | grep -oP "summary swap\">\K([0-9]+).*;[a-zA-Z\s]+" | sed 's/&nbsp;/ /g'
