_nuance_tune_opts ()
{
	local curr_arg prev_arg
	curr_arg=${COMP_WORDS[COMP_CWORD]}
	prev_arg=${COMP_WORDS[COMP_CWORD-1]}
	case "$prev_arg" in
		-config)
			COMPREPLY=( $( /bin/ls -l ) )
			return 0
			;;
		esac
		COMPREPLY=( $(compgen -W '-analyze -experiment -generate_groups -compute_thresh -config -output
-help -usage -force -lang -grammar_overrides -begin_date -end_date -group -dataset -multiparses -
dump_records -no_index -confidencelevel -nrecs -dry_run -rec_scripts_only -save_temp -full_trc -
single_session -verbose -ep -unsupervised -write_manifest -remap -noreparse -upload -reference -
target -use_only_matching -histogram -stepsize' -- $curr_arg ) );
}

complete -o filenames -F _nuance_tune_opts _nuance_tune
