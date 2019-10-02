

add_detail: 
	rm -f README.md	
	touch README.md
	chmod 777 README.md
	@echo "# Project to create simple bash guessing game script by Peter Brennan" >> README.md
	@echo $$'\n' >> README.md
	@echo "the rundate is, "  >> README.md
	date >> README.md
	@echo $$'\n' >> README.md	
	@echo "the line count is: " >> README.md
	wc -l guessinggame.sh  | awk '{print substr ($$0, 0, 2)}' >> README.md



