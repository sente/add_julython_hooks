#!/bin/sh

# usage:
# bash add_julython_hooks.sh USERNAME REPONAME

# example:
# bash add_julython_hooks.sh sente cloud9
#   this will add a hook to my http://github.com/sente/cloud9/ repo


USERNAME=$1;
REPO=$2;

JSON=$(cat - <<"END"
    {
      "name": "web",
      "active": true,
      "events": [
        "commit",
        "push",
        "pull_request"
      ],
      "config": {
        "url": "http://sente.cc/scripts/git-hooks",
        "content_type": "json",
        "insecure_ssl": "1"
      }
    }
END
);

curl -X POST -u "${USERNAME}" -d "$JSON" "https://api.github.com/repos/${USERNAME}/${REPO}/hooks"

#why this isn't yet working, I don't know
# testing..with   'nc -l 70000'

