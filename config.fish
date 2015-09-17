
## GVM

for l in ~/.gvm/* 
    for t in $l/*
        if echo $t | grep -q /current
            set PATH $PATH (realpath -s $t)/bin
        end
    end
end

function gvm
    bash -l -c "gvm $argv"
end


## UPDATE

function updo
     sudo apt-get autoremove
     and sudo apt-get update
     and sudo apt-get dist-upgrade --assume-yes --force-yes
     and sudo apt-get autoremove
end


## ALIASES

function jupiter; ssh -C -X media@192.168.0.50; end
function work; ssh -C poundera@192.168.5.31 -p 7842; end
function add; sudo apt-get install --assume-yes --force-yes $argv; end
function git-use-og
    git config user.name "Adam Pounder"
    git config user.email 'adam@opengamma.com'
end
function git-use-tcs
    git config user.name "Adam Pounder"
    git config user.email 'adam.pounder@thecitysecret.com'
end
function git-use-me
    git config user.name "Poundex"
    git config user.email 'mail@poundex.net'
end
