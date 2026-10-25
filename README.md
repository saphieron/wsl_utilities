# wsl_utilities

Collection of scripts or config snippets that are meant to help setting up and using things especially between WSL and its Windows host system.

## The .<bash/zsh/sh>rc file
If you, like me, disabled having WSL inherit the entirety of the poluted Windows host PATH environment variable, you might still want to use both the nice `code .` and `explorer.exe .` kind of features.
A selection of PATH exports can be found in `the_rc_contents.sh`.
Copy those into the rc file of your preferred shell.

## Making the Explorer understand your WSL path

Copy the explorer to e.g. `~/.local/bin` and make it executable. Also add that path to your PATH.

