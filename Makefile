all:
	cc -DAA mimetex.c gifsave.c -lm -o mimetex.cgi
	if [ ! -d cgi-bin ]; then mkdir cgi-bin; fi
	mv mimetex.cgi cgi-bin    
