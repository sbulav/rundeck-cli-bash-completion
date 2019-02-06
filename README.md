# rundeck-cli-bash-completion
This is a bash completion script for rundeck console client(rd)

## Getting started

I couldn't find bash completion for rundeck-cli `rd`, so I decide to write completion by my own.

## Installation

Just copy `rd` to your `/etc/bash_completion.d/` and source it `source /etc/bash_completion.d/rd`.

At the moment only `rundeck run` tries to substitute job name value, i.e.

```bash
rd run T<TAB><TAB>
rd run Tail deploy.log
```

To use substitution, where Job names starts with the same word, add `\` before spaces:

```bash
rd run I<TAB><TAB>
rd run Install "
rd run Install\ <TAB><TAB>"
rd run Install\
servera serverb
```

## Known issues

Only `rundeck run` command tries to substitute value(job name)
