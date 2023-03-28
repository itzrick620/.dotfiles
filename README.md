# My Dotfiles
	These are my dotfile configuration files for different software in Bash.
## .vimrc
        This is my custom .vimrc configuration for Vim.
## .bashrc
        This is my custom .bashrc configuration for Bash.
## bin/linux.sh
	This script performs multiple tasks to set up a Linux environment, such as checking the OS, creating a .TRASH directory, backing up and overwriting the .vimrc file, and adding a statement to the bashrc file. It also redirects the output of echo statements to a file called 'linuxsetup.log'.
## bin/cleanup.sh
	Reverses the changes made by linux.sh. Removes the .vimrc file, removes the line added to .bashrc, and removes the .TRASH directory
## Makefile
	The makefile defines two targets: 'linux' - which runs the linux.sh script after running the clean target - and 'clean' - which runs the cleanup.sh script, removing the changes made by linux.sh. It also has a target 'chmod' to set execute permissions on the .sh files.

The vimrc file is configured to rename and backup any existing .vimrc files, overwriting .vimrc with the contents of etc/vimrc. That file has settings to customize Vim, changing the color and enabling syntax highlighting
The .bashrc_custom file customizes the bash shell. The file contains many settings and aliases that can be used to customize the bash environment, such as setting a default command prompt, define shortcuts for long commands, or add a directory to the '$PATH'
