#!/bin/bash
api_key='e75ad2f8d51788658b327324a20b0fa4'
url='http://182.61.187.119/twoyeahapi/GameEarlyWarning.php'
start_at=$(date --date '-30 min' +'%Y-%m-%dT%H:%M:%S')
start_at=${start_at//:/%3A}
param="DayTime=${start_at}${api_key}"
md5="$(printf '%s' "${param}" | md5sum | awk '{print $1}')"
prefix='xxxxx'
suffix='xxxxx'
key="${prefix}${md5}${suffix}"
curl "${url}?DayTime=${start_at}&key=${key}"
