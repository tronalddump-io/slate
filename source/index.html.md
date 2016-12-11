---
title: API Documentation - tronalddump.io

language_tabs:
  - shell

toc_footers:
  - <a href='https://www.tronalddump.io/'>www</a>

includes:
  - errors

search: true

---

# Introduction

[Api](https://api.tronalddump.io) & [web archive](https://www.tronalddump.io) for the dumbest things Donald Trump has ever said.

# Quotes

## Search quotes

```shell
curl --request GET \
  --url 'https://api.tronalddump.io/search/quote?query=obama' \
  --header 'accept: application/hal+json'
```

> The above command returns hal+json structured like this:

```json
{
	"count": 25,
	"total": 68,
	"_embedded": {
		"quotes": [
		]
	},
	"_links": {
		"self": {
			"href": "/search/quote?query={query}&page={page}"
		},
		"prev": {
			"href": "/search/quote?query={query}"
		},
		"first": {
			"href": "/search/quote?query={query}"
		},
		"last": {
			"href": "/search/quote?query={query}&page={page}"
		}
	}
}
```


Free text search for quotes.

### HTTP Request

`GET https://api.tronalddump.io/search/quote?query={query}`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
query | String | The search query must be at least 3 characters long
page | Integer | The page number
size | Integer | The page size, value must be between 1 and 25 (default 25)

## Get tags

Retrieve a list of available tags.

```shell
curl --request GET \
  --url 'https://api.tronalddump.io/tags \
  --header 'accept: application/hal+json'
```

```json
{
	"count": 6,
	"total": 6,
	"_embedded": [
		"Hillary Clinton",
		"Ted Cruz",
		"Jeb Bush",
		"Marco Rubio",
		"Mexico",
		"Money"
	],
	"_links": {
		"self": {
			"href": "/tags"
		}
	}
}
```

## Get quote

```shell
curl --request GET \
  --url 'https://api.tronalddump.io/quote/VHKwB8crTte7--FqtIxq9A' \
  --header 'accept: application/hal+json'
```
> The above command returns hal+json structured like this:

```json
{
	"appeared_at": "2016-05-09T16:56:36",
	"created_at": "2016-11-20T01:35:43.157523",
	"quote_id": "VHKwB8crTte7--FqtIxq9A",
	"tags": [
		"Hillary Clinton"
	],
	"updated_at": "2016-11-20T01:35:43.157523",
	"value": "Crooked Hillary Clinton says that she got more primary votes than Donald Trump. But I had 17 people to beat—she had one!",
	"_links": {
		"self": {
			"href": "/quote/VHKwB8crTte7--FqtIxq9A"
		}
	},
	"_embedded": {
		"autor": [
			{
				"created_at": "2016-11-14T01:14:02.096776",
				"author_id": "wVE8Y7BoRKCBkxs1JkqAvw",
				"name": "Donald Trump",
				"slug": "donald-trump",
				"updated_at": "2016-11-14T01:14:02.096776"
			}
		],
		"source": [
			{
				"created_at": "2016-11-20T01:35:41.652179",
				"quote_source_id": "WMqsW5mDQrqSbWzqiTBB_w",
				"updated_at": "2016-11-20T01:35:41.652179",
				"url": "https://twitter.com/realDonaldTrump/status/729716712124362754"
			}
		]
	}
}
```

Retrieve a quote by a given quote id.

### HTTP Request

`GET https://api.tronalddump.io/quote/{id}`

### Query Parameters

Parameter | Type | Description
--------- | ------- | -----------
id | String | The quote id

## Get random quote

Retrieve a random quote.

### HTTP Request

`GET https://api.tronalddump.io/random/quote`

### Query Parameters

Parameter | Type | Default | Description
--------- | ---- | ------- | -----------
tag | String | null | An optional tag

```shell
curl --request GET \
  --url 'https://api.tronalddump.io/random/quote/' \
  --header 'accept: application/hal+json'
```
