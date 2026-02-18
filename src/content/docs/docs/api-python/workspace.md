---
title: "Workspace"
description: "API reference for syncopate.models.workspace"
sidebar:
  order: 9
---

# Table of Contents

* [syncopate.models.workspace](#syncopate.models.workspace)
  * [Workspace](#syncopate.models.workspace.Workspace)
    * [from\_data](#syncopate.models.workspace.Workspace.from_data)

<a id="syncopate.models.workspace"></a>

# syncopate.models.workspace

Workspace model.

<a id="syncopate.models.workspace.Workspace"></a>

## Workspace Objects

```python
@dataclass(frozen=True, slots=True)
class Workspace()
```

A Syncopate workspace.

<a id="syncopate.models.workspace.Workspace.from_data"></a>

#### from\_data

```python
@classmethod
def from_data(cls, data: dict[str, object]) -> Workspace
```

Construct from an API response payload.
