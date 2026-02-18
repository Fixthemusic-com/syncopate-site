---
title: "Bot"
description: "API reference for syncopate.bot"
sidebar:
  order: 1
---

# Table of Contents

* [syncopate.bot](#syncopate.bot)
  * [Bot](#syncopate.bot.Bot)
    * [event](#syncopate.bot.Bot.event)
    * [command](#syncopate.bot.Bot.command)
    * [run](#syncopate.bot.Bot.run)

<a id="syncopate.bot"></a>

# syncopate.bot

Bot class — the main entry point for building Syncopate bots.

Extends :class:`Client` with ``@bot.event`` and ``@bot.command()``
decorator-based event and command handling, modeled after discord.py.

<a id="syncopate.bot.Bot"></a>

## Bot Objects

```python
class Bot(Client)
```

Syncopate bot with decorator-based event and command handling.

Example::

import syncopate

bot = syncopate.Bot(token="bot_xxxx")

@bot.event
async def on_ready() -> None:
print(f"Logged in as {bot.user.display_name}")

@bot.event
async def on_message(message: syncopate.Message) -> None:
if message.author and message.author.bot:
return
if message.content == "!hello":
await message.channel.send("Hello there!")

@bot.command()
async def ping(ctx: syncopate.Context) -> None:
await ctx.reply("Pong!")

bot.run()

<a id="syncopate.bot.Bot.event"></a>

#### event

```python
def event(func: F) -> F
```

Decorator to register an event handler.

The function name determines the event (with ``on_`` prefix stripped).

Example::

@bot.event
async def on_message(message: syncopate.Message) -> None:
...

@bot.event
async def on_ready() -> None:
...

<a id="syncopate.bot.Bot.command"></a>

#### command

```python
def command(name: str | None = None,
            *,
            description: str | None = None) -> Callable[[F], F]
```

Decorator to register a command handler.

Example::

@bot.command()
async def ping(ctx: syncopate.Context) -> None:
await ctx.reply("Pong!")

@bot.command(name="hi", description="Say hello")
async def greet(ctx: syncopate.Context, who: str = "world") -> None:
await ctx.send(f"Hello, {who}!")

<a id="syncopate.bot.Bot.run"></a>

#### run

```python
def run() -> None
```

Start the bot (blocking).

Convenience method that creates an event loop and runs
:meth:`start` until interrupted.
