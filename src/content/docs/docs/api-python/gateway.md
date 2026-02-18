---
title: "Gateway"
description: "API reference for syncopate.gateway"
sidebar:
  order: 3
---

# Table of Contents

* [syncopate.gateway](#syncopate.gateway)
  * [Gateway](#syncopate.gateway.Gateway)
    * [on](#syncopate.gateway.Gateway.on)
    * [connect](#syncopate.gateway.Gateway.connect)
    * [disconnect](#syncopate.gateway.Gateway.disconnect)

<a id="syncopate.gateway"></a>

# syncopate.gateway

SSE gateway client for real-time events.

<a id="syncopate.gateway.Gateway"></a>

## Gateway Objects

```python
class Gateway()
```

SSE gateway client.

Connects to ``/api/events`` and dispatches parsed events to handlers.
Handles reconnection with exponential backoff and ``Last-Event-ID`` replay.

<a id="syncopate.gateway.Gateway.on"></a>

#### on

```python
def on(event: str, handler: Callable[..., Awaitable[None]]) -> None
```

Register a handler for a specific event type.

<a id="syncopate.gateway.Gateway.connect"></a>

#### connect

```python
async def connect() -> None
```

Connect to the SSE stream and start dispatching events.

<a id="syncopate.gateway.Gateway.disconnect"></a>

#### disconnect

```python
async def disconnect() -> None
```

Disconnect from the SSE stream.
