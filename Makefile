# Define variables
LINUX_SCRIPT = ./bin/linux.sh
CLEAN_SCRIPT = ./bin/cleanup.sh

# Define targets and dependencies
linux: clean
	@bash $(LINUX_SCRIPT)

clean:
	@bash $(CLEAN_SCRIPT)

# Set file permissions
.PHONY: linux clean
chmod:
	chmod 700 $(LINUX_SCRIPT) $(CLEAN_SCRIPT)

