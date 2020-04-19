README.md: guessinggame.sh
	echo "Title: guessinggame.sh" > README.md
	printf  'Time when the makefile was run was %s\n' "$$(date)"  >> README.md
	printf  'Number of lines in gueesinggame.sh %s\n' "$$(wc -l guessinggame.sh| egrep -o '[0-9]+')" >> README.md

clean:
	rm README.md
