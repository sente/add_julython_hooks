#!/bin/sh

USER=sente
echo "username: sente"

echo -n "password: "
read -s PASS

echo
echo https://api.github.com/repos/sente/imgurstats/hooks
curl -X GET -u $USER:$PASS https://api.github.com/repos/sente/imgurstats/hooks

echo
echo https://api.github.com/repos/sente/imgurstats/hooks/348358
curl -X GET -u $USER:$PASS https://api.github.com/repos/sente/imgurstats/hooks/348358

echo
echo https://api.github.com/repos/sente/add_julython_hooks/hooks
curl -X GET -u $USER:$PASS https://api.github.com/repos/sente/add_julython_hooks/hooks

echo
echo https://api.github.com/repos/sente/add_julython_hooks/hooks/625472
curl -X GET -u $USER:$PASS https://api.github.com/repos/sente/add_julython_hooks/hooks/625472

