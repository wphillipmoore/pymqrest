# pymqrest

Python wrapper for the IBM MQ administrative REST API.

`pymqrest` provides a Python-friendly interface to IBM MQ queue manager
administration via the `runCommandJSON` REST endpoint. It translates between
Python `snake_case` attribute names and native MQSC parameter names, wraps
every MQSC command as a typed method, and handles authentication, CSRF tokens,
and error propagation.
