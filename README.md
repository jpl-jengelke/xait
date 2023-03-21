# xait

The purpose of this script is to convert an [AIT yaml command dictionary](https://ait-core.readthedocs.io/en/latest/command_intro.html#) to
the [AMPCS XML command dictionary](https://github.com/NASA-AMMOS/ampcs-dict-schemas/blob/main/CommandDictionary.rnc). The orignal reason behind the creation of the script was to be able to use the [Aerie Sequence Editor](https://nasa-ammos.github.io/aerie-docs/sequencing/editor/) to create sequences in the [seq-json](https://github.com/NASA-AMMOS/seq-json-schema) format. The Aerie sequence editor currently accepts command dictionaries in the AMPCS XML format. 

Python 3.9 is recommended for best results

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


