---
title: "Channel"
description: "API reference for syncopate.models.channel"
sidebar:
  order: 10
---

# Table of Contents

* [syncopate.models.channel](#syncopate.models.channel)
  * [Channel](#syncopate.models.channel.Channel)
    * [send](#syncopate.models.channel.Channel.send)
    * [fetch\_messages](#syncopate.models.channel.Channel.fetch_messages)
    * [fetch\_members](#syncopate.models.channel.Channel.fetch_members)
    * [fetch\_presence](#syncopate.models.channel.Channel.fetch_presence)
    * [trigger\_typing](#syncopate.models.channel.Channel.trigger_typing)
    * [from\_data](#syncopate.models.channel.Channel.from_data)

<a id="syncopate.models.channel"></a>

# syncopate.models.channel

Channel model with action methods.

<a id="syncopate.models.channel.Channel"></a>

## Channel Objects

```python
@dataclass(slots=True)
class Channel()
```

A Syncopate channel with methods for sending messages and managing members.

<a id="syncopate.models.channel.Channel.send"></a>

#### send

```python
async def send(content: str,
               *,
               type: str = "text",
               parent_id: str | None = None,
               idempotency_key: str | None = None) -> Message
```

Send a message to this channel.

<a id="syncopate.models.channel.Channel.fetch_messages"></a>

#### fetch\_messages

```python
async def fetch_messages(*,
                         limit: int = 50,
                         after_sequence: int | None = None,
                         before_sequence: int | None = None) -> list[Message]
```

Fetch messages from this channel.

<a id="syncopate.models.channel.Channel.fetch_members"></a>

#### fetch\_members

```python
async def fetch_members() -> list[dict[str, object]]
```

Fetch members of this channel.

<a id="syncopate.models.channel.Channel.fetch_presence"></a>

#### fetch\_presence

```python
async def fetch_presence() -> list[str]
```

Fetch online user IDs in this channel.

<a id="syncopate.models.channel.Channel.trigger_typing"></a>

#### trigger\_typing

```python
async def trigger_typing() -> None
```

Send a typing indicator to this channel.

<a id="syncopate.models.channel.Channel.from_data"></a>

#### from\_data

```python
@classmethod
def from_data(cls, data: dict[str, object]) -> Channel
```

Construct from an API response payload.
