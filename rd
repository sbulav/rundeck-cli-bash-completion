#!bash

_rd_jobs()
{
    local opts
    opts="disable disablebulk enable enablebulk files info list load purge reschedule reschedulebulk unschedule unschedulebulk"

    case "$1" in
        disable)
            _rd_jobs_disable
            ;;
        disablebulk)
            _rd_jobs_disablebulk
            ;;
        enable)
            _rd_jobs_enable
            ;;
        enablebulk)
            _rd_jobs_enablebulk
            ;;
        files)
            _rd_jobs_files
            ;;
        info)
            _rd_jobs_info
            ;;
        list)
            _rd_jobs_list
            ;;
        purge)
            _rd_jobs_purge
            ;;
        reschedule)
            _rd_jobs_reschedule
            ;;
        reschedulebulk)
            _rd_jobs_reschedulebulk
            ;;
        unschedule)
            _rd_jobs_unschedule
            ;;
        unschedulebulk)
            _rd_jobs_unschedulebulk
            ;;
        "")
            COMPREPLY=($( compgen \
                -W "${opts}" \
                -- "${COMP_WORDS[COMP_CWORD]}" ))
            ;;
        *)
            COMPREPLY=()
            ;;
    esac
}

_rd_jobs_disable()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--id -i --job -j value --project -p" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_disablebulk()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--confirm -y --group -g --groupxact -G --idlist -i --job -j --jobxact -J --project -p --verbose -v" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_enable()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--id -i --job -j --project -p" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_enablebulk()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--confirm -y --group -g --groupxact -G --idlist -i --job -j --jobxact -J --project -p --verbose -v" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_files()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    local opts
    opts="info list load"
    case "$1" in
    info)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--id -i" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    list)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--eid -e --state -s --jobid -j --max -m --offset -o" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    load)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--file -f --id -i --option -o" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    "")
        COMPREPLY=($( compgen \
            -W "${opts}" \
            -- "${COMP_WORDS[COMP_CWORD]}" ))
        ;;
    *)
        COMPREPLY=()
        ;;
    esac
}

_rd_jobs_info()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--id -i --outformat --verbose -v" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_list()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--file -f --format -F --group -g --groupxact -G --idlist -i  --job -j --jobxact -J --outformat --project -p --verbose -v" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_load()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--duplicate -d --file -f --format -F --project -p --remove-uuids -r --verbose -v" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_purge()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--confirm -y --file -f --format -F --group -g  --groupxact -G --idlist -i --job -j --jobxact -J --outformat --project -p --verbose -v" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_reschedule()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--id -i --job -j --project -p" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_reschedulebulk()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--confirm -y --group -g --groupxact -G --idlist -i --job -j --jobxact -J --project -p --verbose -v" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_unschedule()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--id -i --job -j --project -p" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_jobs_unschedulebulk()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--confirm -y --group -g --groupxact -G --idlist -i --job -j --jobxact -J --project -p --verbose -v" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
    esac
}

_rd_adhoc()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        *)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--filter -F --follow -f --keepgoing -K --outformat --progress -r --project -p --quiet -q --restart -t --script -s --stdin -S --tail -T --threadcount --url -u --verbose -v" \
                -- ${cur} ))
            ;;
    esac
}

_rd_retry()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        *)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--eid -e --failedNodes -F --follow -f --id -i --job -j --loglevel -l --outformat --progress -r --project -p --quiet -q --raw --restart -t --tail -T --user -u" \
                -- ${cur} ))
            ;;
    esac
}

_rd_run()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
                $( compgen \
                -W "--filter -F --follow -f --id -i --job -j --loglevel -l --outformat --progress -r --project -p --quiet -q --raw --restart -t --at --delay -d --tail -T --user -u" \
                -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            # No fine solution to get list of jobs yet :(
            # local rd="${COMP_WORDS[0]}"
            # local jobslist="$(${rd} jobs list 2>/dev/null | cut -f2- -d ' ')"
            # COMPREPLY=($( compgen -W "${jobslist// /_}" -- ${cur} ))
            ;;
    esac
}

_rd_executions()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    local opts
    opts="delete deleteall deletebulk follow info kill list query state"

    case "$1" in
    delete)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--eid -e" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    deleteall)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--confirm -id -i" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    deletebulk)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--adhoconly -A --autopage --confirm --xgroup --xgroupexact --xnameexact --xname --xjobids -x --xjobs -X
                --group -g --groupexact -G --idlist -i --jobonly -J --nameexact -N --name -n --jobids -i --jobs -j --max -m
                --noninteractive --offset -o --older -O --outformat --project -p --recent -d --require -R --status -s --user -u --verbose -v" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    follow)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--follow -f --eid -e --outformat --progress -r --quiet -q --restart -t --tail -T" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    kill)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--eid -e" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    list)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--max -m --offset -o --outformat --project -p --verbose -v" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    query)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--adhoconly -A --autopage --xgroup  --xgroupexact  --xnameexact  --xname  --xjobids -x --xjobs -X --group -g
                --groupexact -G  --jobonly -J --nameexact -N  --name -n  --jobids -i --jobs -j --max -m  --noninteractive --offset
                -o  --older -O  --outformat --project -p  --recent -d  --status -s  --user -u  --verbose -v" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    state)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--eid -e" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    "")
        COMPREPLY=($( compgen \
            -W "${opts}" \
            -- "${COMP_WORDS[COMP_CWORD]}" ))
        ;;
    *)
        COMPREPLY=()
        ;;
    esac
}


_rd_scheduler()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    local opts
    opts="jobs takeover"

    case "$1" in
    jobs)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--uuid -u" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    takeover)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--all -a --job -j --project -p --uuid -u --verbise -v" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    "")
        COMPREPLY=($( compgen \
            -W "${opts}" \
            -- "${COMP_WORDS[COMP_CWORD]}" ))
        ;;
    *)
        COMPREPLY=()
        ;;
    esac
}

_rd_metrics()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    local opts
    opts="data healthcheck list ping threads"

    case "$1" in
    data)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--all -a --counters -c --gauges -g --histograms -h --meters -m --summary -s --timers -t " \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    healthcheck)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--fail -f --unhealthy -u" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    list)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--verbose -v" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    ping)
        case "$cur" in
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    threads)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--path -p" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    "")
        COMPREPLY=($( compgen \
            -W "${opts}" \
            -- "${COMP_WORDS[COMP_CWORD]}" ))
        ;;
    *)
        COMPREPLY=()
        ;;
    esac
}
_rd_keys()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    local opts
    opts="create delete get info list update"

    case "$1" in
    create)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--charset --file -f --path -p --prompt -P --type -t" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    delete)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--path -p" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    get)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--file -f --path -p" \
            -- ${cur} ))
            ;;
        esac
        ;;
    info)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--path -p" \
            -- ${cur} ))
            ;;
        esac
        ;;
    list)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--path -p" \
            -- ${cur} ))
            ;;
        esac
        ;;
    update)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--charset --file -f --path -p --prompt -P --type -t" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    "")
        COMPREPLY=($( compgen \
            -W "${opts}" \
            -- "${COMP_WORDS[COMP_CWORD]}" ))
        ;;
    *)
        COMPREPLY=()
        ;;
    esac
}

_rd_tokens()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    local opts
    opts="create delete list reveal"

    case "$1" in
    create)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--duration -d --outformat --roles -r --user -u --verbose -v" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    delete)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--token -t" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    list)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--outformat --user --verbose -v" \
            -- ${cur} ))
            ;;
        esac
        ;;
    reveal)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--id -d --outformat --verbose -v" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    "")
        COMPREPLY=($( compgen \
            -W "${opts}" \
            -- "${COMP_WORDS[COMP_CWORD]}" ))
        ;;
    *)
        COMPREPLY=()
        ;;
    esac
}

_rd_users()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    local opts
    opts="edit info list"

    case "$1" in
    edit)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--email -e --name -n --last -l --user -u --outformat --verbose -v" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    info)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--user -u value --outformat --verbose -v" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    list)
        case "$cur" in
        -*)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "--outformat --verbose -v help" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    "")
        COMPREPLY=($( compgen \
            -W "${opts}" \
            -- "${COMP_WORDS[COMP_CWORD]}" ))
        ;;
    *)
        COMPREPLY=()
        ;;
    esac
}

_rd_projects()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    local opts
    opts="acls archives configure create delete info list readme scm"

    case "$1" in
    acls)
        case "$cur" in
        *)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "create delete get list upload" \
            -- ${cur} ))
            ;;
        esac
        ;;
    archives)
        case "$cur" in
        *)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "import export" \
            -- ${cur} ))
            ;;
        esac
        ;;
    configure)
        case "$cur" in
        *)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "delete get set update" \
            -- ${cur} ))
            ;;
        esac
        ;;
    readme)
        case "$cur" in
        *)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "delete get put" \
            -- ${cur} ))
            ;;
        esac
        ;;
    scm)
        case "$cur" in
        *)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "config disable enable inputs perform plugins setup setupinputs status" \
            -- ${cur} ))
            ;;
        esac
        ;;
    "")
        COMPREPLY=($( compgen \
            -W "${opts}" \
            -- "${COMP_WORDS[COMP_CWORD]}" ))
        ;;
    *)
        COMPREPLY=()
        ;;
    esac
}
_rd_system()
{
    local cur
    cur="${COMP_WORDS[COMP_CWORD]}"

    local opts
    opts="acls info mode"

    case "$1" in
    acls)
        case "$cur" in
        *)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "create delete get list upload" \
            -- ${cur} ))
            ;;
        esac
        ;;
    info)
        case "$cur" in
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    mode)
        case "$cur" in
        *)
            COMPREPLY=(${COMPREPLY[@]} \
            $( compgen \
            -W "active info passive" \
            -- ${cur} ))
            ;;
        *)
            COMPREPLY=($( compgen -W "" -- ${cur} ))
            ;;
        esac
        ;;
    "")
        COMPREPLY=($( compgen \
            -W "${opts}" \
            -- "${COMP_WORDS[COMP_CWORD]}" ))
        ;;
    *)
        COMPREPLY=()
        ;;
    esac
}

_rd()
{
    local opts cur cmd subcmd
    opts="adhoc executions jobs keys metrics nodes projects retry run scheduler system tokens users"
    cur="${COMP_WORDS[COMP_CWORD]}"

    if [ $COMP_CWORD -gt 1 ]; then
        cmd=${COMP_WORDS[1]}
    fi

    if [ $COMP_CWORD -gt 2 ]; then
        subcmd=${COMP_WORDS[2]}
    fi

    if [ $COMP_CWORD -gt 3 ]; then
        subcmd=${COMP_WORDS[3]}
    fi

    case "${cmd}" in
	adhoc)
	    _rd_adhoc 
	    ;;
        executions)
            _rd_executions ${subcmd}
            ;;
        jobs)
            _rd_jobs ${subcmd}
            ;;
        keys)
            _rd_keys ${subcmd}
            ;;
        metrics)
            _rd_metrics ${subcmd}
            ;;
        nodes)
            _rd_nodes ${subcmd}
            ;;
        projects)
            _rd_projects ${subcmd}
            ;;
        retry)
            _rd_retry ${subcmd}
            ;;
        run)
            _rd_run ${subcmd}
            ;;
        scheduler)
            _rd_scheduler ${subcmd}
            ;;
        system)
            _rd_system ${subcmd}
            ;;
        tokens)
            _rd_tokens ${subcmd}
            ;;
        users)
            _rd_users ${subcmd}
            ;;
        "")
            COMPREPLY=($( compgen -W "${opts}" -- ${cur} ))
            ;;
        *)
            COMPREPLY=()
            ;;
    esac
}

complete -F _rd rd
