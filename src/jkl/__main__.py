import dialog
import logging
import sys
import time
import subprocess
import os


just_block = os.getenv('BLOCK', '0')
if just_block == "1":
    print("just block... hit return...")
    input()
    sys.exit(0)
