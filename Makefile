setup:
	git remote add apache https://git.apache.org/thrift.git

update:
	git fetch apache
	git checkout master
	git reset --hard apache/master
	git filter-branch -f --prune-empty --subdirectory-filter lib/go master
