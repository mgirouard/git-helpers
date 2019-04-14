PREFIX = $(HOME)/bin

cmds = $(shell find . -name 'git-*')

info:
	@echo PREFIX=$(PREFIX)
	@echo cmds=$(cmds)

install:
	install -D $(cmds) $(PREFIX)

