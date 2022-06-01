# xait
Python script to translate AIT command dictionary YAML to AMPCS XML

`usage: xait.py [-h] [-f] [-m MISSION] [-i SCID] [-v VERSION] [-s SCHEMA_VERSION] input_yaml output_xml`

The purpose of this script is to convert an AIT yaml command dictionary to
the AMPCS XML format for the singular and sole purpose of then being able
to use Aerie/Falcon Editor to create sequences in the seq.json format. It is
almost certain that this script does NOT create fully compliant AMPCS XML.

Of note: The seq.json format produced by Aerie/Falcon can change at any time.
