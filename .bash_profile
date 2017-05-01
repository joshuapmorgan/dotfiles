#!/bin/bash

for file in ~/.{bash_prompt,aliases,functions,path,extra,exports}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		source "$file"
	fi
done
unset file

if [[ -r /usr/local/bin/virtualenvwrapper.sh ]] && [[ -f /usr/local/bin/virtualenvwrapper.sh ]]; then
	source /usr/local/bin/virtualenvwrapper.sh
fi
