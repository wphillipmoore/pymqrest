# Session

The `MQRESTSession` class is the main entry point for interacting with
IBM MQ via the REST API. It inherits MQSC command methods from
`MQRESTCommandMixin` (see [commands](commands.md)) and idempotent ensure methods
from `MQRESTEnsureMixin` (see [ensure](ensure.md)).

## MQRESTSession

::: pymqrest.session.MQRESTSession
    options:
      members: true
      show_bases: true

## Transport

The transport layer abstracts HTTP communication. The default
`RequestsTransport` uses the `requests` library. Custom transports
can be injected for testing or alternative HTTP clients.

::: pymqrest.session.TransportResponse
    options:
      members: false

::: pymqrest.session.MQRESTTransport
    options:
      members: true

::: pymqrest.session.RequestsTransport
    options:
      members: true
