objdump -d -j .text $1 | grep -e '^ ' | tr '[[:space:]]' '\n' | egrep '^[[:alnum:]]{2}$' | xargs | sed 's/ /\\x/g' |sed -e 's/^/\\x/g'
