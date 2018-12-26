import sys
from ruamel.yaml import YAML

string_yaml = """\
# example
name:
  # details
  family: Pacheco   # from somewhere
  given: Diego      # me
"""

yaml = YAML()
code = yaml.load(string_yaml)
code['name']['given'] = 'DIEGO'

yaml.dump(code, sys.stdout)

