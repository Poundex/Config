set PATH $PATH /home/poundex/bin

## GVM
for l in ~/.sdkman/candidates/* 
    for t in $l/*
        if echo $t | grep -q /current
            set PATH $PATH (realpath -s $t)/bin
        end
    end
end

function sdk
    bash -l -c -i "sdk $argv"
end


## ALIASES
function jupiter; ssh -C -X 192.168.0.50; end
function updo; sudo pacman -Syyu; end
function add; sudo pacman -Sy $argv; end
function mkdir; command mkdir -p $argv; cd $argv; end
function mkdir!; command mkdir $argv; end
alias gsb='git status -sb' 
alias sz="sensors"

## THEME OPTIONS
set -g theme_color_scheme base16
set -g theme_display_k8s_context no



if status is-interactive
	if not set -q TMUX
		exec tmux
	end

	fish_hybrid_key_bindings 
end


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/poundex/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/home/poundex/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/home/poundex/Downloads/google-cloud-sdk/path.fish.inc'; end; end
