wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 -P /tmp/
chmod 777 /tmp/jq-linux64
cmd=`cat tmp.json | /tmp/jq-linux64 -c .[] `
eval "$cmd"
echo '{"foo": 0}' | /tmp/jq-linux64 .
