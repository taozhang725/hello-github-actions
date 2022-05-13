#!/bin/sh -l

#!/bin/bash

# get latest tag
t=$(./git describe --tags `git rev-list --tags --max-count=1`)

# get current commit hash for tag
commit=$(git rev-parse HEAD)

# if there are none, start tags at 0.0.0
if [ -z "$t" ]
then
    log=$(./git log --pretty=oneline)
    t=0
else
    log=$(./git log $t..HEAD --pretty=oneline)
fi

# get commit logs and determine home to bump the version
new=$(basename $t)
new=$((new+1))
#echo $new

# get repo name from git
remote=$(./git config --get remote.origin.url)
repo=$(basename $remote .git)

REPO_OWNER=taozhang725

# POST a new ref to repo via Github API
curl -s -X POST https://api.github.com/$REPO_OWNER/$repo/git/refs \
-H "Authorization: token $GITHUB_TOKEN" \
-d @- << EOF
{
  "ref": "refs/tags/$new",
  "sha": "$commit"
}
EOF
