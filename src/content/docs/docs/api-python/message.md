---
title: "Message"
description: "API reference for syncopate.models.message"
sidebar:
  order: 11
---

# Table of Contents

* [syncopate.models.message](#syncopate.models.message)
  * [Message](#syncopate.models.message.Message)
    * [edit](#syncopate.models.message.Message.edit)
    * [delete](#syncopate.models.message.Message.delete)
    * [reply](#syncopate.models.message.Message.reply)
    * [from\_data](#syncopate.models.message.Message.from_data)

<a id="syncopate.models.message"></a>

# syncopate.models.message

Message model with action methods.

<a id="syncopate.models.message.Message"></a>

## Message Objects

```python
@dataclass(slots=True)
class Message()
```

A Syncopate message with methods for editing, deleting, and replying.

<a id="syncopate.models.message.Message.edit"></a>

#### edit

```python
async def edit(content: str) -> Message
```

Edit this message.

<a id="syncopate.models.message.Message.delete"></a>

#### delete

```python
async def delete() -> None
```

Delete this message.

<a id="syncopate.models.message.Message.reply"></a>

#### reply

```python
async def reply(content: str) -> Message
```

Reply to this message (creates a threaded message).

<a id="syncopate.models.message.Message.from_data"></a>

#### from\_data

```python
@classmethod
def from_data(cls, data: dict[str, object]) -> Message
```

Construct from an API response payload.
