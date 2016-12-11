# Errors

```shell
curl --request GET \
  --url 'https://api.tronalddump.io/foo'
```
```json
{
	"status": 404,
	"message": "No route found for \"GET /foo\""
}
```

The tronalddump api uses the following error codes, which are send in the payload and as a http status code in the response headers.

Error | Meaning
---------- | -------
400 | Bad Request
403 | Forbidden
404 | Not Found
405 | Method Not Allowed
406 | Not Acceptable
410 | Gone
418 | I'm a teapot
429 | Too Many Requests
500 | Internal Server Error
503 | Service Unavailable
