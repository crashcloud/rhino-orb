import subprocess as proc
from glob import glob
import platform
import argparse
import wget
import sys
import os

from utils import get_ext

parser = argparse.ArgumentParser(
    prog='Install Rhino',
    description='Installs any Rhino exes in the current directory'
)

LICENSE_METHOD_STANDALONE = 'standalone'
LICENSE_METHOD_ZOO = 'ZOO'
LICENSE_METHOD_CORE = 'CORE'

parser.add_argument('-l', '--licensing', type=str, required=True,
                    choices=[
                        LICENSE_METHOD_STANDALONE,
                        LICENSE_METHOD_ZOO,
                        LICENSE_METHOD_CORE
                    ])
parser.add_argument('-lk', '--licensekey', type=str, required=False, help='required if license key is chosen')
parser.add_argument('-zs', '--zooserver', type=str, required=False, help='required if zoo is chosen')
parser.add_argument('-tk', '--token', type=str, required=False, help='required if core is chosen')

args = parser.parse_args()

license_method = args.licensing
if license_method == LICENSE_METHOD_STANDALONE and args.licensekey is None:
    print('Please feed in a license key for standalone install')
    sys.exit(1)
    
elif license_method == LICENSE_METHOD_ZOO and args.zooserver is None:
    print('Please feed in a zoo server for zoo licensing install')
    sys.exit(1)

elif license_method == LICENSE_METHOD_CORE and args.token is None:
    print('Please feed in a core hour billing token for core hour billing install')
    sys.exit(1)

cwd = os.getcwd()
rhino_exes = glob(f'{cwd}\*{get_ext()}')
if len(rhino_exes) == 0:
    print('No rhino installation files found! Please run download-rhino.py')
    sys.exit(1)

# We use repair incase it is already installed
# https://wiki.mcneel.com/rhino/installingrhino/7
for rhino_exe_path in rhino_exes:

    args = [ rhino_exe_path,
                '-repair',
                '-quiet',
                '-passive',
                '-norestart',
                'INSTALL_EN=1']
    
    if license_method == LICENSE_METHOD_STANDALONE:
        args += ['LICENSE_METHOD=STANDALONE', f'LICENSE_KEY={args.licensekey}']
        print('Running using Standalone')
        
    elif license_method == LICENSE_METHOD_ZOO:
        args += ['LICENSE_METHOD=ZOO', f'LICENSE_KEY={args.licensekey}']
        print('Running using Zoo Licensing')

    elif license_method == LICENSE_METHOD_CORE:
        os.environ['RHINO_TOKEN'] = args.token
        print('Running using Core Hour Billing')

    proc.run(args)

    print (f'Installed Rhino : {rhino_exe_path}')

print('Done')
