#! /bin/sh

XAIT=../xait.py
rm -fr output
mkdir -p output
$XAIT cmd.yaml output/baseline.xml
$XAIT cmd.yaml -f output/fixed_strings.xml
$XAIT cmd.yaml -c output/with_comments.xml
$XAIT cmd.yaml -k output/keep_fixed.xml
$XAIT cmd.yaml -m mission_name -i 0x1234 output/with_ids.xml
$XAIT cmd.yaml -v version_id -s schema_version output/with_versions.xml

diff expected output
if [ $? -eq 0 ]; then
	echo "All tests passed!"
else
	echo "Something failed."
fi
