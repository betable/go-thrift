setup:
	git remote add apache https://git.apache.org/thrift.git
	git checkout apache/master
	git checkout -b apache-filtered

update:
	git fetch apache
	git checkout apache-filtered
	git reset --hard apache/master
	git filter-branch -f --prune-empty --subdirectory-filter lib/go apache-filtered
	git checkout master
	git merge --ff-only apache-filtered
