---
title: "Http"
description: "API reference for syncopate.http"
sidebar:
  order: 4
---

# Table of Contents

* [syncopate.http](#syncopate.http)
  * [HTTPClient](#syncopate.http.HTTPClient)
    * [close](#syncopate.http.HTTPClient.close)
    * [get](#syncopate.http.HTTPClient.get)
    * [post](#syncopate.http.HTTPClient.post)
    * [patch](#syncopate.http.HTTPClient.patch)
    * [delete](#syncopate.http.HTTPClient.delete)

<a id="syncopate.http"></a>

# syncopate.http

aiohttp-based HTTP client for the Syncopate REST API.

<a id="syncopate.http.HTTPClient"></a>

## HTTPClient Objects

```python
class HTTPClient()
```

HTTP client for the Syncopate REST API.

Handles ``Bot`` token authentication, JSON serialization,
and error mapping to :class:`HTTPError`.

<a id="syncopate.http.HTTPClient.close"></a>

#### close

```python
async def close() -> None
```

Close the underlying HTTP session.

<a id="syncopate.http.HTTPClient.get"></a>

#### get

```python
async def get(path: str,
              *,
              params: dict[str, str] | None = None) -> dict[str, Any]
```

Make a GET request.

<a id="syncopate.http.HTTPClient.post"></a>

#### post

```python
async def post(path: str,
               *,
               json: dict[str, object] | None = None,
               extra_headers: dict[str, str] | None = None) -> dict[str, Any]
```

Make a POST request.

<a id="syncopate.http.HTTPClient.patch"></a>

#### patch

```python
async def patch(path: str,
                *,
                json: dict[str, object] | None = None) -> dict[str, Any]
```

Make a PATCH request.

<a id="syncopate.http.HTTPClient.delete"></a>

#### delete

```python
async def delete(path: str) -> None
```

Make a DELETE request.
