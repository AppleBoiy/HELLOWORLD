clear:
	find . -name "__pycache__" -exec rm -rf {} \;
	find . -name ".DS_Store" -exec rm -rf {} \;

fetp:
	git fetch && git pull

auto-save:
	git add . && git commit -m "auto save" && git push

save:
	git add . && git commit -m "$(msg)" && git push

subsave:
	git submodule foreach 'git add . && git diff-index --quiet HEAD || git commit -m "~ chore" && git push || true'
	git add . && git diff-index --quiet HEAD || git commit -m "lazy commit" && git push

