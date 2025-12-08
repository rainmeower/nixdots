ps -ef | rg "nata.sh" | sed -e "s/${username}      //" | sed -e "s/ .*//" | xargs kill # clean up previous nata processes
${flake_dir}/stuff/nata/nata.sh -c ${flake_dir}/stuff/nata/config.json >/dev/null 2>/dev/null &
