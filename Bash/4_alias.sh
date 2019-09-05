#!/bin/bash
alias ls='ls --color=auto'
alias word='command'
alias myAlias='ls -l --with --options'
ls foo bar baz


alias now='date'
now
unalias {now}
now

echo There are ${#BASH_ALIASES[*]} aliases defined
for ali in "${!BASH_ALIASES[*]}"; do
  printf "alias: %-10s triggers: %s \n" "$ali" "${BASH_ALIASES[$ali]}"
done

alias -p
