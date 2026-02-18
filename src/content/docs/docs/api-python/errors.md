---
title: "Errors"
description: "API reference for syncopate.errors"
sidebar:
  order: 5
---

# Table of Contents

* [syncopate.errors](#syncopate.errors)
  * [SyncopateError](#syncopate.errors.SyncopateError)
  * [HTTPError](#syncopate.errors.HTTPError)
  * [GatewayError](#syncopate.errors.GatewayError)

<a id="syncopate.errors"></a>

# syncopate.errors

Custom error types for the Syncopate SDK.

<a id="syncopate.errors.SyncopateError"></a>

## SyncopateError Objects

```python
class SyncopateError(Exception)
```

Base error for all SDK errors.

<a id="syncopate.errors.HTTPError"></a>

## HTTPError Objects

```python
class HTTPError(SyncopateError)
```

Raised when an HTTP request fails.

<a id="syncopate.errors.GatewayError"></a>

## GatewayError Objects

```python
class GatewayError(SyncopateError)
```

Raised when the SSE gateway connection fails.
