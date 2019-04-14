#/usr/bin/python

import json
import os
import sys

from utils import add_assignees

GITHUB_EVENT_PATH = os.environ['GITHUB_EVENT_PATH']
READ_MODE = 'r'

event = json.loads(open(GITHUB_EVENT_PATH, READ_MODE).read())

issue = event['issue']
repository = event['repository']

assignees = sys.argv[1:]

add_assignees(repository, issue, assignees)