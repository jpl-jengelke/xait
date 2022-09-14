# xait
Python script to translate AIT command dictionary YAML to AMPCS XML

```
usage: xait.py [-h] [-f] [-m MISSION] [-i SCID] [-v VERSION] [-s SCHEMA_VERSION] [-c] [-k] input_yaml output_xml

positional arguments:
  input_yaml            file name of the AIT yaml command dictionary
  output_xml            name for the output xml file

optional arguments:
  -h, --help            show this help message and exit
  -f, --fixed           use fixed width strings for S### types
  -m MISSION, --mission MISSION
                        mission name
  -i SCID, --scid SCID  spacecraft id
  -v VERSION, --version VERSION
                        version of the command dictionary
  -s SCHEMA_VERSION, --schema_version SCHEMA_VERSION
                        schema version of the command dictionary
  -c, --comments        include comments in output (may make the xml unuseable)
  -k, --keepfixed       keep fixed value args as default_value
```

The purpose of this script is to convert an AIT yaml command dictionary to
the AMPCS XML format for the singular and sole purpose of then being able
to use Aerie/Falcon Editor to create sequences in the seq.json format. It is
almost certain that this script does NOT create fully compliant AMPCS XML.

Of note: The seq.json format produced by Aerie/Falcon can change at any time.

Python 3.9 is recommended for best results
