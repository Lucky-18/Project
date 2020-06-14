all:
	README.md

README.md:
	echo '## PEER-GRADED-ASSIGNMENT' > README.md
	echo "- This make file was created at :  $(shell date +%y-%m-%d-%H-%M-%S)" >> README.md
	echo "- There were $(shell wc -l < guessinggame.sh) lines in guessinggame.sh" >> README.md


clear:
	rm README.md

