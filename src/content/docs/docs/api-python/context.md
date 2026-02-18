---
title: "Context"
description: "API reference for syncopate.commands.context"
sidebar:
  order: 6
---

# Table of Contents

* [syncopate.commands.context](#syncopate.commands.context)
  * [Context](#syncopate.commands.context.Context)
    * [send](#syncopate.commands.context.Context.send)
    * [reply](#syncopate.commands.context.Context.reply)

<a id="syncopate.commands.context"></a>

# syncopate.commands.context

Command execution context.

<a id="syncopate.commands.context.Context"></a>

## Context Objects

```python
class Context()
```

Command execution context.

Passed to ``@bot.command()`` handlers with the triggering message,
parsed arguments, and convenience methods for replying.

<a id="syncopate.commands.context.Context.send"></a>

#### send

```python
async def send(content: str) -> Message
```

Send a message to the same channel.

<a id="syncopate.commands.context.Context.reply"></a>

#### reply

```python
async def reply(content: str) -> Message
```

Reply to the triggering message (threaded).
