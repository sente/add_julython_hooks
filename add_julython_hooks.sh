#!/bin/sh

# usage:
# bash add_julython_hooks.sh USERNAME REPONAME

# example:
# bash add_julython_hooks.sh sente 
#   this will add a hook to my http://github.com/sente/cloud9/ repo


USERNAME=$1;
REPO=$2;

JSON=$(cat - <<"END"
    {
      "name": "web",
      "active": true,
      "events": [
        "push",
        "pull_request"
      ],
      "config": {
        "url": "http://www.julython.org/api/v1/github",
        "content_type": "json"
      }
    }
END
);

curl -X POST -u "${USERNAME}" -d "$JSON" "https://api.github.com/repos/${USERNAME}/${REPO}/hooks"
