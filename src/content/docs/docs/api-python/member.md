---
title: "Member"
description: "API reference for syncopate.models.member"
sidebar:
  order: 12
---

# Table of Contents

* [syncopate.models.member](#syncopate.models.member)
  * [ChannelMember](#syncopate.models.member.ChannelMember)
    * [from\_data](#syncopate.models.member.ChannelMember.from_data)
  * [WorkspaceMember](#syncopate.models.member.WorkspaceMember)
    * [from\_data](#syncopate.models.member.WorkspaceMember.from_data)

<a id="syncopate.models.member"></a>

# syncopate.models.member

Channel and workspace member models.

<a id="syncopate.models.member.ChannelMember"></a>

## ChannelMember Objects

```python
@dataclass(frozen=True, slots=True)
class ChannelMember()
```

A member of a Syncopate channel.

<a id="syncopate.models.member.ChannelMember.from_data"></a>

#### from\_data

```python
@classmethod
def from_data(cls, data: dict[str, object]) -> ChannelMember
```

Construct from an API response payload.

<a id="syncopate.models.member.WorkspaceMember"></a>

## WorkspaceMember Objects

```python
@dataclass(frozen=True, slots=True)
class WorkspaceMember()
```

A member of a Syncopate workspace.

<a id="syncopate.models.member.WorkspaceMember.from_data"></a>

#### from\_data

```python
@classmethod
def from_data(cls, data: dict[str, object]) -> WorkspaceMember
```

Construct from an API response payload.
