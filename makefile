README.md: guessinggame.sh
	echo "# guessinggame.sh" > README.md
	echo '/n Guessing game ask the user to guess the number of files in the current directory./n' >> README.md
	printf  '## Time when the makefile was run was %s\n' "$$(date)"  >> README.md
	printf  '## Number of lines in gueesinggame.sh %s\n' "$$(wc -l guessinggame.sh| egrep -o '[0-9]+')" >> README.md

clean:
	rm README.md
