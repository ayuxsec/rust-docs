default: push

.PHONY: push

push:
	git checkout --orphan _temp
	git add -A
	git commit -m "notes"
	git branch -D main
	git branch -m main
	git push -f origin main
