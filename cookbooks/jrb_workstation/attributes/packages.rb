# List of default packages to install or upgrade
default['jrb_workstation']['packages']['upgrade'] = [
  'autossh',         # Automatically restart SSH sessions and tunnels
  'iftop',           # Display bandwidth usage on an interface
  'openssh',
  'openssl',
  'pass',            # Password manager
  'tree',            # Display directories as trees (with optional color/HTML output)
  'unzip',
  'zip'
]

# List of default packages to install (no upgrade support)
default['jrb_workstation']['packages']['install'] = [
  'htop',             # Improved top (interactive process viewer)
  'mtr',
  'wget',             # Internet file retriever
]

# List of arch only packages
default['jrb_workstation']['packages']['arch'] = [
  'alsa-utils',       # An alternative implementation of Linux sound support
  'pulseaudio',       # Proxy for sound hardware
  'iotop',            # View I/O usage of processes
]
