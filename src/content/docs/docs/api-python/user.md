---
title: "User"
description: "API reference for syncopate.models.user"
sidebar:
  order: 8
---

# Table of Contents

* [syncopate.models.user](#syncopate.models.user)
  * [User](#syncopate.models.user.User)
    * [is\_bot](#syncopate.models.user.User.is_bot)
    * [from\_data](#syncopate.models.user.User.from_data)

<a id="syncopate.models.user"></a>

# syncopate.models.user

User model.

<a id="syncopate.models.user.User"></a>

## User Objects

```python
@dataclass(frozen=True, slots=True)
class User()
```

A Syncopate user (human or bot).

<a id="syncopate.models.user.User.is_bot"></a>

#### is\_bot

```python
@property
def is_bot() -> bool
```

Whether this is a bot user.

<a id="syncopate.models.user.User.from_data"></a>

#### from\_data

```python
@classmethod
def from_data(cls, data: dict[str, object]) -> User
```

Construct from an API response payload.
