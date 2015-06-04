curl-json() {
	if [ -n "$1" ]; then
		curl -s $1 | python -m json.tool
	else
		echo 'Usage: curl-json http://localhost/url'
	fi
}
