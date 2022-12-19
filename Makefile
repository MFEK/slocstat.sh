.PHONY:
all: README.html

README.md:
	./README.md.sh > README.md

README.html: README.md
	pandoc -f markdown -t html -i README.md -o README.html
