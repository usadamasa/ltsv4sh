#!/bin/sh

LTSV_SEP="	"

ltsv_get(){
	local readonly LABEL="${1}"
	local readonly STR=${2}

	ifs_org="$IFS"
	IFS="$LTSV_SEP"

	typeset kv v
	for kv in $STR ; do
		if [ "${kv%:*}" == "${LABEL}" ] ; then
			v="${kv#*:}"
			break
		fi
	done

	IFS="$ifs_org"
	
	echo $v
	return 0
}
