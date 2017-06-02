
## GVM

for l in ~/.sdkman/candidates/* 
    for t in $l/*
        if echo $t | grep -q /current
            set PATH $PATH (realpath -s $t)/bin
        end
    end
end

function sdk
    bash -l -c "sdk $argv"
end


## UPDATE

function updo
	sudo pacman -Syyu
end

function zzupdo
     sudo apt-get autoremove
     and sudo apt-get update
     and sudo apt-get dist-upgrade --assume-yes --force-yes
     and sudo apt-get autoremove
end


## ALIASES

function jupiter; ssh -C -X 192.168.0.50; end

function zzadd; sudo apt-get install --assume-yes --force-yes $argv; end
function add; sudo pacman -Sy $argv; end

alias gsb='git status -sb' 

