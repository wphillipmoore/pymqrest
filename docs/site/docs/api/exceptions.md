# Exceptions

All exceptions inherit from `MQRESTError`.

```text
Exception
└── MQRESTError
    ├── MQRESTAuthError        — authentication failures
    ├── MQRESTTransportError   — network/connection failures
    ├── MQRESTResponseError    — malformed responses
    ├── MQRESTCommandError     — MQSC command failures
    └── MQRESTTimeoutError     — sync operation timeouts
```

::: pymqrest.exceptions.MQRESTError
    options:
      show_bases: true

::: pymqrest.exceptions.MQRESTAuthError
    options:
      members: true
      show_bases: true

::: pymqrest.exceptions.MQRESTTransportError
    options:
      members: true
      show_bases: true

::: pymqrest.exceptions.MQRESTResponseError
    options:
      members: true
      show_bases: true

::: pymqrest.exceptions.MQRESTCommandError
    options:
      members: true
      show_bases: true

::: pymqrest.exceptions.MQRESTTimeoutError
    options:
      members: true
      show_bases: true
