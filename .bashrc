# User short address instead of full address in the terminal
PS1='\W:\$'

# " Show graphical apps in WSL "
export DISPLAY='192.168.1.11:0.0'

# Add to path
export PATH="/home/amir/.local/bin:$PATH"

# Add venv folder in the same directory for pipenv
export PIPENV_VENV_IN_PROJECT=1
