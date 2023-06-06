import platform

def get_os() -> str:
    if platform.system().lower() == 'windows':
        return 'win'
    return 'mac'

def get_ext(os: str = get_os()) -> str:
    if os == 'win':
        return 'exe'
    return 'dmg'