gitPS1(){
	gitps1=$(git branch 2>/dev/null | grep '*')
	gitps1="${gitps1:+ (${gitps1/#\* /})}"
	echo "$gitps1"
}

gitPS1forMAC(){
	gir branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

timeNow(){
	echo "$(date +%r)"
}

function prompt_command {
	#check if we are inside a git repo
	if git status > /dev/null 2>&1; then
		export GIT_STATUS=$(git status | grep 'On branch' | cut -b 10-)
	else
		export GIT_STATUS=""
	fi
}
PROMPT_COMMAND=prompt_command
PS1="\$GIT_STATUS \u@\h:\w\$ "
