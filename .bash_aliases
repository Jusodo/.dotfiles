# default directories
alias home='cd ~'
alias root='cd /'

# azure-cli
alias azuretest='az account set -s 80b6b1f1-5a44-4f9c-aff2-e0e1083cbf1a && az account show'
alias azureprod='az account set -s c7c14b8d-a34c-4de5-8cf8-cc858cea515f && az account show'

# shortcuts
alias config='vim ~/.bashrc'
alias profile='vim ~/.bash_profile'
alias aliases='vim ~/.bash_aliases'
alias c='code'

# kubernetes
alias k='kubectl'
alias kconfig='kubectl config get-contexts'

# bat as alternative to cat
alias bat='batcat'
alias cat='batcat'

# switch between java versions
alias jvm='sudo update-alternatives --config java'

# tradelens
alias tradelens='cd ~/workspace/tradelens'
alias tlbridge='cd ~/workspace/tradelens/bridge'
alias tldeployment='cd ~/workspace/tradelens/deployment'

# salescockpit
alias salescockpit='cd ~/workspace/salescockpit'
alias salescockpitui='cd ~/workspace/salescockpit/frontend'
alias salescockpitbackend='cd ~/workspace/salescockpit/backend'
alias salescockpitdeployment='cd ~/workspace/salescockpit/deployment'

# devops
alias cloud='cd ~/workspace/devops/nkg-application-cloud'

# comtras
alias comtraslib='cd ~/workspace/libcomtras'

# reporting utilities
alias reporting='cd ~/workspace/devops/reporting_utilities'

# mynkg
alias mynkg='cd ~/workspace/mynkg'
alias datahub='cd ~/workspace/maynkg/datahub'
alias datahub-ui='cd ~/workspace/maynkg/datahub-ui'
alias geohub='cd ~/workspace/maynkg/geohub'
alias mynkg-deployment='cd ~/workspace/maynkg/deployment'

# edwh 
alias edwh='cd ~/workspace/edwh'
alias edwhmain='cd ~/workspace/edwh/edwh'
alias edwhdeployment='cd ~/workspace/edwh/deployment'
alias edwhui='cd ~/workspace/edwh/frontend'
alias edwhbridge='cd ~/workspace/edwh/comtras-bridge'
alias edwhrisk='cd ~/workspace/edwh/risk'
alias edwhevents='cd ~/workspace/edwh/event-bucket'
alias edwhlibs='cd ~/workspace/edwh/libraries'
alias edwhinfra='cd ~/workspace/edwh/infrastructure'

# vcms
alias vietnam='cd ~/workspace/vietnam'
alias vcms='cd ~/workspace/vietnam/vcms'
alias vcmsdb='cd ~/workspace/vietnam/database'
