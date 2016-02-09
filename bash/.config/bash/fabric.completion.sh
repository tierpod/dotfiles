_fabric()
{
	local cur prev opts
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	prev="${COMP_WORDS[COMP_CWORD-1]}"
	opts="-u --user -p --password -H --hosts -R --roles -f --fabfile -x -w --hide --show --skip-bad-hosts"

	case "${prev}" in
		fab)
			if [ -f "fabfile/__init__.py" ] || [ -f "fabfile.py" ]
			then
				local list='$(fab --list --short)'
				COMPREPLY=( $(compgen -W "${list}" -- ${cur}) )
			else
				COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
			fi
			return 0
			;;
		--hide|--show)
			local list='status aborts warnings running stdout stderr user debug output everything commands'
			COMPREPLY=( $(compgen -W "${list}" -- ${cur}) )
			return 0
			;;
		*)
			COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
			return 0
			;;
	esac
}

complete -F _fabric fab
