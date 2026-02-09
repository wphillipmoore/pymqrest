# Example use cases for pymqrest

## Table of Contents

- [Context](#context)
- [Common MQ administration tasks](#common-mq-administration-tasks)
- [Multi-queue-manager requirements](#multi-queue-manager-requirements)
- [Selected examples](#selected-examples)

## Context

This document captures research into common MQSC scripting use cases that
pymqrest examples should demonstrate. The goal is practical scripts that
exercise real MQ administration tasks against a multi-queue-manager Docker
environment.

## Common MQ administration tasks

### Queue manager health monitoring

MQ administrators routinely check whether queue managers are running, whether
the command server is available, and whether listeners are active. This is the
first thing an operator does after a restart or failover event.

**MQSC commands involved:**

- `DISPLAY QMGR` -- queue manager attributes (dead letter queue, max handles)
- `DISPLAY QMSTATUS` -- runtime status (running, standby, quiescing)
- `DISPLAY CMDSERV` -- command server availability
- `DISPLAY LISTENER(*)` / `DISPLAY LSSTATUS(*)` -- listener configuration
  and runtime status

### Queue depth monitoring

Queue depth monitoring is fundamental to MQ operations. Queues approaching
their maximum depth cause `MQRC_Q_FULL` failures, which block applications.
Proactive monitoring catches depth problems before they become outages.

**MQSC commands involved:**

- `DISPLAY QLOCAL(*) WHERE(CURDEPTH GT 0)` -- non-empty queues
- Attributes: `CURDEPTH`, `MAXDEPTH`, `IPPROCS`, `OPPROCS`
- Depth percentage calculation: `CURDEPTH / MAXDEPTH * 100`

### Channel status reporting

Channels connect queue managers. Failed or retrying channels break
inter-system message flow. Operators need to see which channels are defined,
which are running, and which are in error states.

**MQSC commands involved:**

- `DISPLAY CHANNEL(*)` -- channel definitions (type, connection name)
- `DISPLAY CHSTATUS(*)` -- live channel status (running, stopped, retrying)
- Cross-reference: defined channels without active status entries

### Dead letter queue inspection

Every queue manager should have a dead letter queue (DLQ) configured.
Messages that cannot be delivered end up here. A growing DLQ indicates
routing or application problems.

**MQSC commands involved:**

- `DISPLAY QMGR` -- read `DEADQ` attribute for the DLQ name
- `DISPLAY QLOCAL(dlq-name)` -- DLQ depth, max depth, input/output handles

### Environment provisioning

Setting up a new MQ environment involves creating queues, transmission
queues, remote queue definitions, and channel pairs across multiple queue
managers. Automating this eliminates manual MQSC scripting errors.

**MQSC commands involved:**

- `DEFINE QLOCAL` -- local and transmission queues
- `DEFINE QREMOTE` -- remote queue definitions for cross-QM routing
- `DEFINE CHANNEL` -- sender/receiver channel pairs
- `START CHANNEL` -- activate channels after definition
- `DISPLAY` commands to verify the provisioned objects

## Multi-queue-manager requirements

Several use cases (channel status, environment provisioning) require two
queue managers communicating over a network. The existing single-QM Docker
setup cannot demonstrate:

- Sender/receiver channel connectivity
- Remote queue definitions with actual message routing
- Cross-QM provisioning workflows

A two-QM Docker Compose environment with a shared network addresses this.

## Selected examples

| # | Script                      | Primary use case                 | Multi-QM |
| - | --------------------------- | -------------------------------- | -------- |
| 1 | `health_check.py`           | Queue manager health monitoring  | Optional |
| 2 | `queue_depth_monitor.py`    | Queue depth monitoring           | No       |
| 3 | `channel_status.py`         | Channel status reporting         | No       |
| 4 | `dlq_inspector.py`          | Dead letter queue inspection     | No       |
| 5 | `provision_environment.py`  | Environment provisioning         | Yes      |
