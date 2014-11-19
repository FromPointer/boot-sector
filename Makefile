clear:
	rm -rf *.txt *~
	find . -name "*.*~" | awk '{print $0}'| xargs rm -rf
	find . -name "*~" | awk '{print $0}' | xargs rm -rf 
	find . -name "*.*bin" | awk '{print $0}' | xargs rm -rf

