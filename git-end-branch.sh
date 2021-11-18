#!

$BRANCH = $1
$MAIN = "main"

git checkout $NAME_OF_MAIN
git pull
# TODO: add binary toggle for no-ff default false
git merge $BRANCH
git push

git checkout $MAIN
git branch -D $BRANCH
git push --delete origin $BRANCH
git remote prune origin
