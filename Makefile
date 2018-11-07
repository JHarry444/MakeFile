.PHONY: delete echo read message home homez origin
MESSAGE="BOB IS A WEAPON"
delete:
	rm -f *.txt
echo:
	echo "bloop bloop" > echo.txt
read:
	@cat echo.txt
message:
	echo $(MESSAGE)
home:
	echo ~
homez:
	echo $(findstring z, ~)
ifeq ($(findstring z, ~), )
	echo "BLOOP"
else
	echo ~
endif
origin:
	$(origin MESSAGE)
