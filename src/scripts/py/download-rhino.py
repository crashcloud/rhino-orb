import argparse
import wget
import sys
import os

from utils import get_ext, get_os
from urls import get_download_url

FILES_URL = 'https://files.mcneel.com'

parser = argparse.ArgumentParser()
parser.add_argument("-v", "--version", type=str, required=True, choices=['6', '7', '8'], help='Choose a rhino version to download')
parser.add_argument("-fv", "--fullversion", type=str, required=False, default="latest", help='Feed in a full version if desired. Not all are supported yet')
parser.add_argument("-c", "--culture", type=str, default="en-us")
parser.add_argument("-p", "--platform", type=str, required=False, choices=['mac', 'win'], help='OS is auto detected, but this can be overriden')

args = parser.parse_args()
version = args.version
culture = args.culture
full_version = args.fullversion

platform = args.platform
if platform is None:
    platform = get_os()

download_url = get_download_url(version, platform, full_version, culture)
exe_name = f'rhino_{version}_{full_version}.{get_ext(platform)}'
print(f'Downloading Rhino from {download_url} to {exe_name}')

exe_name = f'rhino_{version}_{full_version}.{get_ext(platform)}'
if os.path.isfile(exe_name):
    print('Rhino is already downloaded. Using Cached version')
else:
    wget.download(download_url, exe_name)