pruneLocal() {
  git fetch
  git remote prune origin
  REMOTES=$(git branch -a | grep 'remotes' | grep -v -E '.*(HEAD|master)' | cut -d'/' -f 3-)
  LOCALS=$(git branch -a | grep -v 'remotes' | grep -v -E '.*(HEAD|master)' | grep -v '^*' | cut -d'/' -f 3-)
  for local in $LOCALS; do
    in=false
    for remote in $REMOTES; do
      if [ $local = $remote ]; then
        in=true
      fi
    done;
    if [ $in = 'false' ]; then
      git branch -D $local
    else
      echo 'Skipping branch '$local
    fi
  done;
}

flip() {
    echo;
    echo -en "( º_º）  ┬─┬   \r"; sleep .5;
    echo -en " ( º_º） ┬─┬   \r"; sleep .5;
    echo -en "  ( ºДº）┬─┬   \r"; sleep .5;
    echo -en "  (╯'Д'）╯︵⊏   \r"; sleep .5;
    echo -en "  (╯'□'）╯︵ ⊏  \r"; sleep .5;
    echo     "  (╯°□°）╯︵ ┻━┻"; sleep .5;
}

