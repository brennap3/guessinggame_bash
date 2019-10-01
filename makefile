

add_detail: 
	rm -f READMEtest.md	
	touch READMEtest.md
	chmod 777 READMEtest.md
	@echo "# Project to create simple bash guessing game script by Peter Brennan" >> READMEtest.md
	@echo "\\n" >> READMEtest.md
	@echo "the rundate is, "  >> READMEtest.md
	date >> READMEtest.md
	@echo "\\n" >> READMEtest.md	
	@echo "the line count is: " >> READMEtest.md
	wc -l guessinggame.sh  | awk '{print substr ($$0, 0, 2)}' >> READMEtest.md



