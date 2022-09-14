#! /bin/bash

XAIT=../xait.py
NUM_FAILED=0

run_test() {
	local args=$1
	local fname=$2
	echo -n "Running test $fname.."
	$XAIT cmd.yaml $args output/$fname >& /dev/null
	if [ $? -ne 0 ]; then
		echo "run failed."
		NUM_FAILED=$((NUM_FAILED+1))
		return 1
	fi
	diff expected/$fname output/$fname
	if [ $? -ne 0 ]; then
		echo "diff failed."
		NUM_FAILED=$((NUM_FAILED+1))
		return 1
	fi
	echo "passed"
	return 0
}

rm -fr output
mkdir -p output

run_test "" baseline.xml
run_test "-f" fixed_strings.xml
run_test "-c" with_comments.xml
run_test "-k" keep_fixed.xml
run_test "-m mission_name -i 0x1234" with_ids.xml
run_test "-v version_id -s schema_version" with_versions.xml

if [ $NUM_FAILED -eq 0 ]; then
	echo "All tests passed!"
else
	echo "$NUM_FAILED test(s) failed."
fi
