all: index.html level2.html

force:
	bikeshed -f spec

CR:
	bikeshed -f spec --md-status=CR --md-deadline=2016-09-20 ./index.bs ./CR.html

index.html: index.bs
	bikeshed -f spec

publish:
	git push origin master master:gh-pages

level2.html: level2.src.html
	bikeshed -f spec ./level2.src.html

clean:
	$(RM) index.html
