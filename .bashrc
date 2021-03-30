#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h\W]\$ '
PS1='\e[36m[\e[32m\u@\]\[\e[32m\h\]\[\e[36m\W\]] \[\e[33m\]\[\e[1m\]$ \[\e[0m\]'
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json
