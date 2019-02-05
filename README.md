# rundeck-cli-bash-completion
This is a bash completion script for rundeck console client(rd)

## Getting started

I couldn't find bash completion for rundeck-cli `rd`, so I decide to write completion by my own.

## Installation

Just copy `rd` to your `/etc/bash_completion.d/` and source it `source /etc/bash_completion.d/rd`.

## Known issues

Bash completion is pretty basic, I don't find a reliable and simple way to substitute values(like job name) into completion.
