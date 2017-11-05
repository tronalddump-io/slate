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
  --url 'https://api.tronalddump.io/tag \
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

## Get tag

Retrieve a quotes by a given tag.

```shell
curl --request GET \
  --url 'https://api.tronalddump.io/tag/Hillary%20Clinton \
  --header 'accept: application/hal+json'
```

```json
{
  "count": 1,
  "total": 277,
  "_embedded": {
    "tags": [{
      "appeared_at": "2016-07-30T19:55:26",
      "created_at": "2016-11-20T01:32:07.085780",
      "quote_id": "dxo0LpDbRlOIHs630rMK9A",
      "tags": ["Hillary Clinton"],
      "updated_at": "2016-11-20T01:32:07.085780",
      "value": "Why doesn't the media want to report that on the two \"Big Thursdays\" when Crooked Hillary and I made our speeches - Republican's won ratings",
      "_links": {
        "self": {
          "href": "\/quote\/dxo0LpDbRlOIHs630rMK9A"
        }
      },
      "_embedded": {
        "author": [{
          "created_at": "2016-11-14T01:14:02.096776",
          "bio": null,
          "author_id": "wVE8Y7BoRKCBkxs1JkqAvw",
          "name": "Donald Trump",
          "slug": "donald-trump",
          "updated_at": "2016-11-14T01:14:02.096776"
        }],
        "source": [{
          "created_at": "2016-11-20T01:32:06.695089",
          "filename": null,
          "quote_source_id": "GQPWKpGvQEurAep0gwwXxA",
          "remarks": null,
          "updated_at": "2016-11-20T01:32:06.695089",
          "url": "https:\/\/twitter.com\/realDonaldTrump\/status\/759477522232901632"
        }]
      }
    }]
  },
  "_links": {
    "self": {
      "href": "\/tag\/Hillary%20Clinton?page=2"
    },
    "prev": {
      "href": "\/tag\/Hillary%20Clinton"
    },
    "next": {
      "href": "\/tag\/Hillary%20Clinton?page=3"
    },
    "first": {
      "href": "\/tag\/Hillary%20Clinton"
    },
    "last": {
      "href": "\/tag\/Hillary%20Clinton?page=12"
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
        "author": [{
            "created_at": "2016-11-14T01:14:02.096776",
            "bio": null,
            "author_id": "wVE8Y7BoRKCBkxs1JkqAvw",
            "name": "Donald Trump",
            "slug": "donald-trump",
            "updated_at": "2016-11-14T01:14:02.096776"
        }],
        "source": [{
            "created_at": "2016-11-20T01:35:41.652179",
            "filename": null,
            "quote_source_id": "WMqsW5mDQrqSbWzqiTBB_w",
            "remarks": null,
            "updated_at": "2016-11-20T01:35:41.652179",
            "url": "https://twitter.com/realDonaldTrump/status/729716712124362754"
        }]
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

```shell
curl --request GET \
  --url 'https://api.tronalddump.io/random/quote' \
  --header 'accept: application/hal+json'
```

Retrieve a random quote.

### HTTP Request

`GET https://api.tronalddump.io/random/quote`

### Query Parameters

Parameter | Type | Default | Description
--------- | ---- | ------- | -----------
tag | String | null | An optional tag

## Get random meme

```shell
curl --request GET \
  --url 'https://api.tronalddump.io/random/meme' \
  --header 'accept: image/jpeg'
```

Retrieve a random meme as jpeg. Note that a custom header `tronald-quote-id` is send in the response which represents the quote id.

Parameter | Type | Default | Description
--------- | ---- | ------- | -----------
size | Float | 1 | Size value ust be between 1 and 5
