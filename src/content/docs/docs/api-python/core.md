---
title: "Core"
description: "API reference for syncopate.commands.core"
sidebar:
  order: 7
---

# Table of Contents

* [syncopate.commands.core](#syncopate.commands.core)
  * [CommandEntry](#syncopate.commands.core.CommandEntry)

<a id="syncopate.commands.core"></a>

# syncopate.commands.core

@bot.command() decorator core.

<a id="syncopate.commands.core.CommandEntry"></a>

## CommandEntry Objects

```python
@dataclass(frozen=True, slots=True)
class CommandEntry()
```

Metadata for a registered command.
