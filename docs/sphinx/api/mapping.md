# Mapping

The mapping module translates between Python `snake_case` attribute
names and native MQSC parameter names. See {doc}`/mapping-pipeline`
for a conceptual overview.

## Functions

```{eval-rst}
.. autofunction:: pymqrest.mapping.map_request_attributes
```

```{eval-rst}
.. autofunction:: pymqrest.mapping.map_response_attributes
```

```{eval-rst}
.. autofunction:: pymqrest.mapping.map_response_list
```

## Diagnostics

```{eval-rst}
.. autoclass:: pymqrest.mapping.MappingIssue
   :members:
   :exclude-members: direction, reason, attribute_name, attribute_value, object_index, qualifier
```

```{eval-rst}
.. autoclass:: pymqrest.mapping.MappingError
   :members:
   :show-inheritance:
```
