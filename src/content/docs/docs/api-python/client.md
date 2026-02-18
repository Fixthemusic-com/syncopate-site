---
title: "Client"
description: "API reference for syncopate.client"
sidebar:
  order: 2
---

# Table of Contents

* [syncopate.client](#syncopate.client)
  * [Client](#syncopate.client.Client)
    * [start](#syncopate.client.Client.start)
    * [close](#syncopate.client.Client.close)
    * [fetch\_user](#syncopate.client.Client.fetch_user)
    * [fetch\_workspaces](#syncopate.client.Client.fetch_workspaces)
    * [get\_channel](#syncopate.client.Client.get_channel)

<a id="syncopate.client"></a>

# syncopate.client

Low-level Syncopate client — REST + SSE, no command framework.

<a id="syncopate.client.Client"></a>

## Client Objects

```python
class Client()
```

Low-level Syncopate client.

Provides REST API access and SSE event streaming without
the command framework. Use :class:`Bot` for the full experience.

<a id="syncopate.client.Client.start"></a>

#### start

```python
async def start() -> None
```

Authenticate, cache channels, and connect to SSE.

<a id="syncopate.client.Client.close"></a>

#### close

```python
async def close() -> None
```

Disconnect and clean up.

<a id="syncopate.client.Client.fetch_user"></a>

#### fetch\_user

```python
async def fetch_user(user_id: str) -> User
```

Fetch a user by ID.

<a id="syncopate.client.Client.fetch_workspaces"></a>

#### fetch\_workspaces

```python
async def fetch_workspaces() -> list[Workspace]
```

Fetch all workspaces the bot is a member of.

<a id="syncopate.client.Client.get_channel"></a>

#### get\_channel

```python
async def get_channel(channel_id: str) -> Channel
```

Get a channel from cache or fetch it.
