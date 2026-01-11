# MQSC to PCF parameter extraction (first run)

## Table of Contents
- [Purpose](#purpose)
- [Scope and constraints](#scope-and-constraints)
- [Sources](#sources)
- [Summary](#summary)
- [Extraction output](#extraction-output)
- [Notes and gaps](#notes-and-gaps)

## Purpose
Provide a first-pass extraction of MQSC command parameters, PCF request/response parameters, and heuristic mappings across the full MQSC command set.

## Scope and constraints
- MQSC commands are sourced from the IBM MQSC command index and include commands beyond the V1 scope.
- PCF-only commands are ignored; the extraction starts from MQSC names and uses PCF only for attribute names/types.
- Parameter classification is heuristic and prioritized for breadth over precision in this run.

## Sources
- MQSC commands index: https://www.ibm.com/docs/en/ibm-mq/9.4.x?topic=reference-mqsc-commands
- PCF commands index: https://www.ibm.com/docs/en/ibm-mq/9.4.x?topic=reference-definitions-programmable-command-formats
- IBM Docs content API: https://www.ibm.com/docs/api/v1/content

## Summary
- MQSC commands parsed: 139
- MQSC docs fetched: 139
- MQSC commands with input parameters: 48
- MQSC commands with output parameters: 7
- PCF commands referenced: 132
- PCF request pages fetched: 106
- PCF response topics found: 132
- PCF response pages fetched: 65
- PCF response pages missing: 0
- PCF response pages fetch failed: 67

## Extraction output
```yaml
version: 1
generated_at: 2026-01-11T22:20:20Z
commands:
  - mqsc:
      name: ALTER AUTHINFO
      href: SSFKSJ_9.4.0/refadmin/q085140_.html
      positional_parameters:
        - LDAP class user
        - LDAP password
        - LDAP user
        - Responder URL
        - base DN
        - connection name
        - delay time
        - name
        - qmgr-name
        - string
        - user field
        - user name
      input_parameters:
        - ADOPTCTX
        - AUTHENMD
        - AUTHORMD
        - AUTHTYPE
        - BASEDNG
        - BASEDNU
        - CHCKCLNT
        - CHCKLOCL
        - CLASSGRP
        - CLASSUSR
        - CMDSCOPE
        - CONNAME
        - DESCR
        - FAILDLAY
        - FINDGRP
        - GRPFIELD
        - LDAPPWD
        - LDAPUSER
        - NESTGRP
        - OCSPURL
        - QSGDISP
        - SECCOMM
        - SHORTUSR
        - USRFIELD
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER AUTHINFO':
          - ADOPTCTX
          - AUTHENMD
          - AUTHORMD
          - AUTHTYPE
          - BASEDNG
          - BASEDNU
          - CHCKCLNT
          - CHCKLOCL
          - CLASSGRP
          - CLASSUSR
          - CMDSCOPE
          - CONNAME
          - DESCR
          - FAILDLAY
          - FINDGRP
          - GRPFIELD
          - LDAPPWD
          - LDAPUSER
          - NESTGRP
          - OCSPURL
          - QSGDISP
          - SECCOMM
          - SHORTUSR
          - USRFIELD
    pcf:
      command: MQCMD_CHANGE_AUTH_INFO
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - ADOPTCTX
          - AUTHENMD
          - AUTHORMD
          - AUTHTYPE
          - BASEDNG
          - BASEDNU
          - CHCKCLNT
          - CHCKLOCL
          - CLASSGRP
          - CLASSUSR
          - CMDSCOPE
          - CONNAME
          - DESCR
          - FAILDLAY
          - FINDGRP
          - GRPFIELD
          - LDAPPWD
          - LDAPUSER
          - NESTGRP
          - OCSPURL
          - QSGDISP
          - SECCOMM
          - SHORTUSR
          - USRFIELD
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER BUFFPOOL
      href: SSFKSJ_9.4.0/refadmin/q085150_.html
      positional_parameters:
        - (buf-pool-id)
        - integer
      input_parameters:
        - BUFFERS
        - LOC
        - LOCATION
        - PAGECLAS
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER BUFFPOOL':
          - BUFFERS
          - LOC
          - LOCATION
          - PAGECLAS
    pcf:
      command: MQCMD_CHANGE_BUFFPOOL
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - BUFFERS
          - LOC
          - LOCATION
          - PAGECLAS
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER CFSTRUCT
      href: SSFKSJ_9.4.0/refadmin/q085160_.html
      positional_parameters:
        - (structure-name)
        - data.set.name.*
        - integer
        - string
      input_parameters:
        - CFCONLOS
        - CFLEVEL
        - DESCR
        - DSBLOCK
        - DSBUFS
        - DSEXPAND
        - DSGROUP
        - OFFLD1SZ
        - OFFLD1TH
        - OFFLD2SZ
        - OFFLD2TH
        - OFFLD3SZ
        - OFFLD3TH
        - OFFLOAD
        - RECAUTO
        - RECOVER
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER CFSTRUCT':
          - CFCONLOS
          - CFLEVEL
          - DESCR
          - DSBLOCK
          - DSBUFS
          - DSEXPAND
          - DSGROUP
          - OFFLD1SZ
          - OFFLD1TH
          - OFFLD2SZ
          - OFFLD2TH
          - OFFLD3SZ
          - OFFLD3TH
          - OFFLOAD
          - RECAUTO
          - RECOVER
    pcf:
      command: MQCMD_CHANGE_CF_STRUC
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CFCONLOS
          - CFLEVEL
          - DESCR
          - DSBLOCK
          - DSBUFS
          - DSEXPAND
          - DSGROUP
          - OFFLD1SZ
          - OFFLD1TH
          - OFFLD2SZ
          - OFFLD2TH
          - OFFLD3SZ
          - OFFLD3TH
          - OFFLOAD
          - RECAUTO
          - RECOVER
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q085170_.html
      positional_parameters:
        - (channel-name)
        - (string)
        - channel-name
        - clustername
        - integer
        - ip-addr
        - nlname
        - qmgr-name
        - string
      input_parameters:
        - AFFINITY
        - AMQPKA
        - BATCHHB
        - BATCHINT
        - BATCHLIM
        - BATCHSZ
        - CERTLABL
        - CHLTYPE
        - CLNTWGHT
        - CLUSNL
        - CLUSTER
        - CLWLPRTY
        - CLWLRANK
        - CLWLWGHT
        - CMDSCOPE
        - COMPHDR
        - COMPMSG
        - CONNAME
        - CONVERT
        - DEFCDISP
        - DEFRECON
        - DESCR
        - DISCINT
        - HBINT
        - KAINT
        - LIKE
        - LOCLADDR
        - LONGRTY
        - LONGTMR
        - MAXINST
        - MAXINSTC
        - MAXMSGL
        - MCANAME
        - MCATYPE
        - MCAUSER
        - MODENAME
        - MONCHL
        - MRDATA
        - MREXIT
        - MRRTY
        - MRTMR
        - MSGDATA
        - MSGEXIT
        - NETPRTY
        - NPMSPEED
        - PASSWORD
        - PORT
        - PROPCTL
        - PUTAUT
        - QMNAME
        - QSGDISP
        - RCVDATA
        - RCVEXIT
        - SCYDATA
        - SCYEXIT
        - SENDDATA
        - SENDEXIT
        - SEQWRAP
        - SHARECNV
        - SHORTRTY
        - SHORTTMR
        - SPLPROT
        - SSLCAUTH
        - SSLCIPH
        - SSLPEER
        - STATCHL
        - TMPMODEL
        - TMPQPRFX
        - TPNAME
        - TPROOT
        - TRPTYPE
        - USECLTID
        - USEDLQ
        - USERID
        - XMITQ
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER CHANNEL':
          - AFFINITY
          - AMQPKA
          - BATCHHB
          - BATCHINT
          - BATCHLIM
          - BATCHSZ
          - CERTLABL
          - CHLTYPE
          - CLNTWGHT
          - CLUSNL
          - CLUSTER
          - CLWLPRTY
          - CLWLRANK
          - CLWLWGHT
          - CMDSCOPE
          - COMPHDR
          - COMPMSG
          - CONNAME
          - CONVERT
          - DEFCDISP
          - DEFRECON
          - DESCR
          - DISCINT
          - HBINT
          - KAINT
          - LIKE
          - LOCLADDR
          - LONGRTY
          - LONGTMR
          - MAXINST
          - MAXINSTC
          - MAXMSGL
          - MCANAME
          - MCATYPE
          - MCAUSER
          - MODENAME
          - MONCHL
          - MRDATA
          - MREXIT
          - MRRTY
          - MRTMR
          - MSGDATA
          - MSGEXIT
          - NETPRTY
          - NPMSPEED
          - PASSWORD
          - PORT
          - PROPCTL
          - PUTAUT
          - QMNAME
          - QSGDISP
          - RCVDATA
          - RCVEXIT
          - SCYDATA
          - SCYEXIT
          - SENDDATA
          - SENDEXIT
          - SEQWRAP
          - SHARECNV
          - SHORTRTY
          - SHORTTMR
          - SPLPROT
          - SSLCAUTH
          - SSLCIPH
          - SSLPEER
          - STATCHL
          - TMPMODEL
          - TMPQPRFX
          - TPNAME
          - TPROOT
          - TRPTYPE
          - USECLTID
          - USEDLQ
          - USERID
          - XMITQ
    pcf:
      command: MQCMD_CHANGE_CHANNEL
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/SSFKSJ_7.5.0/com.ibm.mq.ref.adm.doc/q086940_.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - AFFINITY
          - AMQPKA
          - BATCHHB
          - BATCHINT
          - BATCHLIM
          - BATCHSZ
          - CERTLABL
          - CHLTYPE
          - CLNTWGHT
          - CLUSNL
          - CLUSTER
          - CLWLPRTY
          - CLWLRANK
          - CLWLWGHT
          - CMDSCOPE
          - COMPHDR
          - COMPMSG
          - CONNAME
          - CONVERT
          - DEFCDISP
          - DEFRECON
          - DESCR
          - DISCINT
          - HBINT
          - KAINT
          - LIKE
          - LOCLADDR
          - LONGRTY
          - LONGTMR
          - MAXINST
          - MAXINSTC
          - MAXMSGL
          - MCANAME
          - MCATYPE
          - MCAUSER
          - MODENAME
          - MONCHL
          - MRDATA
          - MREXIT
          - MRRTY
          - MRTMR
          - MSGDATA
          - MSGEXIT
          - NETPRTY
          - NPMSPEED
          - PASSWORD
          - PORT
          - PROPCTL
          - PUTAUT
          - QMNAME
          - QSGDISP
          - RCVDATA
          - RCVEXIT
          - SCYDATA
          - SCYEXIT
          - SENDDATA
          - SENDEXIT
          - SEQWRAP
          - SHARECNV
          - SHORTRTY
          - SHORTTMR
          - SPLPROT
          - SSLCAUTH
          - SSLCIPH
          - SSLPEER
          - STATCHL
          - TMPMODEL
          - TMPQPRFX
          - TPNAME
          - TPROOT
          - TRPTYPE
          - USECLTID
          - USEDLQ
          - USERID
          - XMITQ
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER COMMINFO
      href: SSFKSJ_9.4.0/refadmin/q085270_.html
      positional_parameters:
        - (comminfo name)
        - integer
        - string
      input_parameters:
        - BRIDGE
        - CCSID
        - COMMEV
        - DESCR
        - ENCODING
        - GRPADDR
        - MCHBINT
        - MCPROP
        - MONINT
        - MSGHIST
        - NSUBHIST
        - PORT
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER COMMINFO':
          - BRIDGE
          - CCSID
          - COMMEV
          - DESCR
          - ENCODING
          - GRPADDR
          - MCHBINT
          - MCPROP
          - MONINT
          - MSGHIST
          - NSUBHIST
          - PORT
    pcf:
      command: MQCMD_CHANGE_COMM_INFO
      request_href: SSFKSJ_9.4.0/reference/q049820_.html
      response_href: SSFKSJ_9.4.0/refadmin/q086960_.html
      request_parameters:
        - name: CommandContext
          pcf_type: null
          type_hint: null
        - name: EventUserId
          pcf_type: null
          type_hint: null
        - name: EventSecurityId
          pcf_type: null
          type_hint: null
        - name: EventOrigin
          pcf_type: null
          type_hint: null
        - name: MQEVO_CONSOLE
          pcf_type: null
          type_hint: null
        - name: MQEVO_INIT
          pcf_type: null
          type_hint: null
        - name: MQEVO_MSG
          pcf_type: null
          type_hint: null
        - name: MQEVO_INTERNAL
          pcf_type: null
          type_hint: null
        - name: MQEVO_OTHER
          pcf_type: null
          type_hint: null
        - name: EventQMgr
          pcf_type: null
          type_hint: null
        - name: EventAccountingToken
          pcf_type: null
          type_hint: null
        - name: EventIdentityData
          pcf_type: null
          type_hint: null
        - name: EventApplType
          pcf_type: null
          type_hint: null
        - name: EventApplName
          pcf_type: null
          type_hint: null
        - name: EventApplOrigin
          pcf_type: null
          type_hint: null
        - name: Command
          pcf_type: null
          type_hint: null
        - name: MQCMD_ARCHIVE_LOG
          pcf_type: null
          type_hint: null
        - name: MQCMD_BACKUP_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_BUFFER_POOL
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_PAGE_SET
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_SECURITY
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_STG_CLASS
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_SUBSCRIPTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_TRACE
          pcf_type: null
          type_hint: null
        - name: MQCMD_CLEAR_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_CLEAR_TOPIC_STRING
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_BUFFER_POOL
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_PAGE_SET
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_STG_CLASS
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_SUBSCRIPTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_PAGE_SET
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_STG_CLASS
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_SUBSCRIPTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_ARCHIVE
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CF_STRUC_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CHANNEL_INIT
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CHANNEL_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CHLAUTH_RECS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CLUSTER_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CMD_SERVER
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CONNECTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_LOG
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_PUBSUB_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_QSG
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SECURITY
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_STG_CLASS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SUBSCRIPTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SUB_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_THREAD
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_TOPIC_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_TRACE
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_USAGE
          pcf_type: null
          type_hint: null
        - name: MQCMD_MOVE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_PING_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_RECOVER_BSDS
          pcf_type: null
          type_hint: null
        - name: MQCMD_RECOVER_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_REFRESH_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQCMD_REFRESH_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_REFRESH_SECURITY
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_Q_STATS
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_TPIPE
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESOLVE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESOLVE_INDOUBT
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESUME_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESUME_Q_MGR_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQCMD_REVERIFY_SECURITY
          pcf_type: null
          type_hint: null
        - name: MQCMD_SET_ARCHIVE
          pcf_type: null
          type_hint: null
        - name: MQCMD_SET_CHLAUTH_REC
          pcf_type: null
          type_hint: null
        - name: MQCMD_SET_LOG
          pcf_type: null
          type_hint: null
        - name: MQCMD_SET_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_CHANNEL_INIT
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_CHANNEL_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_CMD_SERVER
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_TRACE
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CHANNEL_INIT
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CHANNEL_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CMD_SERVER
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CONNECTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_TRACE
          pcf_type: null
          type_hint: null
        - name: MQCMD_SUSPEND_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_SUSPEND_Q_MGR_CLUSTER
          pcf_type: null
          type_hint: null
        - name: CommandData
          pcf_type: null
          type_hint: null
        - name: CommandMQSC
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: FromComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: ToComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: Bridge
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCB_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMCB_ENABLED
          pcf_type: null
          type_hint: null
        - name: CCSID
          pcf_type: MQCFIN
          type_hint: int
        - name: CommEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_EXCEPTION
          pcf_type: null
          type_hint: null
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: Encoding
          pcf_type: MQCFIN
          type_hint: int
        - name: MQENC_AS_PUBLISHED
          pcf_type: null
          type_hint: null
        - name: MQENC_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQENC_REVERSED
          pcf_type: null
          type_hint: null
        - name: MQENC_S390
          pcf_type: null
          type_hint: null
        - name: MQENC_TNS
          pcf_type: null
          type_hint: null
        - name: GrpAddress
          pcf_type: MQCFST
          type_hint: str
        - name: MonitorInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgHistory
          pcf_type: MQCFIN
          type_hint: int
        - name: MulticastHeartbeat
          pcf_type: MQCFIN
          type_hint: int
        - name: MulticastPropControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCP_ALL
          pcf_type: null
          type_hint: null
        - name: MQMCP_REPLY
          pcf_type: null
          type_hint: null
        - name: MQMCP_USER
          pcf_type: null
          type_hint: null
        - name: MQMCP_NONE
          pcf_type: null
          type_hint: null
        - name: MQMCP_COMPAT
          pcf_type: null
          type_hint: null
        - name: NewSubHistory
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNSH_NONE
          pcf_type: null
          type_hint: null
        - name: MQNSH_ALL
          pcf_type: null
          type_hint: null
        - name: PortNumber
          pcf_type: MQCFIN
          type_hint: int
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - BRIDGE
          - CCSID
          - COMMEV
          - DESCR
          - ENCODING
          - GRPADDR
          - MCHBINT
          - MCPROP
          - MONINT
          - MSGHIST
          - NSUBHIST
          - PORT
        pcf_unmapped:
          - Command
          - CommandContext
          - CommandData
          - CommandMQSC
          - EventAccountingToken
          - EventApplName
          - EventApplOrigin
          - EventApplType
          - EventIdentityData
          - EventOrigin
          - EventQMgr
          - EventSecurityId
          - EventUserId
          - MQCMD_ARCHIVE_LOG
          - MQCMD_BACKUP_CF_STRUC
          - MQCMD_CHANGE_AUTH_INFO
          - MQCMD_CHANGE_BUFFER_POOL
          - MQCMD_CHANGE_CF_STRUC
          - MQCMD_CHANGE_CHANNEL
          - MQCMD_CHANGE_COMM_INFO
          - MQCMD_CHANGE_LISTENER
          - MQCMD_CHANGE_NAMELIST
          - MQCMD_CHANGE_PAGE_SET
          - MQCMD_CHANGE_PROCESS
          - MQCMD_CHANGE_Q
          - MQCMD_CHANGE_Q_MGR
          - MQCMD_CHANGE_SECURITY
          - MQCMD_CHANGE_SERVICE
          - MQCMD_CHANGE_STG_CLASS
          - MQCMD_CHANGE_SUBSCRIPTION
          - MQCMD_CHANGE_TOPIC
          - MQCMD_CHANGE_TRACE
          - MQCMD_CLEAR_Q
          - MQCMD_CLEAR_TOPIC_STRING
          - MQCMD_CREATE_AUTH_INFO
          - MQCMD_CREATE_BUFFER_POOL
          - MQCMD_CREATE_CF_STRUC
          - MQCMD_CREATE_CHANNEL
          - MQCMD_CREATE_COMM_INFO
          - MQCMD_CREATE_LISTENER
          - MQCMD_CREATE_NAMELIST
          - MQCMD_CREATE_PAGE_SET
          - MQCMD_CREATE_PROCESS
          - MQCMD_CREATE_Q
          - MQCMD_CREATE_SERVICE
          - MQCMD_CREATE_STG_CLASS
          - MQCMD_CREATE_SUBSCRIPTION
          - MQCMD_CREATE_TOPIC
          - MQCMD_DELETE_AUTH_INFO
          - MQCMD_DELETE_CF_STRUC
          - MQCMD_DELETE_CHANNEL
          - MQCMD_DELETE_COMM_INFO
          - MQCMD_DELETE_LISTENER
          - MQCMD_DELETE_NAMELIST
          - MQCMD_DELETE_PAGE_SET
          - MQCMD_DELETE_PROCESS
          - MQCMD_DELETE_Q
          - MQCMD_DELETE_SERVICE
          - MQCMD_DELETE_STG_CLASS
          - MQCMD_DELETE_SUBSCRIPTION
          - MQCMD_DELETE_TOPIC
          - MQCMD_INQUIRE_ARCHIVE
          - MQCMD_INQUIRE_AUTH_INFO
          - MQCMD_INQUIRE_CF_STRUC
          - MQCMD_INQUIRE_CF_STRUC_STATUS
          - MQCMD_INQUIRE_CHANNEL
          - MQCMD_INQUIRE_CHANNEL_INIT
          - MQCMD_INQUIRE_CHANNEL_STATUS
          - MQCMD_INQUIRE_CHLAUTH_RECS
          - MQCMD_INQUIRE_CLUSTER_Q_MGR
          - MQCMD_INQUIRE_CMD_SERVER
          - MQCMD_INQUIRE_COMM_INFO
          - MQCMD_INQUIRE_CONNECTION
          - MQCMD_INQUIRE_LISTENER
          - MQCMD_INQUIRE_LOG
          - MQCMD_INQUIRE_NAMELIST
          - MQCMD_INQUIRE_PROCESS
          - MQCMD_INQUIRE_PUBSUB_STATUS
          - MQCMD_INQUIRE_Q
          - MQCMD_INQUIRE_QSG
          - MQCMD_INQUIRE_Q_MGR
          - MQCMD_INQUIRE_Q_STATUS
          - MQCMD_INQUIRE_SECURITY
          - MQCMD_INQUIRE_SERVICE
          - MQCMD_INQUIRE_STG_CLASS
          - MQCMD_INQUIRE_SUBSCRIPTION
          - MQCMD_INQUIRE_SUB_STATUS
          - MQCMD_INQUIRE_SYSTEM
          - MQCMD_INQUIRE_THREAD
          - MQCMD_INQUIRE_TOPIC
          - MQCMD_INQUIRE_TOPIC_STATUS
          - MQCMD_INQUIRE_TRACE
          - MQCMD_INQUIRE_USAGE
          - MQCMD_MOVE_Q
          - MQCMD_PING_CHANNEL
          - MQCMD_RECOVER_BSDS
          - MQCMD_RECOVER_CF_STRUC
          - MQCMD_REFRESH_CLUSTER
          - MQCMD_REFRESH_Q_MGR
          - MQCMD_REFRESH_SECURITY
          - MQCMD_RESET_CHANNEL
          - MQCMD_RESET_CLUSTER
          - MQCMD_RESET_Q_MGR
          - MQCMD_RESET_Q_STATS
          - MQCMD_RESET_TPIPE
          - MQCMD_RESOLVE_CHANNEL
          - MQCMD_RESOLVE_INDOUBT
          - MQCMD_RESUME_Q_MGR
          - MQCMD_RESUME_Q_MGR_CLUSTER
          - MQCMD_REVERIFY_SECURITY
          - MQCMD_SET_ARCHIVE
          - MQCMD_SET_CHLAUTH_REC
          - MQCMD_SET_LOG
          - MQCMD_SET_SYSTEM
          - MQCMD_START_CHANNEL
          - MQCMD_START_CHANNEL_INIT
          - MQCMD_START_CHANNEL_LISTENER
          - MQCMD_START_CMD_SERVER
          - MQCMD_START_SERVICE
          - MQCMD_START_TRACE
          - MQCMD_STOP_CHANNEL
          - MQCMD_STOP_CHANNEL_INIT
          - MQCMD_STOP_CHANNEL_LISTENER
          - MQCMD_STOP_CMD_SERVER
          - MQCMD_STOP_CONNECTION
          - MQCMD_STOP_SERVICE
          - MQCMD_STOP_TRACE
          - MQCMD_SUSPEND_Q_MGR
          - MQCMD_SUSPEND_Q_MGR_CLUSTER
          - MQEVO_CONSOLE
          - MQEVO_INIT
          - MQEVO_INTERNAL
          - MQEVO_MSG
          - MQEVO_OTHER
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Bridge
          - CCSID
          - CommEvent
          - ComminfoName
          - ComminfoName
          - Description
          - Encoding
          - FromComminfoName
          - GrpAddress
          - MQENC_AS_PUBLISHED
          - MQENC_NORMAL
          - MQENC_REVERSED
          - MQENC_S390
          - MQENC_TNS
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_EXCEPTION
          - MQMCB_DISABLED
          - MQMCB_ENABLED
          - MQMCP_ALL
          - MQMCP_COMPAT
          - MQMCP_NONE
          - MQMCP_REPLY
          - MQMCP_USER
          - MQNSH_ALL
          - MQNSH_NONE
          - MonitorInterval
          - MsgHistory
          - MulticastHeartbeat
          - MulticastPropControl
          - NewSubHistory
          - PortNumber
          - ToComminfoName
          - Type
    notes: []
  - mqsc:
      name: ALTER LISTENER
      href: SSFKSJ_9.4.0/refadmin/q085280_.html
      positional_parameters:
        - (listener-name)
        - integer
        - listener-name
        - string
      input_parameters:
        - ADAPTER
        - BACKLOG
        - COMMANDS
        - CONTROL
        - DESCR
        - IPADDR
        - LIKE
        - LOCLNAME
        - NTBNAMES
        - PORT
        - SESSIONS
        - SOCKET
        - TPNAME
        - TRPTYPE
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER LISTENER':
          - ADAPTER
          - BACKLOG
          - COMMANDS
          - CONTROL
          - DESCR
          - IPADDR
          - LIKE
          - LOCLNAME
          - NTBNAMES
          - PORT
          - SESSIONS
          - SOCKET
          - TPNAME
          - TRPTYPE
    pcf:
      command: MQCMD_CHANGE_LISTENER
      request_href: SSFKSJ_9.4.0/refadmin/q086950_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: ListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQXPT_TCP
          pcf_type: null
          type_hint: null
        - name: MQXPT_LU62
          pcf_type: null
          type_hint: null
        - name: MQXPT_NETBIOS
          pcf_type: null
          type_hint: null
        - name: MQXPT_SPX
          pcf_type: null
          type_hint: null
        - name: FromListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: ToListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: Adapter
          pcf_type: MQCFIN
          type_hint: int
        - name: Backlog
          pcf_type: MQCFIN
          type_hint: int
        - name: Commands
          pcf_type: MQCFIN
          type_hint: int
        - name: IPAddress
          pcf_type: MQCFST
          type_hint: str
        - name: ListenerDesc
          pcf_type: MQCFST
          type_hint: str
        - name: LocalName
          pcf_type: MQCFST
          type_hint: str
        - name: NetbiosNames
          pcf_type: MQCFIN
          type_hint: int
        - name: Port
          pcf_type: MQCFIN
          type_hint: int
        - name: Replace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRP_YES
          pcf_type: null
          type_hint: null
        - name: MQRP_NO
          pcf_type: null
          type_hint: null
        - name: Sessions
          pcf_type: MQCFIN
          type_hint: int
        - name: Socket
          pcf_type: MQCFIN
          type_hint: int
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR_START
          pcf_type: null
          type_hint: null
        - name: TPName
          pcf_type: MQCFST
          type_hint: str
      response_parameters: []
    mapping:
      request:
        suggested:
          ADAPTER: Adapter
          BACKLOG: Backlog
          COMMANDS: Commands
          LOCLNAME: LocalName
          PORT: Port
          SESSIONS: Sessions
          SOCKET: Socket
          TPNAME: TPName
        ambiguous:
          {}
        unmapped:
          - CONTROL
          - DESCR
          - IPADDR
          - LIKE
          - NTBNAMES
          - TRPTYPE
        pcf_unmapped:
          - FromListenerName
          - IPAddress
          - ListenerDesc
          - ListenerName
          - MQRP_NO
          - MQRP_YES
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR_START
          - MQXPT_LU62
          - MQXPT_NETBIOS
          - MQXPT_SPX
          - MQXPT_TCP
          - NetbiosNames
          - Replace
          - StartMode
          - ToListenerName
          - TransportType
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER NAMELIST
      href: SSFKSJ_9.4.0/refadmin/q085290_.html
      positional_parameters:
        - (name)
        - name, ...
        - qmgr-name
        - string
      input_parameters:
        - CMDSCOPE
        - DESCR
        - NAMES
        - NLTYPE
        - QSGDISP
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER NAMELIST':
          - CMDSCOPE
          - DESCR
          - NAMES
          - NLTYPE
          - QSGDISP
    pcf:
      command: MQCMD_CHANGE_NAMELIST
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - DESCR
          - NAMES
          - NLTYPE
          - QSGDISP
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER PROCESS
      href: SSFKSJ_9.4.0/refadmin/q085300_.html
      positional_parameters:
        - process-name
        - qmgr-name
        - string
      input_parameters:
        - APPLICID
        - APPLTYPE
        - CMDSCOPE
        - DESCR
        - ENVRDATA
        - QSGDISP
        - USERDATA
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER PROCESS':
          - APPLICID
          - APPLTYPE
          - CMDSCOPE
          - DESCR
          - ENVRDATA
          - QSGDISP
          - USERDATA
    pcf:
      command: MQCMD_CHANGE_PROCESS
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - APPLICID
          - APPLTYPE
          - CMDSCOPE
          - DESCR
          - ENVRDATA
          - QSGDISP
          - USERDATA
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER PSID
      href: SSFKSJ_9.4.0/refadmin/q085310_.html
      positional_parameters:
        - (psid-number)
      input_parameters:
        - EXPAND
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER PSID':
          - EXPAND
    pcf:
      command: MQCMD_CHANGE_PSID
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - EXPAND
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER QMGR
      href: SSFKSJ_9.4.0/refadmin/q085320_.html
      positional_parameters:
        - 1 - 999 999 999
        - Specific_user_ID
        - clustername
        - integer
        - nlname
        - parentname
        - qmgr-name
        - string
      input_parameters:
        - FORCE
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER QMGR':
          - FORCE
        'Queue manager parameters':
          - ACCTCONO
          - ACCTINT
          - ACCTMQI
          - ACCTQ
          - ACTCHL
          - ACTIVREC
          - ACTVCONO
          - ACTVTRC
          - ADOPTCHK
          - ADOPTMCA
          - AUTHEVSC
          - AUTHOREV
          - BRIDGEEV
          - CCSID
          - CERTLABL
          - CERTQSGL
          - CERTVPOL
          - CFCONLOS
          - CHAD
          - CHADEV
          - CHADEXIT
          - CHIADAPS
          - CHIDISPS
          - CHISERVP
          - CHLAUTH
          - CHLEV
          - CLWLDATA
          - CLWLEXIT
          - CLWLLEN
          - CLWLMRUC
          - CLWLUSEQ
          - CMDEV
          - CMDSCOPE
          - CONFIGEV
          - CONNAUTH
          - CUSTOM
          - DEADQ
          - DEFCLXQ
          - DEFXMITQ
          - DESCR
          - DNSGROUP
          - DNSWLM
          - EXPRYINT
          - GROUPUR
          - IGQ
          - IGQAUT
          - IGQUSER
          - IMGINTVL
          - IMGLOGLN
          - IMGRCOVO
          - IMGRCOVQ
          - IMGSCHED
          - INHIBTEV
          - INITKEY
          - IPADDRV
          - KEYRPWD
          - LOCALEV
          - LOGGEREV
          - LSTRTMR
          - LU62ARM
          - LU62CHL
          - LUGROUP
          - LUNAME
          - MARKINT
          - MAXCHL
          - MAXHANDS
          - MAXMSGL
          - MAXPROPL
          - MAXUMSGS
          - MONACLS
          - MONCHL
          - MONQ
          - OPORTMAX
          - OPORTMIN
          - OTELPCTL
          - OTELTRAC
          - PARENT
          - PERFMEV
          - PSCLUS
          - PSMODE
          - PSNPMSG
          - PSNPRES
          - PSRTYCNT
          - PSSYNCPT
          - RCVTIME
          - RCVTMIN
          - RCVTTYPE
          - REMOTEEV
          - REPOS
          - REPOSNL
          - REVDNS
          - ROUTEREC
          - SCHINIT
          - SCMDSERV
          - SCYCASE
          - SQQMNAME
          - SSLCRLNL
          - SSLCRYP
          - SSLEV
          - SSLFIPS
          - SSLKEYR
          - SSLRKEYC
          - SSLTASKS
          - STATACLS
          - STATCHL
          - STATINT
          - STATMQI
          - STATQ
          - STRSTPEV
          - SUITEB
          - TCPCHL
          - TCPKEEP
          - TCPNAME
          - TCPSTACK
          - TRAXSTR
          - TRAXTBL
          - TREELIFE
          - TRIGINT
    pcf:
      command: MQCMD_CHANGE_Q_MGR
      request_href: SSFKSJ_9.4.0/refadmin/q087000_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087000_.html
      request_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: AccountingConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMON_ENABLED
          pcf_type: null
          type_hint: null
        - name: AccountingInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ActivityRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECORDING_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_MSG
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_Q
          pcf_type: null
          type_hint: null
        - name: AdoptNewMCACheck
          pcf_type: MQCFIN
          type_hint: int
        - name: MQADOPT_CHECK_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_NET_ADDR
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_ALL
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_NONE
          pcf_type: null
          type_hint: null
        - name: AdoptNewMCAType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQADOPT_TYPE_NO
          pcf_type: null
          type_hint: null
        - name: MQADOPT_TYPE_ALL
          pcf_type: null
          type_hint: null
        - name: AuthorityEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: AuthorityEventScope
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAUSC_FAILURES
          pcf_type: null
          type_hint: null
        - name: MQAUSC_ALLCONNS
          pcf_type: null
          type_hint: null
        - name: MQAUSC_ALLCHECKS
          pcf_type: null
          type_hint: null
        - name: BridgeEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: CertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: CertificateValPolicy
          pcf_type: MQCFIN
          type_hint: int
        - name: MQ_CERT_VAL_POLICY_ANY
          pcf_type: null
          type_hint: null
        - name: MQ_CERT_VAL_POLICY_RFC5280
          pcf_type: null
          type_hint: null
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFCONLOS_TERMINATE
          pcf_type: null
          type_hint: null
        - name: MQCFCONLOS_TOLERATE
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDef
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHAD_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQCHAD_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDefEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDefExit
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAuthenticationRecords
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLA_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQCHLA_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_EXCEPTION
          pcf_type: null
          type_hint: null
        - name: ChannelInitiatorControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChinitAdapters
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitDispatchers
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitServiceParm
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitTraceAutoStart
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTRAXSTR_YES
          pcf_type: null
          type_hint: null
        - name: MQTRAXSTR_NO
          pcf_type: null
          type_hint: null
        - name: ChinitTraceTableSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderMonitoringDefault
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ClusterSenderStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ClusterWorkLoadData
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterWorkLoadExit
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterWorkLoadLength
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLMRUChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLUseQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLWL_USEQ_ANY
          pcf_type: null
          type_hint: null
        - name: MQCLWL_USEQ_LOCAL
          pcf_type: null
          type_hint: null
        - name: CodedCharSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_NO_DISPLAY
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandServerControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ConfigurationEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: ConnAuth
          pcf_type: MQCFST
          type_hint: str
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: DeadLetterQName
          pcf_type: MQCFIN
          type_hint: int
        - name: DefClusterXmitQueueType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLXQ_SCTQ
          pcf_type: null
          type_hint: null
        - name: MQCLXQ_CHANNEL
          pcf_type: null
          type_hint: null
        - name: DefXmitQName
          pcf_type: MQCFST
          type_hint: str
        - name: DNSGroup
          pcf_type: MQCFST
          type_hint: str
        - name: DNSWLM
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDNSWLM_NO
          pcf_type: null
          type_hint: null
        - name: ExpiryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEXPI_OFF
          pcf_type: null
          type_hint: null
        - name: EncryptionPolicySuiteB
          pcf_type: MQCFIL
          type_hint: int
        - name: MQ_SUITE_B_NONE
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_128_BIT
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_192_BIT
          pcf_type: null
          type_hint: null
        - name: Force
          pcf_type: MQCFIN
          type_hint: int
        - name: GroupUR
          pcf_type: MQCFIN
          type_hint: int
        - name: MQGUR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQGUR_ENABLED
          pcf_type: null
          type_hint: null
        - name: IGQPutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIGQPA_DEFAULT
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_ONLY_IGQ
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_ALTERNATE_OR_IGQ
          pcf_type: null
          type_hint: null
        - name: IGQUserId
          pcf_type: MQCFST
          type_hint: str
        - name: ImageInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMEDIMGINTVL_OFF
          pcf_type: null
          type_hint: null
        - name: ImageLogLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMEDIMGLOGLN_OFF
          pcf_type: null
          type_hint: null
        - name: ImageRecoverObject
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: ImageSchedule
          pcf_type: MQCFST
          type_hint: str
        - name: MQMEDIMGSCHED_AUTO
          pcf_type: null
          type_hint: null
        - name: MQMEDIMGSCHED_MANUAL
          pcf_type: null
          type_hint: null
        - name: InhibitEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: InitialKey
          pcf_type: MQCFST
          type_hint: str
        - name: IntraGroupQueuing
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIGQ_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQIGQ_ENABLED
          pcf_type: null
          type_hint: null
        - name: IPAddressVersion
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIPADDR_IPV4
          pcf_type: null
          type_hint: null
        - name: MQIPADDR_IPV6
          pcf_type: null
          type_hint: null
        - name: ListenerTimer
          pcf_type: MQCFIN
          type_hint: int
        - name: LocalEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: LoggerEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: LUGroupName
          pcf_type: MQCFST
          type_hint: str
        - name: LUName
          pcf_type: MQCFST
          type_hint: str
        - name: LU62ARMSuffix
          pcf_type: MQCFST
          type_hint: str
        - name: LU62Channels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxActiveChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxHandles
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxPropertiesLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPROP_UNRESTRICTED_LENGTH
          pcf_type: null
          type_hint: null
        - name: MaxUncommittedMsgs
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: MQIStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: MsgMarkBrowseInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_PCTL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQOTEL_PCTL_AUTO
          pcf_type: null
          type_hint: null
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_TRACE_OFF
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_ON
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_NONE
          pcf_type: null
          type_hint: null
        - name: OutboundPortMax
          pcf_type: MQCFIN
          type_hint: int
        - name: OutboundPortMin
          pcf_type: MQCFIN
          type_hint: int
        - name: Parent
          pcf_type: MQCFST
          type_hint: str
        - name: PerformanceEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: PubSubClus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPSCLUS_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQPSCLUS_DISABLED
          pcf_type: null
          type_hint: null
        - name: PubSubMaxMsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: 0
          pcf_type: null
          type_hint: null
        - name: PubSubMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPSM_COMPAT
          pcf_type: null
          type_hint: null
        - name: MQPSM_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQPSM_ENABLED
          pcf_type: null
          type_hint: null
        - name: PubSubNPInputMsg
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUNDELIVERED_DISCARD
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_KEEP
          pcf_type: null
          type_hint: null
        - name: PubSubNPResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUNDELIVERED_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_SAFE
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_DISCARD
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_KEEP
          pcf_type: null
          type_hint: null
        - name: PubSubSyncPoint
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYNCPOINT_IFPER
          pcf_type: null
          type_hint: null
        - name: MQSYNCPOINT_YES
          pcf_type: null
          type_hint: null
        - name: QMgrDesc
          pcf_type: MQCFST
          type_hint: str
        - name: QSGCertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: QueueAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: ReceiveTimeout
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutMin
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRCVTIME_MULTIPLY
          pcf_type: null
          type_hint: null
        - name: MQRCVTIME_ADD
          pcf_type: null
          type_hint: null
        - name: MQRCVTIME_EQUAL
          pcf_type: null
          type_hint: null
        - name: RemoteEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: RepositoryName
          pcf_type: MQCFST
          type_hint: str
        - name: RepositoryNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: RevDns
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRDNS_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRDNS_ENABLED
          pcf_type: null
          type_hint: null
        - name: SecurityCase
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCYC_UPPER
          pcf_type: null
          type_hint: null
        - name: MQSCYC_MIXED
          pcf_type: null
          type_hint: null
        - name: SharedQQmgrName
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSQQM_USE
          pcf_type: null
          type_hint: null
        - name: MQSQQM_IGNORE
          pcf_type: null
          type_hint: null
        - name: SSLCRLNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCryptoHardware
          pcf_type: MQCFST
          type_hint: str
        - name: SYMMETRIC_CIPHER_OFF
          pcf_type: null
          type_hint: null
        - name: SYMMETRIC_CIPHER_ON
          pcf_type: null
          type_hint: null
        - name: SSLEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: SSLFipsRequired
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSSL_FIPS_NO
          pcf_type: null
          type_hint: null
        - name: MQSSL_FIPS_YES
          pcf_type: null
          type_hint: null
        - name: SSLKeyRepository
          pcf_type: MQCFST
          type_hint: str
        - name: SSLKeyRepositoryPassword
          pcf_type: MQCFST
          type_hint: str
        - name: SSLKeyResetCount
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLTasks
          pcf_type: MQCFIN
          type_hint: int
        - name: StartStopEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: StatisticsInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPKeepAlive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTCPKEEP_YES
          pcf_type: null
          type_hint: null
        - name: MQTCPKEEP_NO
          pcf_type: null
          type_hint: null
        - name: TCPName
          pcf_type: MQCFST
          type_hint: str
        - name: TCPStackType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTCPSTACK_SINGLE
          pcf_type: null
          type_hint: null
        - name: MQTCPSTACK_MULTIPLE
          pcf_type: null
          type_hint: null
        - name: TraceRouteRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECORDING_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_MSG
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_Q
          pcf_type: null
          type_hint: null
        - name: TreeLifeTime
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CERT_LABEL_NOT_ALLOWED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_EVENT_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_EVENT_WRONG_TYPE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_EXIT_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_EXIT_WRONG_TYPE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_WRONG_TYPE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_FORCE_VALUE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PATH_NOT_VALID
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PWD_LENGTH_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PSCLUS_DISABLED_TOPDEF
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PSCLUS_TOPIC_EXSITS
          pcf_type: null
          type_hint: null
        - name: MQRCCF_Q_MGR_ATTR_CONFLICT
          pcf_type: null
          type_hint: null
        - name: MQRCCF_Q_MGR_CCSID_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_REPOS_NAME_CONFLICT
          pcf_type: null
          type_hint: null
        - name: MQRCCF_UNKNOWN_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_WRONG_CHANNEL_TYPE
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: AccountingConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMON_ENABLED
          pcf_type: null
          type_hint: null
        - name: AccountingInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ActivityRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECORDING_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_MSG
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_Q
          pcf_type: null
          type_hint: null
        - name: AdoptNewMCACheck
          pcf_type: MQCFIN
          type_hint: int
        - name: MQADOPT_CHECK_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_NET_ADDR
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_ALL
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_NONE
          pcf_type: null
          type_hint: null
        - name: AdoptNewMCAType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQADOPT_TYPE_NO
          pcf_type: null
          type_hint: null
        - name: MQADOPT_TYPE_ALL
          pcf_type: null
          type_hint: null
        - name: AuthorityEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: AuthorityEventScope
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAUSC_FAILURES
          pcf_type: null
          type_hint: null
        - name: MQAUSC_ALLCONNS
          pcf_type: null
          type_hint: null
        - name: MQAUSC_ALLCHECKS
          pcf_type: null
          type_hint: null
        - name: BridgeEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: CertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: CertificateValPolicy
          pcf_type: MQCFIN
          type_hint: int
        - name: MQ_CERT_VAL_POLICY_ANY
          pcf_type: null
          type_hint: null
        - name: MQ_CERT_VAL_POLICY_RFC5280
          pcf_type: null
          type_hint: null
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFCONLOS_TERMINATE
          pcf_type: null
          type_hint: null
        - name: MQCFCONLOS_TOLERATE
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDef
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHAD_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQCHAD_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDefEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDefExit
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAuthenticationRecords
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLA_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQCHLA_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_EXCEPTION
          pcf_type: null
          type_hint: null
        - name: ChannelInitiatorControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChinitAdapters
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitDispatchers
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitServiceParm
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitTraceAutoStart
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTRAXSTR_YES
          pcf_type: null
          type_hint: null
        - name: MQTRAXSTR_NO
          pcf_type: null
          type_hint: null
        - name: ChinitTraceTableSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderMonitoringDefault
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ClusterSenderStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ClusterWorkLoadData
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterWorkLoadExit
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterWorkLoadLength
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLMRUChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLUseQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLWL_USEQ_ANY
          pcf_type: null
          type_hint: null
        - name: MQCLWL_USEQ_LOCAL
          pcf_type: null
          type_hint: null
        - name: CodedCharSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_NO_DISPLAY
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandServerControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ConfigurationEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: ConnAuth
          pcf_type: MQCFST
          type_hint: str
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: DeadLetterQName
          pcf_type: MQCFIN
          type_hint: int
        - name: DefClusterXmitQueueType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLXQ_SCTQ
          pcf_type: null
          type_hint: null
        - name: MQCLXQ_CHANNEL
          pcf_type: null
          type_hint: null
        - name: DefXmitQName
          pcf_type: MQCFST
          type_hint: str
        - name: DNSGroup
          pcf_type: MQCFST
          type_hint: str
        - name: DNSWLM
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDNSWLM_NO
          pcf_type: null
          type_hint: null
        - name: ExpiryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEXPI_OFF
          pcf_type: null
          type_hint: null
        - name: EncryptionPolicySuiteB
          pcf_type: MQCFIL
          type_hint: int
        - name: MQ_SUITE_B_NONE
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_128_BIT
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_192_BIT
          pcf_type: null
          type_hint: null
        - name: Force
          pcf_type: MQCFIN
          type_hint: int
        - name: GroupUR
          pcf_type: MQCFIN
          type_hint: int
        - name: MQGUR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQGUR_ENABLED
          pcf_type: null
          type_hint: null
        - name: IGQPutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIGQPA_DEFAULT
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_ONLY_IGQ
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_ALTERNATE_OR_IGQ
          pcf_type: null
          type_hint: null
        - name: IGQUserId
          pcf_type: MQCFST
          type_hint: str
        - name: ImageInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMEDIMGINTVL_OFF
          pcf_type: null
          type_hint: null
        - name: ImageLogLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMEDIMGLOGLN_OFF
          pcf_type: null
          type_hint: null
        - name: ImageRecoverObject
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: ImageSchedule
          pcf_type: MQCFST
          type_hint: str
        - name: MQMEDIMGSCHED_AUTO
          pcf_type: null
          type_hint: null
        - name: MQMEDIMGSCHED_MANUAL
          pcf_type: null
          type_hint: null
        - name: InhibitEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: InitialKey
          pcf_type: MQCFST
          type_hint: str
        - name: IntraGroupQueuing
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIGQ_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQIGQ_ENABLED
          pcf_type: null
          type_hint: null
        - name: IPAddressVersion
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIPADDR_IPV4
          pcf_type: null
          type_hint: null
        - name: MQIPADDR_IPV6
          pcf_type: null
          type_hint: null
        - name: ListenerTimer
          pcf_type: MQCFIN
          type_hint: int
        - name: LocalEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: LoggerEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: LUGroupName
          pcf_type: MQCFST
          type_hint: str
        - name: LUName
          pcf_type: MQCFST
          type_hint: str
        - name: LU62ARMSuffix
          pcf_type: MQCFST
          type_hint: str
        - name: LU62Channels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxActiveChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxHandles
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxPropertiesLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPROP_UNRESTRICTED_LENGTH
          pcf_type: null
          type_hint: null
        - name: MaxUncommittedMsgs
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: MQIStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: MsgMarkBrowseInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_PCTL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQOTEL_PCTL_AUTO
          pcf_type: null
          type_hint: null
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_TRACE_OFF
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_ON
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_NONE
          pcf_type: null
          type_hint: null
        - name: OutboundPortMax
          pcf_type: MQCFIN
          type_hint: int
        - name: OutboundPortMin
          pcf_type: MQCFIN
          type_hint: int
        - name: Parent
          pcf_type: MQCFST
          type_hint: str
        - name: PerformanceEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: PubSubClus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPSCLUS_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQPSCLUS_DISABLED
          pcf_type: null
          type_hint: null
        - name: PubSubMaxMsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: 0
          pcf_type: null
          type_hint: null
        - name: PubSubMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPSM_COMPAT
          pcf_type: null
          type_hint: null
        - name: MQPSM_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQPSM_ENABLED
          pcf_type: null
          type_hint: null
        - name: PubSubNPInputMsg
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUNDELIVERED_DISCARD
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_KEEP
          pcf_type: null
          type_hint: null
        - name: PubSubNPResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUNDELIVERED_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_SAFE
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_DISCARD
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_KEEP
          pcf_type: null
          type_hint: null
        - name: PubSubSyncPoint
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYNCPOINT_IFPER
          pcf_type: null
          type_hint: null
        - name: MQSYNCPOINT_YES
          pcf_type: null
          type_hint: null
        - name: QMgrDesc
          pcf_type: MQCFST
          type_hint: str
        - name: QSGCertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: QueueAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: ReceiveTimeout
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutMin
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRCVTIME_MULTIPLY
          pcf_type: null
          type_hint: null
        - name: MQRCVTIME_ADD
          pcf_type: null
          type_hint: null
        - name: MQRCVTIME_EQUAL
          pcf_type: null
          type_hint: null
        - name: RemoteEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: RepositoryName
          pcf_type: MQCFST
          type_hint: str
        - name: RepositoryNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: RevDns
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRDNS_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRDNS_ENABLED
          pcf_type: null
          type_hint: null
        - name: SecurityCase
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCYC_UPPER
          pcf_type: null
          type_hint: null
        - name: MQSCYC_MIXED
          pcf_type: null
          type_hint: null
        - name: SharedQQmgrName
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSQQM_USE
          pcf_type: null
          type_hint: null
        - name: MQSQQM_IGNORE
          pcf_type: null
          type_hint: null
        - name: SSLCRLNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCryptoHardware
          pcf_type: MQCFST
          type_hint: str
        - name: SYMMETRIC_CIPHER_OFF
          pcf_type: null
          type_hint: null
        - name: SYMMETRIC_CIPHER_ON
          pcf_type: null
          type_hint: null
        - name: SSLEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: SSLFipsRequired
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSSL_FIPS_NO
          pcf_type: null
          type_hint: null
        - name: MQSSL_FIPS_YES
          pcf_type: null
          type_hint: null
        - name: SSLKeyRepository
          pcf_type: MQCFST
          type_hint: str
        - name: SSLKeyRepositoryPassword
          pcf_type: MQCFST
          type_hint: str
        - name: SSLKeyResetCount
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLTasks
          pcf_type: MQCFIN
          type_hint: int
        - name: StartStopEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: StatisticsInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPKeepAlive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTCPKEEP_YES
          pcf_type: null
          type_hint: null
        - name: MQTCPKEEP_NO
          pcf_type: null
          type_hint: null
        - name: TCPName
          pcf_type: MQCFST
          type_hint: str
        - name: TCPStackType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTCPSTACK_SINGLE
          pcf_type: null
          type_hint: null
        - name: MQTCPSTACK_MULTIPLE
          pcf_type: null
          type_hint: null
        - name: TraceRouteRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECORDING_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_MSG
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_Q
          pcf_type: null
          type_hint: null
        - name: TreeLifeTime
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CERT_LABEL_NOT_ALLOWED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_EVENT_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_EVENT_WRONG_TYPE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_EXIT_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_EXIT_WRONG_TYPE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHAD_WRONG_TYPE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_FORCE_VALUE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PATH_NOT_VALID
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PWD_LENGTH_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PSCLUS_DISABLED_TOPDEF
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PSCLUS_TOPIC_EXSITS
          pcf_type: null
          type_hint: null
        - name: MQRCCF_Q_MGR_ATTR_CONFLICT
          pcf_type: null
          type_hint: null
        - name: MQRCCF_Q_MGR_CCSID_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_REPOS_NAME_CONFLICT
          pcf_type: null
          type_hint: null
        - name: MQRCCF_UNKNOWN_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_WRONG_CHANNEL_TYPE
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          FORCE: Force
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - 0
          - AccountingConnOverride
          - AccountingInterval
          - ActivityRecording
          - AdoptNewMCACheck
          - AdoptNewMCAType
          - AuthorityEvent
          - AuthorityEventScope
          - BridgeEvent
          - CFConlos
          - CLWLMRUChannels
          - CLWLUseQ
          - CertificateLabel
          - CertificateValPolicy
          - ChannelAuthenticationRecords
          - ChannelAutoDef
          - ChannelAutoDefEvent
          - ChannelAutoDefExit
          - ChannelEvent
          - ChannelInitiatorControl
          - ChannelMonitoring
          - ChannelStatistics
          - ChinitAdapters
          - ChinitDispatchers
          - ChinitServiceParm
          - ChinitTraceAutoStart
          - ChinitTraceTableSize
          - ClusterSenderMonitoringDefault
          - ClusterSenderStatistics
          - ClusterWorkLoadData
          - ClusterWorkLoadExit
          - ClusterWorkLoadLength
          - CodedCharSetId
          - CommandEvent
          - CommandScope
          - CommandServerControl
          - ConfigurationEvent
          - ConnAuth
          - Custom
          - DNSGroup
          - DNSWLM
          - DeadLetterQName
          - DefClusterXmitQueueType
          - DefXmitQName
          - EncryptionPolicySuiteB
          - ExpiryInterval
          - GroupUR
          - IGQPutAuthority
          - IGQUserId
          - IPAddressVersion
          - ImageInterval
          - ImageLogLength
          - ImageRecoverObject
          - ImageRecoverQueue
          - ImageSchedule
          - InhibitEvent
          - InitialKey
          - IntraGroupQueuing
          - LU62ARMSuffix
          - LU62Channels
          - LUGroupName
          - LUName
          - ListenerTimer
          - LocalEvent
          - LoggerEvent
          - MQADOPT_CHECK_ALL
          - MQADOPT_CHECK_NET_ADDR
          - MQADOPT_CHECK_NONE
          - MQADOPT_CHECK_Q_MGR_NAME
          - MQADOPT_TYPE_ALL
          - MQADOPT_TYPE_NO
          - MQAUSC_ALLCHECKS
          - MQAUSC_ALLCONNS
          - MQAUSC_FAILURES
          - MQCFCONLOS_TERMINATE
          - MQCFCONLOS_TOLERATE
          - MQCHAD_DISABLED
          - MQCHAD_ENABLED
          - MQCHLA_DISABLED
          - MQCHLA_ENABLED
          - MQCLWL_USEQ_ANY
          - MQCLWL_USEQ_LOCAL
          - MQCLXQ_CHANNEL
          - MQCLXQ_SCTQ
          - MQDNSWLM_NO
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_EXCEPTION
          - MQEVR_NO_DISPLAY
          - MQEXPI_OFF
          - MQGUR_DISABLED
          - MQGUR_ENABLED
          - MQIAccounting
          - MQIGQPA_ALTERNATE_OR_IGQ
          - MQIGQPA_CONTEXT
          - MQIGQPA_DEFAULT
          - MQIGQPA_ONLY_IGQ
          - MQIGQ_DISABLED
          - MQIGQ_ENABLED
          - MQIMGRCOV_NO
          - MQIMGRCOV_NO
          - MQIMGRCOV_YES
          - MQIMGRCOV_YES
          - MQIPADDR_IPV4
          - MQIPADDR_IPV6
          - MQIStatistics
          - MQMEDIMGINTVL_OFF
          - MQMEDIMGLOGLN_OFF
          - MQMEDIMGSCHED_AUTO
          - MQMEDIMGSCHED_MANUAL
          - MQMON_DISABLED
          - MQMON_ENABLED
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQOTEL_PCTL_AUTO
          - MQOTEL_PCTL_MANUAL
          - MQOTEL_TRACE_NONE
          - MQOTEL_TRACE_OFF
          - MQOTEL_TRACE_ON
          - MQPROP_UNRESTRICTED_LENGTH
          - MQPSCLUS_DISABLED
          - MQPSCLUS_ENABLED
          - MQPSM_COMPAT
          - MQPSM_DISABLED
          - MQPSM_ENABLED
          - MQRCCF_CERT_LABEL_NOT_ALLOWED
          - MQRCCF_CHAD_ERROR
          - MQRCCF_CHAD_EVENT_ERROR
          - MQRCCF_CHAD_EVENT_WRONG_TYPE
          - MQRCCF_CHAD_EXIT_ERROR
          - MQRCCF_CHAD_EXIT_WRONG_TYPE
          - MQRCCF_CHAD_WRONG_TYPE
          - MQRCCF_FORCE_VALUE_ERROR
          - MQRCCF_PATH_NOT_VALID
          - MQRCCF_PSCLUS_DISABLED_TOPDEF
          - MQRCCF_PSCLUS_TOPIC_EXSITS
          - MQRCCF_PWD_LENGTH_ERROR
          - MQRCCF_Q_MGR_ATTR_CONFLICT
          - MQRCCF_Q_MGR_CCSID_ERROR
          - MQRCCF_REPOS_NAME_CONFLICT
          - MQRCCF_UNKNOWN_Q_MGR
          - MQRCCF_WRONG_CHANNEL_TYPE
          - MQRCVTIME_ADD
          - MQRCVTIME_EQUAL
          - MQRCVTIME_MULTIPLY
          - MQRDNS_DISABLED
          - MQRDNS_ENABLED
          - MQRECORDING_DISABLED
          - MQRECORDING_DISABLED
          - MQRECORDING_MSG
          - MQRECORDING_MSG
          - MQRECORDING_Q
          - MQRECORDING_Q
          - MQSCYC_MIXED
          - MQSCYC_UPPER
          - MQSQQM_IGNORE
          - MQSQQM_USE
          - MQSSL_FIPS_NO
          - MQSSL_FIPS_YES
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR
          - MQSYNCPOINT_IFPER
          - MQSYNCPOINT_YES
          - MQTCPKEEP_NO
          - MQTCPKEEP_YES
          - MQTCPSTACK_MULTIPLE
          - MQTCPSTACK_SINGLE
          - MQTRAXSTR_NO
          - MQTRAXSTR_YES
          - MQUNDELIVERED_DISCARD
          - MQUNDELIVERED_DISCARD
          - MQUNDELIVERED_KEEP
          - MQUNDELIVERED_KEEP
          - MQUNDELIVERED_NORMAL
          - MQUNDELIVERED_SAFE
          - MQ_CERT_VAL_POLICY_ANY
          - MQ_CERT_VAL_POLICY_RFC5280
          - MQ_SUITE_B_128_BIT
          - MQ_SUITE_B_192_BIT
          - MQ_SUITE_B_NONE
          - MaxActiveChannels
          - MaxChannels
          - MaxHandles
          - MaxMsgLength
          - MaxPropertiesLength
          - MaxUncommittedMsgs
          - MsgMarkBrowseInterval
          - OTELPropagationControl
          - OTELTrace
          - OutboundPortMax
          - OutboundPortMin
          - Parent
          - PerformanceEvent
          - PubSubClus
          - PubSubMaxMsgRetryCount
          - PubSubMode
          - PubSubNPInputMsg
          - PubSubNPResponse
          - PubSubSyncPoint
          - QMgrDesc
          - QSGCertificateLabel
          - QueueAccounting
          - QueueMonitoring
          - QueueStatistics
          - Reason
          - ReceiveTimeout
          - ReceiveTimeoutMin
          - ReceiveTimeoutType
          - RemoteEvent
          - RepositoryName
          - RepositoryNamelist
          - Required
          - RevDns
          - SSLCRLNamelist
          - SSLCryptoHardware
          - SSLEvent
          - SSLFipsRequired
          - SSLKeyRepository
          - SSLKeyRepositoryPassword
          - SSLKeyResetCount
          - SSLTasks
          - SYMMETRIC_CIPHER_OFF
          - SYMMETRIC_CIPHER_ON
          - SecurityCase
          - SharedQQmgrName
          - StartStopEvent
          - StatisticsInterval
          - TCPChannels
          - TCPKeepAlive
          - TCPName
          - TCPStackType
          - TraceRouteRecording
          - TreeLifeTime
          - TriggerInterval
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - 0
          - AccountingConnOverride
          - AccountingInterval
          - ActivityRecording
          - AdoptNewMCACheck
          - AdoptNewMCAType
          - AuthorityEvent
          - AuthorityEventScope
          - BridgeEvent
          - CFConlos
          - CLWLMRUChannels
          - CLWLUseQ
          - CertificateLabel
          - CertificateValPolicy
          - ChannelAuthenticationRecords
          - ChannelAutoDef
          - ChannelAutoDefEvent
          - ChannelAutoDefExit
          - ChannelEvent
          - ChannelInitiatorControl
          - ChannelMonitoring
          - ChannelStatistics
          - ChinitAdapters
          - ChinitDispatchers
          - ChinitServiceParm
          - ChinitTraceAutoStart
          - ChinitTraceTableSize
          - ClusterSenderMonitoringDefault
          - ClusterSenderStatistics
          - ClusterWorkLoadData
          - ClusterWorkLoadExit
          - ClusterWorkLoadLength
          - CodedCharSetId
          - CommandEvent
          - CommandScope
          - CommandServerControl
          - ConfigurationEvent
          - ConnAuth
          - Custom
          - DNSGroup
          - DNSWLM
          - DeadLetterQName
          - DefClusterXmitQueueType
          - DefXmitQName
          - EncryptionPolicySuiteB
          - ExpiryInterval
          - Force
          - GroupUR
          - IGQPutAuthority
          - IGQUserId
          - IPAddressVersion
          - ImageInterval
          - ImageLogLength
          - ImageRecoverObject
          - ImageRecoverQueue
          - ImageSchedule
          - InhibitEvent
          - InitialKey
          - IntraGroupQueuing
          - LU62ARMSuffix
          - LU62Channels
          - LUGroupName
          - LUName
          - ListenerTimer
          - LocalEvent
          - LoggerEvent
          - MQADOPT_CHECK_ALL
          - MQADOPT_CHECK_NET_ADDR
          - MQADOPT_CHECK_NONE
          - MQADOPT_CHECK_Q_MGR_NAME
          - MQADOPT_TYPE_ALL
          - MQADOPT_TYPE_NO
          - MQAUSC_ALLCHECKS
          - MQAUSC_ALLCONNS
          - MQAUSC_FAILURES
          - MQCFCONLOS_TERMINATE
          - MQCFCONLOS_TOLERATE
          - MQCHAD_DISABLED
          - MQCHAD_ENABLED
          - MQCHLA_DISABLED
          - MQCHLA_ENABLED
          - MQCLWL_USEQ_ANY
          - MQCLWL_USEQ_LOCAL
          - MQCLXQ_CHANNEL
          - MQCLXQ_SCTQ
          - MQDNSWLM_NO
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_EXCEPTION
          - MQEVR_NO_DISPLAY
          - MQEXPI_OFF
          - MQGUR_DISABLED
          - MQGUR_ENABLED
          - MQIAccounting
          - MQIGQPA_ALTERNATE_OR_IGQ
          - MQIGQPA_CONTEXT
          - MQIGQPA_DEFAULT
          - MQIGQPA_ONLY_IGQ
          - MQIGQ_DISABLED
          - MQIGQ_ENABLED
          - MQIMGRCOV_NO
          - MQIMGRCOV_NO
          - MQIMGRCOV_YES
          - MQIMGRCOV_YES
          - MQIPADDR_IPV4
          - MQIPADDR_IPV6
          - MQIStatistics
          - MQMEDIMGINTVL_OFF
          - MQMEDIMGLOGLN_OFF
          - MQMEDIMGSCHED_AUTO
          - MQMEDIMGSCHED_MANUAL
          - MQMON_DISABLED
          - MQMON_ENABLED
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQOTEL_PCTL_AUTO
          - MQOTEL_PCTL_MANUAL
          - MQOTEL_TRACE_NONE
          - MQOTEL_TRACE_OFF
          - MQOTEL_TRACE_ON
          - MQPROP_UNRESTRICTED_LENGTH
          - MQPSCLUS_DISABLED
          - MQPSCLUS_ENABLED
          - MQPSM_COMPAT
          - MQPSM_DISABLED
          - MQPSM_ENABLED
          - MQRCCF_CERT_LABEL_NOT_ALLOWED
          - MQRCCF_CHAD_ERROR
          - MQRCCF_CHAD_EVENT_ERROR
          - MQRCCF_CHAD_EVENT_WRONG_TYPE
          - MQRCCF_CHAD_EXIT_ERROR
          - MQRCCF_CHAD_EXIT_WRONG_TYPE
          - MQRCCF_CHAD_WRONG_TYPE
          - MQRCCF_FORCE_VALUE_ERROR
          - MQRCCF_PATH_NOT_VALID
          - MQRCCF_PSCLUS_DISABLED_TOPDEF
          - MQRCCF_PSCLUS_TOPIC_EXSITS
          - MQRCCF_PWD_LENGTH_ERROR
          - MQRCCF_Q_MGR_ATTR_CONFLICT
          - MQRCCF_Q_MGR_CCSID_ERROR
          - MQRCCF_REPOS_NAME_CONFLICT
          - MQRCCF_UNKNOWN_Q_MGR
          - MQRCCF_WRONG_CHANNEL_TYPE
          - MQRCVTIME_ADD
          - MQRCVTIME_EQUAL
          - MQRCVTIME_MULTIPLY
          - MQRDNS_DISABLED
          - MQRDNS_ENABLED
          - MQRECORDING_DISABLED
          - MQRECORDING_DISABLED
          - MQRECORDING_MSG
          - MQRECORDING_MSG
          - MQRECORDING_Q
          - MQRECORDING_Q
          - MQSCYC_MIXED
          - MQSCYC_UPPER
          - MQSQQM_IGNORE
          - MQSQQM_USE
          - MQSSL_FIPS_NO
          - MQSSL_FIPS_YES
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR
          - MQSYNCPOINT_IFPER
          - MQSYNCPOINT_YES
          - MQTCPKEEP_NO
          - MQTCPKEEP_YES
          - MQTCPSTACK_MULTIPLE
          - MQTCPSTACK_SINGLE
          - MQTRAXSTR_NO
          - MQTRAXSTR_YES
          - MQUNDELIVERED_DISCARD
          - MQUNDELIVERED_DISCARD
          - MQUNDELIVERED_KEEP
          - MQUNDELIVERED_KEEP
          - MQUNDELIVERED_NORMAL
          - MQUNDELIVERED_SAFE
          - MQ_CERT_VAL_POLICY_ANY
          - MQ_CERT_VAL_POLICY_RFC5280
          - MQ_SUITE_B_128_BIT
          - MQ_SUITE_B_192_BIT
          - MQ_SUITE_B_NONE
          - MaxActiveChannels
          - MaxChannels
          - MaxHandles
          - MaxMsgLength
          - MaxPropertiesLength
          - MaxUncommittedMsgs
          - MsgMarkBrowseInterval
          - OTELPropagationControl
          - OTELTrace
          - OutboundPortMax
          - OutboundPortMin
          - Parent
          - PerformanceEvent
          - PubSubClus
          - PubSubMaxMsgRetryCount
          - PubSubMode
          - PubSubNPInputMsg
          - PubSubNPResponse
          - PubSubSyncPoint
          - QMgrDesc
          - QSGCertificateLabel
          - QueueAccounting
          - QueueMonitoring
          - QueueStatistics
          - Reason
          - ReceiveTimeout
          - ReceiveTimeoutMin
          - ReceiveTimeoutType
          - RemoteEvent
          - RepositoryName
          - RepositoryNamelist
          - Required
          - RevDns
          - SSLCRLNamelist
          - SSLCryptoHardware
          - SSLEvent
          - SSLFipsRequired
          - SSLKeyRepository
          - SSLKeyRepositoryPassword
          - SSLKeyResetCount
          - SSLTasks
          - SYMMETRIC_CIPHER_OFF
          - SYMMETRIC_CIPHER_ON
          - SecurityCase
          - SharedQQmgrName
          - StartStopEvent
          - StatisticsInterval
          - TCPChannels
          - TCPKeepAlive
          - TCPName
          - TCPStackType
          - TraceRouteRecording
          - TreeLifeTime
          - TriggerInterval
    notes: []
  - mqsc:
      name: ALTER SECURITY
      href: SSFKSJ_9.4.0/refadmin/q085380_.html
      positional_parameters:
        - integer
        - qmgr-name
      input_parameters:
        - CMDSCOPE
        - INTERVAL
        - TIMEOUT
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER SECURITY':
          - CMDSCOPE
          - INTERVAL
          - TIMEOUT
    pcf:
      command: MQCMD_CHANGE_SECURITY
      request_href: SSFKSJ_9.4.0/refadmin/q087010_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087010_.html
      request_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SecurityTimeout
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SecurityTimeout
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - INTERVAL
          - TIMEOUT
        pcf_unmapped:
          - CommandScope
          - Required
          - SecurityInterval
          - SecurityTimeout
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - Required
          - SecurityInterval
          - SecurityTimeout
    notes: []
  - mqsc:
      name: ALTER SERVICE
      href: SSFKSJ_9.4.0/refadmin/q085390_.html
      positional_parameters:
        - (service-name)
        - service-name
        - string
      input_parameters:
        - CONTROL
        - DESCR
        - LIKE
        - NOREPLACE
        - REPLACE
        - SERVTYPE
        - STARTARG
        - STARTCMD
        - STDERR
        - STDOUT
        - STOPARG
        - STOPCMD
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER SERVICE':
          - CONTROL
          - DESCR
          - LIKE
          - NOREPLACE
          - REPLACE
          - SERVTYPE
          - STARTARG
          - STARTCMD
          - STDERR
          - STDOUT
          - STOPARG
          - STOPCMD
    pcf:
      command: MQCMD_CHANGE_SERVICE
      request_href: SSFKSJ_9.4.0/refadmin/q087030_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: FromServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: ToServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: Replace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRP_YES
          pcf_type: null
          type_hint: null
        - name: MQRP_NO
          pcf_type: null
          type_hint: null
        - name: ServiceDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_TYPE_SERVER
          pcf_type: null
          type_hint: null
        - name: MQSVC_TYPE_COMMAND
          pcf_type: null
          type_hint: null
        - name: StartArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StartCommand
          pcf_type: MQCFST
          type_hint: str
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR_START
          pcf_type: null
          type_hint: null
        - name: StderrDestination
          pcf_type: MQCFST
          type_hint: str
        - name: StdoutDestination
          pcf_type: MQCFST
          type_hint: str
        - name: StopArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StopCommand
          pcf_type: MQCFST
          type_hint: str
      response_parameters: []
    mapping:
      request:
        suggested:
          REPLACE: Replace
        ambiguous:
          NOREPLACE:
            - Replace
          SERVTYPE:
            - ServiceType
        unmapped:
          - CONTROL
          - DESCR
          - LIKE
          - STARTARG
          - STARTCMD
          - STDERR
          - STDOUT
          - STOPARG
          - STOPCMD
        pcf_unmapped:
          - FromServiceName
          - MQRP_NO
          - MQRP_YES
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR_START
          - MQSVC_TYPE_COMMAND
          - MQSVC_TYPE_SERVER
          - ServiceDesc
          - ServiceName
          - ServiceType
          - StartArguments
          - StartCommand
          - StartMode
          - StderrDestination
          - StdoutDestination
          - StopArguments
          - StopCommand
          - ToServiceName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER SMDS
      href: SSFKSJ_9.4.0/refadmin/q085400_.html
      positional_parameters:
        - qmgr-name
        - structure-name
      input_parameters:
        - CFSTRUCT
        - DSBUFS
        - DSEXPAND
        - SMDS
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER SMDS':
          - CFSTRUCT
          - DSBUFS
          - DSEXPAND
          - SMDS
    pcf:
      command: MQCMD_CHANGE_SMDS
      request_href: SSFKSJ_9.4.0/refadmin/q087020_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087020_.html
      request_parameters:
        - name: SMDS
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: DSBufs
          pcf_type: MQCFIN
          type_hint: int
        - name: DSEXPAND
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDSE_YES
          pcf_type: null
          type_hint: null
        - name: MQDSE_NO
          pcf_type: null
          type_hint: null
        - name: MQDSE_DEFAULT
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: SMDS
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: DSBufs
          pcf_type: MQCFIN
          type_hint: int
        - name: DSEXPAND
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDSE_YES
          pcf_type: null
          type_hint: null
        - name: MQDSE_NO
          pcf_type: null
          type_hint: null
        - name: MQDSE_DEFAULT
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          DSBUFS: DSBufs
          DSEXPAND: DSEXPAND
          SMDS: SMDS
        ambiguous:
          {}
        unmapped:
          - CFSTRUCT
        pcf_unmapped:
          - CFStrucName
          - MQDSE_DEFAULT
          - MQDSE_NO
          - MQDSE_YES
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFStrucName
          - DSBufs
          - DSEXPAND
          - MQDSE_DEFAULT
          - MQDSE_NO
          - MQDSE_YES
          - SMDS
    notes: []
  - mqsc:
      name: ALTER STGCLASS
      href: SSFKSJ_9.4.0/refadmin/q085410_.html
      positional_parameters:
        - (storage-class)
        - application name
        - description
        - group name
        - integer
        - member name
        - qmgr-name
      input_parameters:
        - CMDSCOPE
        - DESCR
        - PASSTKTA
        - PSID
        - QSGDISP
        - XCFGNAME
        - XCFMNAME
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER STGCLASS':
          - CMDSCOPE
          - DESCR
          - PASSTKTA
          - PSID
          - QSGDISP
          - XCFGNAME
          - XCFMNAME
    pcf:
      command: MQCMD_CHANGE_STGCLASS
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - DESCR
          - PASSTKTA
          - PSID
          - QSGDISP
          - XCFGNAME
          - XCFMNAME
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER SUB
      href: SSFKSJ_9.4.0/refadmin/q085420_.html
      positional_parameters:
        - integer
        - qmgr-name
        - string
      input_parameters:
        - CMDSCOPE
        - DEST
        - DESTCORL
        - DESTQMGR
        - EXPIRY
        - PSPROP
        - PUBACCT
        - PUBAPPID
        - PUBPRTY
        - REQONLY
        - SUBUSER
        - USERDATA
        - VARUSER
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER SUB':
          - CMDSCOPE
          - DEST
          - DESTCORL
          - DESTQMGR
          - EXPIRY
          - PSPROP
          - PUBACCT
          - PUBAPPID
          - PUBPRTY
          - REQONLY
          - SUBUSER
          - USERDATA
          - VARUSER
    pcf:
      command: MQCMD_CHANGE_SUB
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - DEST
          - DESTCORL
          - DESTQMGR
          - EXPIRY
          - PSPROP
          - PUBACCT
          - PUBAPPID
          - PUBPRTY
          - REQONLY
          - SUBUSER
          - USERDATA
          - VARUSER
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER TOPIC
      href: SSFKSJ_9.4.0/refadmin/q085430_.html
      positional_parameters:
        - (topic-name)
        - comminfo-name
        - integer
        - qmgr-name
        - string
      input_parameters:
        - CAPEXPRY
        - CLROUTE
        - CLUSTER
        - CMDSCOPE
        - COMMINFO
        - CUSTOM
        - DEFPRESP
        - DEFPRTY
        - DEFPSIST
        - DESCR
        - DURSUB
        - MCAST
        - MDURMDL
        - MNDURMDL
        - NPMSGDLV
        - PMSGDLV
        - PROXYSUB
        - PUB
        - PUBSCOPE
        - QSGDISP
        - SUB
        - SUBSCOPE
        - TOPICSTR
        - TYPE
        - USEDLQ
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER TOPIC':
          - CAPEXPRY
          - CLROUTE
          - CLUSTER
          - CMDSCOPE
          - COMMINFO
          - CUSTOM
          - DEFPRESP
          - DEFPRTY
          - DEFPSIST
          - DESCR
          - DURSUB
          - MCAST
          - MDURMDL
          - MNDURMDL
          - NPMSGDLV
          - PMSGDLV
          - PROXYSUB
          - PUB
          - PUBSCOPE
          - QSGDISP
          - SUB
          - SUBSCOPE
          - TOPICSTR
          - TYPE
          - USEDLQ
    pcf:
      command: MQCMD_CHANGE_TOPIC
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CAPEXPRY
          - CLROUTE
          - CLUSTER
          - CMDSCOPE
          - COMMINFO
          - CUSTOM
          - DEFPRESP
          - DEFPRTY
          - DEFPSIST
          - DESCR
          - DURSUB
          - MCAST
          - MDURMDL
          - MNDURMDL
          - NPMSGDLV
          - PMSGDLV
          - PROXYSUB
          - PUB
          - PUBSCOPE
          - QSGDISP
          - SUB
          - SUBSCOPE
          - TOPICSTR
          - TYPE
          - USEDLQ
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ALTER TRACE
      href: SSFKSJ_9.4.0/refadmin/q085440_.html
      positional_parameters:
        - ifcid
        - integer
        - string
      input_parameters:
        - ACCTG
        - CMDSCOPE
        - GLOBAL
        - STAT
        - TNO
      output_parameters: []
      section_sources:
        'Parameter descriptions for ALTER TRACE':
          - ACCTG
          - CMDSCOPE
          - GLOBAL
          - STAT
          - TNO
        'Trace parameters':
          - CLASS
          - COMMENT
          - IFCID
    pcf:
      command: MQCMD_CHANGE_TRACE
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - ACCTG
          - CMDSCOPE
          - GLOBAL
          - STAT
          - TNO
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: ARCHIVE LOG
      href: SSFKSJ_9.4.0/refadmin/q085450_.html
      positional_parameters:
        - nnn
        - qmgr-name
      input_parameters:
        - CANCEL OFFLOAD
        - CMDSCOPE
        - MODE(QUIESCE)
        - TIME
        - WAIT
      output_parameters: []
      section_sources:
        'Parameter descriptions for ARCHIVE LOG':
          - CANCEL OFFLOAD
          - CMDSCOPE
          - MODE(QUIESCE)
          - TIME
          - WAIT
    pcf:
      command: null
      request_href: null
      response_href: null
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CANCEL OFFLOAD
          - CMDSCOPE
          - MODE(QUIESCE)
          - TIME
          - WAIT
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes: []
  - mqsc:
      name: BACKUP CFSTRUCT
      href: SSFKSJ_9.4.0/refadmin/q085460_.html
      positional_parameters:
        - integer
        - structure-name
      input_parameters:
        - CMDSCOPE
        - EXCLINT
      output_parameters: []
      section_sources:
        'Keyword and parameter descriptions for BACKUP CFSTRUCT':
          - CMDSCOPE
          - EXCLINT
    pcf:
      command: null
      request_href: null
      response_href: null
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - EXCLINT
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes: []
  - mqsc:
      name: CLEAR QLOCAL
      href: SSFKSJ_9.4.0/refadmin/q085470_.html
      positional_parameters:
        - (q-name)
      input_parameters:
        - CMDSCOPE
        - QSGDISP
      output_parameters: []
      section_sources:
        'Parameter descriptions for CLEAR QLOCAL':
          - CMDSCOPE
          - QSGDISP
    pcf:
      command: MQCMD_CLEAR_Q
      request_href: SSFKSJ_9.4.0/refadmin/q087070_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087070_.html
      request_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRC_Q_NOT_EMPTY
          pcf_type: null
          type_hint: null
        - name: MQRCCF_Q_WRONG_TYPE
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRC_Q_NOT_EMPTY
          pcf_type: null
          type_hint: null
        - name: MQRCCF_Q_WRONG_TYPE
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - QSGDISP
        pcf_unmapped:
          - CommandScope
          - MQQSGD_PRIVATE
          - MQQSGD_SHARED
          - MQRCCF_Q_WRONG_TYPE
          - MQRC_Q_NOT_EMPTY
          - QName
          - QSGDisposition
          - Reason
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - MQQSGD_PRIVATE
          - MQQSGD_SHARED
          - MQRCCF_Q_WRONG_TYPE
          - MQRC_Q_NOT_EMPTY
          - QName
          - QSGDisposition
          - Reason
    notes: []
  - mqsc:
      name: CLEAR TOPICSTR
      href: SSFKSJ_9.4.0/refadmin/q085480_.html
      positional_parameters:
        - (topic-string)
        - qmgr-name
      input_parameters:
        - CLRTYPE
        - CMDSCOPE
        - SCOPE
      output_parameters: []
      section_sources:
        'Parameter descriptions for CLEAR TOPICSTR':
          - CLRTYPE
          - CMDSCOPE
          - SCOPE
    pcf:
      command: MQCMD_CLEAR_TOPICSTR
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CLRTYPE
          - CMDSCOPE
          - SCOPE
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE AUTHINFO
      href: SSFKSJ_9.4.0/refadmin/q085490_.html
      positional_parameters:
        - LDAP class name
        - LDAP field name
        - LDAP password
        - LDAP user
        - Responder URL
        - authinfo-name
        - base DN
        - connection name
        - delay time
        - name
        - qmgr-name
        - string
        - user name
      input_parameters:
        - ADOPTCTX
        - AUTHENMD
        - AUTHORMD
        - AUTHTYPE
        - BASEDNG
        - BASEDNU
        - CHCKCLNT
        - CHCKLOCL
        - CLASSGRP
        - CLASSUSR
        - CMDSCOPE
        - CONNAME
        - DESCR
        - FAILDLAY
        - FINDGRP
        - GRPFIELD
        - LDAPPWD
        - LDAPUSER
        - LIKE
        - NESTGRP
        - NOREPLACE
        - OCSPURL
        - QSGDISP
        - REPLACE
        - SECCOMM
        - SHORTUSR
        - USRFIELD
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE AUTHINFO':
          - ADOPTCTX
          - AUTHENMD
          - AUTHORMD
          - AUTHTYPE
          - BASEDNG
          - BASEDNU
          - CHCKCLNT
          - CHCKLOCL
          - CLASSGRP
          - CLASSUSR
          - CMDSCOPE
          - CONNAME
          - DESCR
          - FAILDLAY
          - FINDGRP
          - GRPFIELD
          - LDAPPWD
          - LDAPUSER
          - LIKE
          - NESTGRP
          - NOREPLACE
          - OCSPURL
          - QSGDISP
          - REPLACE
          - SECCOMM
          - SHORTUSR
          - USRFIELD
    pcf:
      command: MQCMD_CREATE_AUTH_INFO
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - ADOPTCTX
          - AUTHENMD
          - AUTHORMD
          - AUTHTYPE
          - BASEDNG
          - BASEDNU
          - CHCKCLNT
          - CHCKLOCL
          - CLASSGRP
          - CLASSUSR
          - CMDSCOPE
          - CONNAME
          - DESCR
          - FAILDLAY
          - FINDGRP
          - GRPFIELD
          - LDAPPWD
          - LDAPUSER
          - LIKE
          - NESTGRP
          - NOREPLACE
          - OCSPURL
          - QSGDISP
          - REPLACE
          - SECCOMM
          - SHORTUSR
          - USRFIELD
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE BUFFPOOL
      href: SSFKSJ_9.4.0/refadmin/q085500_.html
      positional_parameters:
        - (buf-pool-id)
        - 4KB
        - ABOVE
        - BELOW
        - FIXED4KB
        - integer
      input_parameters:
        - BUFFERS
        - LOC
        - LOCATION
        - NOREPLACE
        - PAGECLAS
        - REPLACE
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE BUFFPOOL':
          - BUFFERS
          - LOC
          - LOCATION
          - NOREPLACE
          - PAGECLAS
          - REPLACE
    pcf:
      command: MQCMD_CREATE_BUFFPOOL
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - BUFFERS
          - LOC
          - LOCATION
          - NOREPLACE
          - PAGECLAS
          - REPLACE
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE CFSTRUCT
      href: SSFKSJ_9.4.0/refadmin/q085510_.html
      positional_parameters:
        - (structure-name)
        - cfstruct-name
        - dsname.prefix.*.dsname.suffix
        - integer
        - percentage
        - size
        - string
      input_parameters:
        - CFCONLOS
        - CFLEVEL
        - DESCR
        - DSBLOCK
        - DSBUFS
        - DSEXPAND
        - DSGROUP
        - LIKE
        - NOREPLACE
        - OFFLD1SZ
        - OFFLD1TH
        - OFFLD2SZ
        - OFFLD2TH
        - OFFLD3SZ
        - OFFLD3TH
        - OFFLOAD
        - RECAUTO
        - RECOVER
        - REPLACE
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE CFSTRUCT':
          - CFCONLOS
          - CFLEVEL
          - DESCR
          - DSBLOCK
          - DSBUFS
          - DSEXPAND
          - DSGROUP
          - LIKE
          - NOREPLACE
          - OFFLD1SZ
          - OFFLD1TH
          - OFFLD2SZ
          - OFFLD2TH
          - OFFLD3SZ
          - OFFLD3TH
          - OFFLOAD
          - RECAUTO
          - RECOVER
          - REPLACE
    pcf:
      command: MQCMD_CREATE_CF_STRUC
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CFCONLOS
          - CFLEVEL
          - DESCR
          - DSBLOCK
          - DSBUFS
          - DSEXPAND
          - DSGROUP
          - LIKE
          - NOREPLACE
          - OFFLD1SZ
          - OFFLD1TH
          - OFFLD2SZ
          - OFFLD2TH
          - OFFLD3SZ
          - OFFLD3TH
          - OFFLOAD
          - RECAUTO
          - RECOVER
          - REPLACE
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q085520_.html
      positional_parameters:
        - (channel-name)
        - (string)
        - QmgrName
        - channel-name
        - clustername
        - integer
        - ip-addr
        - nlname
        - string
      input_parameters:
        - AFFINITY
        - AMQPKA
        - BATCHHB
        - BATCHINT
        - BATCHLIM
        - BATCHSZ
        - CERTLABL
        - CHLTYPE
        - CLNTWGHT
        - CLUSNL
        - CLUSTER
        - CLWLPRTY
        - CLWLRANK
        - CLWLWGHT
        - CMDSCOPE
        - COMPHDR
        - COMPMSG
        - CONNAME
        - CONVERT
        - DEFCDISP
        - DEFRECON
        - DESCR
        - DISCINT
        - HBINT
        - KAINT
        - LIKE
        - LOCLADDR
        - LONGRTY
        - LONGTMR
        - MAXINST
        - MAXINSTC
        - MAXMSGL
        - MCANAME
        - MCATYPE
        - MCAUSER
        - MODENAME
        - MONCHL
        - MRDATA
        - MREXIT
        - MRRTY
        - MRTMR
        - MSGDATA
        - MSGEXIT
        - NETPRTY
        - NOREPLACE
        - NPMSPEED
        - PASSWORD
        - PORT
        - PROPCTL
        - PUTAUT
        - QMNAME
        - QSGDISP
        - RCVDATA
        - RCVEXIT
        - REPLACE
        - SCYDATA
        - SCYEXIT
        - SENDDATA
        - SENDEXIT
        - SEQWRAP
        - SHARECNV
        - SHORTRTY
        - SHORTTMR
        - SPLPROT
        - SSLCAUTH
        - SSLCIPH
        - SSLPEER
        - STATCHL
        - TMPMODEL
        - TMPQPRFX
        - TPNAME
        - TPROOT
        - TRPTYPE
        - USECLTID
        - USEDLQ
        - USERID
        - XMITQ
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE CHANNEL':
          - AFFINITY
          - AMQPKA
          - BATCHHB
          - BATCHINT
          - BATCHLIM
          - BATCHSZ
          - CERTLABL
          - CHLTYPE
          - CLNTWGHT
          - CLUSNL
          - CLUSTER
          - CLWLPRTY
          - CLWLRANK
          - CLWLWGHT
          - CMDSCOPE
          - COMPHDR
          - COMPMSG
          - CONNAME
          - CONVERT
          - DEFCDISP
          - DEFRECON
          - DESCR
          - DISCINT
          - HBINT
          - KAINT
          - LIKE
          - LOCLADDR
          - LONGRTY
          - LONGTMR
          - MAXINST
          - MAXINSTC
          - MAXMSGL
          - MCANAME
          - MCATYPE
          - MCAUSER
          - MODENAME
          - MONCHL
          - MRDATA
          - MREXIT
          - MRRTY
          - MRTMR
          - MSGDATA
          - MSGEXIT
          - NETPRTY
          - NOREPLACE
          - NPMSPEED
          - PASSWORD
          - PORT
          - PROPCTL
          - PUTAUT
          - QMNAME
          - QSGDISP
          - RCVDATA
          - RCVEXIT
          - REPLACE
          - SCYDATA
          - SCYEXIT
          - SENDDATA
          - SENDEXIT
          - SEQWRAP
          - SHARECNV
          - SHORTRTY
          - SHORTTMR
          - SPLPROT
          - SSLCAUTH
          - SSLCIPH
          - SSLPEER
          - STATCHL
          - TMPMODEL
          - TMPQPRFX
          - TPNAME
          - TPROOT
          - TRPTYPE
          - USECLTID
          - USEDLQ
          - USERID
          - XMITQ
    pcf:
      command: MQCMD_CREATE_CHANNEL
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/SSFKSJ_7.5.0/com.ibm.mq.ref.adm.doc/q086940_.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - AFFINITY
          - AMQPKA
          - BATCHHB
          - BATCHINT
          - BATCHLIM
          - BATCHSZ
          - CERTLABL
          - CHLTYPE
          - CLNTWGHT
          - CLUSNL
          - CLUSTER
          - CLWLPRTY
          - CLWLRANK
          - CLWLWGHT
          - CMDSCOPE
          - COMPHDR
          - COMPMSG
          - CONNAME
          - CONVERT
          - DEFCDISP
          - DEFRECON
          - DESCR
          - DISCINT
          - HBINT
          - KAINT
          - LIKE
          - LOCLADDR
          - LONGRTY
          - LONGTMR
          - MAXINST
          - MAXINSTC
          - MAXMSGL
          - MCANAME
          - MCATYPE
          - MCAUSER
          - MODENAME
          - MONCHL
          - MRDATA
          - MREXIT
          - MRRTY
          - MRTMR
          - MSGDATA
          - MSGEXIT
          - NETPRTY
          - NOREPLACE
          - NPMSPEED
          - PASSWORD
          - PORT
          - PROPCTL
          - PUTAUT
          - QMNAME
          - QSGDISP
          - RCVDATA
          - RCVEXIT
          - REPLACE
          - SCYDATA
          - SCYEXIT
          - SENDDATA
          - SENDEXIT
          - SEQWRAP
          - SHARECNV
          - SHORTRTY
          - SHORTTMR
          - SPLPROT
          - SSLCAUTH
          - SSLCIPH
          - SSLPEER
          - STATCHL
          - TMPMODEL
          - TMPQPRFX
          - TPNAME
          - TPROOT
          - TRPTYPE
          - USECLTID
          - USEDLQ
          - USERID
          - XMITQ
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE COMMINFO
      href: SSFKSJ_9.4.0/refadmin/q085620_.html
      positional_parameters:
        - authinfo-name
        - comminfo name
        - integer
        - string
      input_parameters:
        - BRIDGE
        - CCSID
        - COMMEV
        - DESCR
        - ENCODING
        - GRPADDR
        - LIKE
        - MCHBINT
        - MCPROP
        - MONINT
        - MSGHIST
        - NOREPLACE
        - NSUBHIST
        - PORT
        - REPLACE
        - TYPE
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE COMMINFO':
          - BRIDGE
          - CCSID
          - COMMEV
          - DESCR
          - ENCODING
          - GRPADDR
          - LIKE
          - MCHBINT
          - MCPROP
          - MONINT
          - MSGHIST
          - NOREPLACE
          - NSUBHIST
          - PORT
          - REPLACE
          - TYPE
    pcf:
      command: MQCMD_CREATE_COMM_INFO
      request_href: SSFKSJ_9.4.0/reference/q049820_.html
      response_href: SSFKSJ_9.4.0/refadmin/q086960_.html
      request_parameters:
        - name: CommandContext
          pcf_type: null
          type_hint: null
        - name: EventUserId
          pcf_type: null
          type_hint: null
        - name: EventSecurityId
          pcf_type: null
          type_hint: null
        - name: EventOrigin
          pcf_type: null
          type_hint: null
        - name: MQEVO_CONSOLE
          pcf_type: null
          type_hint: null
        - name: MQEVO_INIT
          pcf_type: null
          type_hint: null
        - name: MQEVO_MSG
          pcf_type: null
          type_hint: null
        - name: MQEVO_INTERNAL
          pcf_type: null
          type_hint: null
        - name: MQEVO_OTHER
          pcf_type: null
          type_hint: null
        - name: EventQMgr
          pcf_type: null
          type_hint: null
        - name: EventAccountingToken
          pcf_type: null
          type_hint: null
        - name: EventIdentityData
          pcf_type: null
          type_hint: null
        - name: EventApplType
          pcf_type: null
          type_hint: null
        - name: EventApplName
          pcf_type: null
          type_hint: null
        - name: EventApplOrigin
          pcf_type: null
          type_hint: null
        - name: Command
          pcf_type: null
          type_hint: null
        - name: MQCMD_ARCHIVE_LOG
          pcf_type: null
          type_hint: null
        - name: MQCMD_BACKUP_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_BUFFER_POOL
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_PAGE_SET
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_SECURITY
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_STG_CLASS
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_SUBSCRIPTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQCMD_CHANGE_TRACE
          pcf_type: null
          type_hint: null
        - name: MQCMD_CLEAR_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_CLEAR_TOPIC_STRING
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_BUFFER_POOL
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_PAGE_SET
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_STG_CLASS
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_SUBSCRIPTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_CREATE_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_PAGE_SET
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_STG_CLASS
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_SUBSCRIPTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_DELETE_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_ARCHIVE
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CF_STRUC_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CHANNEL_INIT
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CHANNEL_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CHLAUTH_RECS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CLUSTER_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CMD_SERVER
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_CONNECTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_LOG
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_PUBSUB_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_QSG
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SECURITY
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_STG_CLASS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SUBSCRIPTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SUB_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_THREAD
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_TOPIC_STATUS
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_TRACE
          pcf_type: null
          type_hint: null
        - name: MQCMD_INQUIRE_USAGE
          pcf_type: null
          type_hint: null
        - name: MQCMD_MOVE_Q
          pcf_type: null
          type_hint: null
        - name: MQCMD_PING_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_RECOVER_BSDS
          pcf_type: null
          type_hint: null
        - name: MQCMD_RECOVER_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQCMD_REFRESH_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQCMD_REFRESH_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_REFRESH_SECURITY
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_Q_STATS
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESET_TPIPE
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESOLVE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESOLVE_INDOUBT
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESUME_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_RESUME_Q_MGR_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQCMD_REVERIFY_SECURITY
          pcf_type: null
          type_hint: null
        - name: MQCMD_SET_ARCHIVE
          pcf_type: null
          type_hint: null
        - name: MQCMD_SET_CHLAUTH_REC
          pcf_type: null
          type_hint: null
        - name: MQCMD_SET_LOG
          pcf_type: null
          type_hint: null
        - name: MQCMD_SET_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_CHANNEL_INIT
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_CHANNEL_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_CMD_SERVER
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_START_TRACE
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CHANNEL_INIT
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CHANNEL_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CMD_SERVER
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_CONNECTION
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQCMD_STOP_TRACE
          pcf_type: null
          type_hint: null
        - name: MQCMD_SUSPEND_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCMD_SUSPEND_Q_MGR_CLUSTER
          pcf_type: null
          type_hint: null
        - name: CommandData
          pcf_type: null
          type_hint: null
        - name: CommandMQSC
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: FromComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: ToComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: Bridge
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCB_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMCB_ENABLED
          pcf_type: null
          type_hint: null
        - name: CCSID
          pcf_type: MQCFIN
          type_hint: int
        - name: CommEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_EXCEPTION
          pcf_type: null
          type_hint: null
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: Encoding
          pcf_type: MQCFIN
          type_hint: int
        - name: MQENC_AS_PUBLISHED
          pcf_type: null
          type_hint: null
        - name: MQENC_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQENC_REVERSED
          pcf_type: null
          type_hint: null
        - name: MQENC_S390
          pcf_type: null
          type_hint: null
        - name: MQENC_TNS
          pcf_type: null
          type_hint: null
        - name: GrpAddress
          pcf_type: MQCFST
          type_hint: str
        - name: MonitorInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgHistory
          pcf_type: MQCFIN
          type_hint: int
        - name: MulticastHeartbeat
          pcf_type: MQCFIN
          type_hint: int
        - name: MulticastPropControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCP_ALL
          pcf_type: null
          type_hint: null
        - name: MQMCP_REPLY
          pcf_type: null
          type_hint: null
        - name: MQMCP_USER
          pcf_type: null
          type_hint: null
        - name: MQMCP_NONE
          pcf_type: null
          type_hint: null
        - name: MQMCP_COMPAT
          pcf_type: null
          type_hint: null
        - name: NewSubHistory
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNSH_NONE
          pcf_type: null
          type_hint: null
        - name: MQNSH_ALL
          pcf_type: null
          type_hint: null
        - name: PortNumber
          pcf_type: MQCFIN
          type_hint: int
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - BRIDGE
          - CCSID
          - COMMEV
          - DESCR
          - ENCODING
          - GRPADDR
          - LIKE
          - MCHBINT
          - MCPROP
          - MONINT
          - MSGHIST
          - NOREPLACE
          - NSUBHIST
          - PORT
          - REPLACE
          - TYPE
        pcf_unmapped:
          - Command
          - CommandContext
          - CommandData
          - CommandMQSC
          - EventAccountingToken
          - EventApplName
          - EventApplOrigin
          - EventApplType
          - EventIdentityData
          - EventOrigin
          - EventQMgr
          - EventSecurityId
          - EventUserId
          - MQCMD_ARCHIVE_LOG
          - MQCMD_BACKUP_CF_STRUC
          - MQCMD_CHANGE_AUTH_INFO
          - MQCMD_CHANGE_BUFFER_POOL
          - MQCMD_CHANGE_CF_STRUC
          - MQCMD_CHANGE_CHANNEL
          - MQCMD_CHANGE_COMM_INFO
          - MQCMD_CHANGE_LISTENER
          - MQCMD_CHANGE_NAMELIST
          - MQCMD_CHANGE_PAGE_SET
          - MQCMD_CHANGE_PROCESS
          - MQCMD_CHANGE_Q
          - MQCMD_CHANGE_Q_MGR
          - MQCMD_CHANGE_SECURITY
          - MQCMD_CHANGE_SERVICE
          - MQCMD_CHANGE_STG_CLASS
          - MQCMD_CHANGE_SUBSCRIPTION
          - MQCMD_CHANGE_TOPIC
          - MQCMD_CHANGE_TRACE
          - MQCMD_CLEAR_Q
          - MQCMD_CLEAR_TOPIC_STRING
          - MQCMD_CREATE_AUTH_INFO
          - MQCMD_CREATE_BUFFER_POOL
          - MQCMD_CREATE_CF_STRUC
          - MQCMD_CREATE_CHANNEL
          - MQCMD_CREATE_COMM_INFO
          - MQCMD_CREATE_LISTENER
          - MQCMD_CREATE_NAMELIST
          - MQCMD_CREATE_PAGE_SET
          - MQCMD_CREATE_PROCESS
          - MQCMD_CREATE_Q
          - MQCMD_CREATE_SERVICE
          - MQCMD_CREATE_STG_CLASS
          - MQCMD_CREATE_SUBSCRIPTION
          - MQCMD_CREATE_TOPIC
          - MQCMD_DELETE_AUTH_INFO
          - MQCMD_DELETE_CF_STRUC
          - MQCMD_DELETE_CHANNEL
          - MQCMD_DELETE_COMM_INFO
          - MQCMD_DELETE_LISTENER
          - MQCMD_DELETE_NAMELIST
          - MQCMD_DELETE_PAGE_SET
          - MQCMD_DELETE_PROCESS
          - MQCMD_DELETE_Q
          - MQCMD_DELETE_SERVICE
          - MQCMD_DELETE_STG_CLASS
          - MQCMD_DELETE_SUBSCRIPTION
          - MQCMD_DELETE_TOPIC
          - MQCMD_INQUIRE_ARCHIVE
          - MQCMD_INQUIRE_AUTH_INFO
          - MQCMD_INQUIRE_CF_STRUC
          - MQCMD_INQUIRE_CF_STRUC_STATUS
          - MQCMD_INQUIRE_CHANNEL
          - MQCMD_INQUIRE_CHANNEL_INIT
          - MQCMD_INQUIRE_CHANNEL_STATUS
          - MQCMD_INQUIRE_CHLAUTH_RECS
          - MQCMD_INQUIRE_CLUSTER_Q_MGR
          - MQCMD_INQUIRE_CMD_SERVER
          - MQCMD_INQUIRE_COMM_INFO
          - MQCMD_INQUIRE_CONNECTION
          - MQCMD_INQUIRE_LISTENER
          - MQCMD_INQUIRE_LOG
          - MQCMD_INQUIRE_NAMELIST
          - MQCMD_INQUIRE_PROCESS
          - MQCMD_INQUIRE_PUBSUB_STATUS
          - MQCMD_INQUIRE_Q
          - MQCMD_INQUIRE_QSG
          - MQCMD_INQUIRE_Q_MGR
          - MQCMD_INQUIRE_Q_STATUS
          - MQCMD_INQUIRE_SECURITY
          - MQCMD_INQUIRE_SERVICE
          - MQCMD_INQUIRE_STG_CLASS
          - MQCMD_INQUIRE_SUBSCRIPTION
          - MQCMD_INQUIRE_SUB_STATUS
          - MQCMD_INQUIRE_SYSTEM
          - MQCMD_INQUIRE_THREAD
          - MQCMD_INQUIRE_TOPIC
          - MQCMD_INQUIRE_TOPIC_STATUS
          - MQCMD_INQUIRE_TRACE
          - MQCMD_INQUIRE_USAGE
          - MQCMD_MOVE_Q
          - MQCMD_PING_CHANNEL
          - MQCMD_RECOVER_BSDS
          - MQCMD_RECOVER_CF_STRUC
          - MQCMD_REFRESH_CLUSTER
          - MQCMD_REFRESH_Q_MGR
          - MQCMD_REFRESH_SECURITY
          - MQCMD_RESET_CHANNEL
          - MQCMD_RESET_CLUSTER
          - MQCMD_RESET_Q_MGR
          - MQCMD_RESET_Q_STATS
          - MQCMD_RESET_TPIPE
          - MQCMD_RESOLVE_CHANNEL
          - MQCMD_RESOLVE_INDOUBT
          - MQCMD_RESUME_Q_MGR
          - MQCMD_RESUME_Q_MGR_CLUSTER
          - MQCMD_REVERIFY_SECURITY
          - MQCMD_SET_ARCHIVE
          - MQCMD_SET_CHLAUTH_REC
          - MQCMD_SET_LOG
          - MQCMD_SET_SYSTEM
          - MQCMD_START_CHANNEL
          - MQCMD_START_CHANNEL_INIT
          - MQCMD_START_CHANNEL_LISTENER
          - MQCMD_START_CMD_SERVER
          - MQCMD_START_SERVICE
          - MQCMD_START_TRACE
          - MQCMD_STOP_CHANNEL
          - MQCMD_STOP_CHANNEL_INIT
          - MQCMD_STOP_CHANNEL_LISTENER
          - MQCMD_STOP_CMD_SERVER
          - MQCMD_STOP_CONNECTION
          - MQCMD_STOP_SERVICE
          - MQCMD_STOP_TRACE
          - MQCMD_SUSPEND_Q_MGR
          - MQCMD_SUSPEND_Q_MGR_CLUSTER
          - MQEVO_CONSOLE
          - MQEVO_INIT
          - MQEVO_INTERNAL
          - MQEVO_MSG
          - MQEVO_OTHER
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Bridge
          - CCSID
          - CommEvent
          - ComminfoName
          - ComminfoName
          - Description
          - Encoding
          - FromComminfoName
          - GrpAddress
          - MQENC_AS_PUBLISHED
          - MQENC_NORMAL
          - MQENC_REVERSED
          - MQENC_S390
          - MQENC_TNS
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_EXCEPTION
          - MQMCB_DISABLED
          - MQMCB_ENABLED
          - MQMCP_ALL
          - MQMCP_COMPAT
          - MQMCP_NONE
          - MQMCP_REPLY
          - MQMCP_USER
          - MQNSH_ALL
          - MQNSH_NONE
          - MonitorInterval
          - MsgHistory
          - MulticastHeartbeat
          - MulticastPropControl
          - NewSubHistory
          - PortNumber
          - ToComminfoName
          - Type
    notes: []
  - mqsc:
      name: DEFINE LISTENER
      href: SSFKSJ_9.4.0/refadmin/q085630_.html
      positional_parameters:
        - (listener-name)
        - integer
        - listener-name
        - string
      input_parameters:
        - ADAPTER
        - BACKLOG
        - COMMANDS
        - CONTROL
        - DESCR
        - IPADDR
        - LIKE
        - LOCLNAME
        - NTBNAMES
        - PORT
        - SESSIONS
        - SOCKET
        - TPNAME
        - TRPTYPE
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE LISTENER':
          - ADAPTER
          - BACKLOG
          - COMMANDS
          - CONTROL
          - DESCR
          - IPADDR
          - LIKE
          - LOCLNAME
          - NTBNAMES
          - PORT
          - SESSIONS
          - SOCKET
          - TPNAME
          - TRPTYPE
    pcf:
      command: MQCMD_CREATE_LISTENER
      request_href: SSFKSJ_9.4.0/refadmin/q086950_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: ListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQXPT_TCP
          pcf_type: null
          type_hint: null
        - name: MQXPT_LU62
          pcf_type: null
          type_hint: null
        - name: MQXPT_NETBIOS
          pcf_type: null
          type_hint: null
        - name: MQXPT_SPX
          pcf_type: null
          type_hint: null
        - name: FromListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: ToListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: Adapter
          pcf_type: MQCFIN
          type_hint: int
        - name: Backlog
          pcf_type: MQCFIN
          type_hint: int
        - name: Commands
          pcf_type: MQCFIN
          type_hint: int
        - name: IPAddress
          pcf_type: MQCFST
          type_hint: str
        - name: ListenerDesc
          pcf_type: MQCFST
          type_hint: str
        - name: LocalName
          pcf_type: MQCFST
          type_hint: str
        - name: NetbiosNames
          pcf_type: MQCFIN
          type_hint: int
        - name: Port
          pcf_type: MQCFIN
          type_hint: int
        - name: Replace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRP_YES
          pcf_type: null
          type_hint: null
        - name: MQRP_NO
          pcf_type: null
          type_hint: null
        - name: Sessions
          pcf_type: MQCFIN
          type_hint: int
        - name: Socket
          pcf_type: MQCFIN
          type_hint: int
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR_START
          pcf_type: null
          type_hint: null
        - name: TPName
          pcf_type: MQCFST
          type_hint: str
      response_parameters: []
    mapping:
      request:
        suggested:
          ADAPTER: Adapter
          BACKLOG: Backlog
          COMMANDS: Commands
          LOCLNAME: LocalName
          PORT: Port
          SESSIONS: Sessions
          SOCKET: Socket
          TPNAME: TPName
        ambiguous:
          {}
        unmapped:
          - CONTROL
          - DESCR
          - IPADDR
          - LIKE
          - NTBNAMES
          - TRPTYPE
        pcf_unmapped:
          - FromListenerName
          - IPAddress
          - ListenerDesc
          - ListenerName
          - MQRP_NO
          - MQRP_YES
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR_START
          - MQXPT_LU62
          - MQXPT_NETBIOS
          - MQXPT_SPX
          - MQXPT_TCP
          - NetbiosNames
          - Replace
          - StartMode
          - ToListenerName
          - TransportType
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE LOG
      href: SSFKSJ_9.4.0/refadmin/q085640_.html
      positional_parameters:
        - name
        - qmgr-name
      input_parameters:
        - CMDSCOPE
        - COPY
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE LOG':
          - CMDSCOPE
          - COPY
    pcf:
      command: MQCMD_CREATE_LOG
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - COPY
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE MAXSMSGS
      href: SSFKSJ_9.4.0/refadmin/q085650_.html
      positional_parameters:
        - integer
        - qmgr-name
      input_parameters:
        - CMDSCOPE
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE MAXSMSGS':
          - CMDSCOPE
    pcf:
      command: MQCMD_CREATE_MAXSMSGS
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE NAMELIST
      href: SSFKSJ_9.4.0/refadmin/q085660_.html
      positional_parameters:
        - name
        - name, ...
        - namelist-name
        - qmgr-name
        - string
      input_parameters:
        - CMDSCOPE
        - DESCR
        - LIKE
        - NAMES
        - NLTYPE
        - NOREPLACE
        - QSGDISP
        - REPLACE
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE NAMELIST':
          - CMDSCOPE
          - DESCR
          - LIKE
          - NAMES
          - NLTYPE
          - NOREPLACE
          - QSGDISP
          - REPLACE
    pcf:
      command: MQCMD_CREATE_NAMELIST
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - DESCR
          - LIKE
          - NAMES
          - NLTYPE
          - NOREPLACE
          - QSGDISP
          - REPLACE
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE PROCESS
      href: SSFKSJ_9.4.0/refadmin/q085670_.html
      positional_parameters:
        - integer
        - process-name
        - qmgr-name
        - string
      input_parameters:
        - APPLICID
        - APPLTYPE
        - CMDSCOPE
        - DESCR
        - ENVRDATA
        - LIKE
        - NOREPLACE
        - QSGDISP
        - REPLACE
        - USERDATA
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE PROCESS':
          - APPLICID
          - APPLTYPE
          - CMDSCOPE
          - DESCR
          - ENVRDATA
          - LIKE
          - NOREPLACE
          - QSGDISP
          - REPLACE
          - USERDATA
    pcf:
      command: MQCMD_CREATE_PROCESS
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - APPLICID
          - APPLTYPE
          - CMDSCOPE
          - DESCR
          - ENVRDATA
          - LIKE
          - NOREPLACE
          - QSGDISP
          - REPLACE
          - USERDATA
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE PSID
      href: SSFKSJ_9.4.0/refadmin/q085680_.html
      positional_parameters:
        - data set name
        - integer
        - psid-number
      input_parameters:
        - BUFFPOOL
        - DSN
        - EXPAND
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE PSID':
          - BUFFPOOL
          - DSN
          - EXPAND
    pcf:
      command: MQCMD_CREATE_PSID
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - BUFFPOOL
          - DSN
          - EXPAND
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE SERVICE
      href: SSFKSJ_9.4.0/refadmin/q085740_.html
      positional_parameters:
        - (service-name)
        - service-name
        - string
      input_parameters:
        - CONTROL
        - DESCR
        - LIKE
        - NOREPLACE
        - REPLACE
        - SERVTYPE
        - STARTARG
        - STARTCMD
        - STDERR
        - STDOUT
        - STOPARG
        - STOPCMD
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE SERVICE':
          - CONTROL
          - DESCR
          - LIKE
          - NOREPLACE
          - REPLACE
          - SERVTYPE
          - STARTARG
          - STARTCMD
          - STDERR
          - STDOUT
          - STOPARG
          - STOPCMD
    pcf:
      command: MQCMD_CREATE_SERVICE
      request_href: SSFKSJ_9.4.0/refadmin/q087030_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: FromServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: ToServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: Replace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRP_YES
          pcf_type: null
          type_hint: null
        - name: MQRP_NO
          pcf_type: null
          type_hint: null
        - name: ServiceDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_TYPE_SERVER
          pcf_type: null
          type_hint: null
        - name: MQSVC_TYPE_COMMAND
          pcf_type: null
          type_hint: null
        - name: StartArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StartCommand
          pcf_type: MQCFST
          type_hint: str
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR_START
          pcf_type: null
          type_hint: null
        - name: StderrDestination
          pcf_type: MQCFST
          type_hint: str
        - name: StdoutDestination
          pcf_type: MQCFST
          type_hint: str
        - name: StopArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StopCommand
          pcf_type: MQCFST
          type_hint: str
      response_parameters: []
    mapping:
      request:
        suggested:
          REPLACE: Replace
        ambiguous:
          NOREPLACE:
            - Replace
          SERVTYPE:
            - ServiceType
        unmapped:
          - CONTROL
          - DESCR
          - LIKE
          - STARTARG
          - STARTCMD
          - STDERR
          - STDOUT
          - STOPARG
          - STOPCMD
        pcf_unmapped:
          - FromServiceName
          - MQRP_NO
          - MQRP_YES
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR_START
          - MQSVC_TYPE_COMMAND
          - MQSVC_TYPE_SERVER
          - ServiceDesc
          - ServiceName
          - ServiceType
          - StartArguments
          - StartCommand
          - StartMode
          - StderrDestination
          - StdoutDestination
          - StopArguments
          - StopCommand
          - ToServiceName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE STGCLASS
      href: SSFKSJ_9.4.0/refadmin/q085750_.html
      positional_parameters:
        - application name
        - description
        - group name
        - integer
        - member name
        - qmgr-name
        - stgclass-name
        - storage-class
      input_parameters:
        - CMDSCOPE
        - DESCR
        - LIKE
        - NOREPLACE
        - PASSTKTA
        - PSID
        - QSGDISP
        - REPLACE
        - XCFGNAME
        - XCFMNAME
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE STGCLASS':
          - CMDSCOPE
          - DESCR
          - LIKE
          - NOREPLACE
          - PASSTKTA
          - PSID
          - QSGDISP
          - REPLACE
          - XCFGNAME
          - XCFMNAME
    pcf:
      command: MQCMD_CREATE_STGCLASS
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - DESCR
          - LIKE
          - NOREPLACE
          - PASSTKTA
          - PSID
          - QSGDISP
          - REPLACE
          - XCFGNAME
          - XCFMNAME
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE SUB
      href: SSFKSJ_9.4.0/refadmin/q085760_.html
      positional_parameters:
        - integer
        - qmgr-name
        - string
        - subscription-name
      input_parameters:
        - CMDSCOPE
        - DEST
        - DESTCLAS
        - DESTCORL
        - DESTQMGR
        - EXPIRY
        - LIKE
        - NOREPLACE
        - PSPROP
        - PUBACCT
        - PUBAPPID
        - PUBPRTY
        - REPLACE
        - REQONLY
        - SELECTOR
        - SUBLEVEL
        - SUBNAME
        - SUBSCOPE
        - SUBUSER
        - TOPICOBJ
        - TOPICSTR
        - USERDATA
        - VARUSER
        - WSCHEMA
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE SUB':
          - CMDSCOPE
          - DEST
          - DESTCLAS
          - DESTCORL
          - DESTQMGR
          - EXPIRY
          - LIKE
          - NOREPLACE
          - PSPROP
          - PUBACCT
          - PUBAPPID
          - PUBPRTY
          - REPLACE
          - REQONLY
          - SELECTOR
          - SUBLEVEL
          - SUBNAME
          - SUBSCOPE
          - SUBUSER
          - TOPICOBJ
          - TOPICSTR
          - USERDATA
          - VARUSER
          - WSCHEMA
    pcf:
      command: MQCMD_CREATE_SUB
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - DEST
          - DESTCLAS
          - DESTCORL
          - DESTQMGR
          - EXPIRY
          - LIKE
          - NOREPLACE
          - PSPROP
          - PUBACCT
          - PUBAPPID
          - PUBPRTY
          - REPLACE
          - REQONLY
          - SELECTOR
          - SUBLEVEL
          - SUBNAME
          - SUBSCOPE
          - SUBUSER
          - TOPICOBJ
          - TOPICSTR
          - USERDATA
          - VARUSER
          - WSCHEMA
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DEFINE TOPIC
      href: SSFKSJ_9.4.0/refadmin/q085770_.html
      positional_parameters:
        - comminfo-name
        - integer
        - string
        - topic-name
        - topic-type
      input_parameters:
        - CAPEXPRY
        - CLROUTE
        - CLUSTER
        - CMDSCOPE
        - COMMINFO
        - CUSTOM
        - DEFPRESP
        - DEFPRTY
        - DEFPSIST
        - DESCR
        - DURSUB
        - LIKE
        - MCAST
        - MDURMDL
        - MNDURMDL
        - NOREPLACE
        - NPMSGDLV
        - PMSGDLV
        - PROXYSUB
        - PUB
        - PUBSCOPE
        - QSGDISP
        - REPLACE
        - SUB
        - SUBSCOPE
        - TOPICSTR
        - TYPE
        - USEDLQ
        - WILDCARD
      output_parameters: []
      section_sources:
        'Parameter descriptions for DEFINE TOPIC':
          - CAPEXPRY
          - CLROUTE
          - CLUSTER
          - CMDSCOPE
          - COMMINFO
          - CUSTOM
          - DEFPRESP
          - DEFPRTY
          - DEFPSIST
          - DESCR
          - DURSUB
          - LIKE
          - MCAST
          - MDURMDL
          - MNDURMDL
          - NOREPLACE
          - NPMSGDLV
          - PMSGDLV
          - PROXYSUB
          - PUB
          - PUBSCOPE
          - QSGDISP
          - REPLACE
          - SUB
          - SUBSCOPE
          - TOPICSTR
          - TYPE
          - USEDLQ
          - WILDCARD
    pcf:
      command: MQCMD_CREATE_TOPIC
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CAPEXPRY
          - CLROUTE
          - CLUSTER
          - CMDSCOPE
          - COMMINFO
          - CUSTOM
          - DEFPRESP
          - DEFPRTY
          - DEFPSIST
          - DESCR
          - DURSUB
          - LIKE
          - MCAST
          - MDURMDL
          - MNDURMDL
          - NOREPLACE
          - NPMSGDLV
          - PMSGDLV
          - PROXYSUB
          - PUB
          - PUBSCOPE
          - QSGDISP
          - REPLACE
          - SUB
          - SUBSCOPE
          - TOPICSTR
          - TYPE
          - USEDLQ
          - WILDCARD
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DELETE AUTHINFO
      href: SSFKSJ_9.4.0/refadmin/q085780_.html
      positional_parameters:
        - name
        - qmgr-name
      input_parameters:
        - CMDSCOPE
        - IGNSTATE
        - QSGDISP
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE AUTHINFO':
          - CMDSCOPE
          - IGNSTATE
          - QSGDISP
    pcf:
      command: MQCMD_DELETE_AUTH_INFO
      request_href: SSFKSJ_9.4.0/refadmin/q087090_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087090_.html
      request_parameters:
        - name: AuthInfoName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: AuthInfoName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          IGNSTATE:
            - IgnoreState
        unmapped:
          - CMDSCOPE
          - QSGDISP
        pcf_unmapped:
          - AuthInfoName
          - CommandScope
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - QSGDisposition
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AuthInfoName
          - CommandScope
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - QSGDisposition
    notes: []
  - mqsc:
      name: DELETE AUTHREC
      href: SSFKSJ_9.4.0/refadmin/q085790_.html
      positional_parameters:
        - group-name
        - principal-name
        - profile-name
      input_parameters:
        - GROUP
        - IGNSTATE
        - OBJTYPE
        - PRINCIPAL
        - PROFILE
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE AUTHREC':
          - GROUP
          - IGNSTATE
          - OBJTYPE
          - PRINCIPAL
          - PROFILE
    pcf:
      command: MQCMD_DELETE_AUTH_REC
      request_href: SSFKSJ_9.4.0/refadmin/q087100_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087100_.html
      request_parameters:
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_CLNTCONN_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQOT_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQOT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQOT_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQOT_REMOTE_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQOT_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQOT_TOPIC
          pcf_type: null
          type_hint: null
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: GroupNames
          pcf_type: MQCFSL
          type_hint: str
        - name: PrincipalNames
          pcf_type: MQCFSL
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRC_OBJECT_TYPE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRC_UNKNOWN_ENTITY
          pcf_type: null
          type_hint: null
        - name: MQRCCF_ENTITY_NAME_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_OBJECT_TYPE_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PROFILE_NAME_ERROR
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_CLNTCONN_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQOT_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQOT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQOT_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQOT_REMOTE_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQOT_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQOT_TOPIC
          pcf_type: null
          type_hint: null
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: GroupNames
          pcf_type: MQCFSL
          type_hint: str
        - name: PrincipalNames
          pcf_type: MQCFSL
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRC_OBJECT_TYPE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRC_UNKNOWN_ENTITY
          pcf_type: null
          type_hint: null
        - name: MQRCCF_ENTITY_NAME_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_OBJECT_TYPE_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PROFILE_NAME_ERROR
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          IGNSTATE:
            - IgnoreState
          OBJTYPE:
            - ObjectType
        unmapped:
          - GROUP
          - PRINCIPAL
          - PROFILE
        pcf_unmapped:
          - GroupNames
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQOT_AUTH_INFO
          - MQOT_CHANNEL
          - MQOT_CLNTCONN_CHANNEL
          - MQOT_COMM_INFO
          - MQOT_LISTENER
          - MQOT_NAMELIST
          - MQOT_PROCESS
          - MQOT_Q
          - MQOT_Q_MGR
          - MQOT_REMOTE_Q_MGR_NAME
          - MQOT_SERVICE
          - MQOT_TOPIC
          - MQRCCF_ENTITY_NAME_MISSING
          - MQRCCF_OBJECT_TYPE_MISSING
          - MQRCCF_PROFILE_NAME_ERROR
          - MQRC_OBJECT_TYPE_ERROR
          - MQRC_UNKNOWN_ENTITY
          - ObjectType
          - PrincipalNames
          - ProfileName
          - Reason
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - GroupNames
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQOT_AUTH_INFO
          - MQOT_CHANNEL
          - MQOT_CLNTCONN_CHANNEL
          - MQOT_COMM_INFO
          - MQOT_LISTENER
          - MQOT_NAMELIST
          - MQOT_PROCESS
          - MQOT_Q
          - MQOT_Q_MGR
          - MQOT_REMOTE_Q_MGR_NAME
          - MQOT_SERVICE
          - MQOT_TOPIC
          - MQRCCF_ENTITY_NAME_MISSING
          - MQRCCF_OBJECT_TYPE_MISSING
          - MQRCCF_PROFILE_NAME_ERROR
          - MQRC_OBJECT_TYPE_ERROR
          - MQRC_UNKNOWN_ENTITY
          - ObjectType
          - PrincipalNames
          - ProfileName
          - Reason
    notes: []
  - mqsc:
      name: DELETE BUFFPOOL
      href: SSFKSJ_9.4.0/refadmin/q085800_.html
      positional_parameters:
        - integer
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_DELETE_BUFFPOOL
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DELETE CFSTRUCT
      href: SSFKSJ_9.4.0/refadmin/q085810_.html
      positional_parameters:
        - structure-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_DELETE_CF_STRUC
      request_href: SSFKSJ_9.4.0/refadmin/q087110_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087110_.html
      request_parameters:
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFStrucName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFStrucName
    notes: []
  - mqsc:
      name: DELETE CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q085820_.html
      positional_parameters:
        - channel-name
        - qmgr-name
      input_parameters:
        - CHLTABLE
        - CMDSCOPE
        - IGNSTATE
        - QSGDISP
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE CHANNEL':
          - CHLTABLE
          - CMDSCOPE
          - IGNSTATE
          - QSGDISP
    pcf:
      command: MQCMD_DELETE_CHANNEL
      request_href: SSFKSJ_9.4.0/refadmin/q087130_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087130_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CHLTABLE
          - CMDSCOPE
          - IGNSTATE
          - QSGDISP
        pcf_unmapped:
          - ChannelName
          - ChannelType
          - MQRCCF_CHANNEL_NOT_FOUND
          - Reason
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelName
          - ChannelType
          - MQRCCF_CHANNEL_NOT_FOUND
          - Reason
    notes: []
  - mqsc:
      name: DELETE COMMINFO
      href: SSFKSJ_9.4.0/refadmin/q085840_.html
      positional_parameters:
        - comminfo_name
      input_parameters:
        - IGNSTATE
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE COMMINFO':
          - IGNSTATE
    pcf:
      command: MQCMD_DELETE_COMM_INFO
      request_href: SSFKSJ_9.4.0/refadmin/q087150_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087150_.html
      request_parameters:
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          IGNSTATE:
            - IgnoreState
        unmapped: []
        pcf_unmapped:
          - ComminfoName
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ComminfoName
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
    notes: []
  - mqsc:
      name: DELETE LISTENER
      href: SSFKSJ_9.4.0/refadmin/q085850_.html
      positional_parameters:
        - listener-name
      input_parameters:
        - IGNSTATE
      output_parameters: []
      section_sources:
        'Keyword and parameter descriptions for DELETE LISTENER':
          - IGNSTATE
    pcf:
      command: MQCMD_DELETE_LISTENER
      request_href: SSFKSJ_9.4.0/refadmin/q087140_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087140_.html
      request_parameters:
        - name: ListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          IGNSTATE:
            - IgnoreState
        unmapped: []
        pcf_unmapped:
          - IgnoreState
          - ListenerName
          - MQIS_NO
          - MQIS_YES
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - IgnoreState
          - ListenerName
          - MQIS_NO
          - MQIS_YES
    notes: []
  - mqsc:
      name: DELETE NAMELIST
      href: SSFKSJ_9.4.0/refadmin/q085860_.html
      positional_parameters:
        - name
        - qmgr-name
      input_parameters:
        - CMDSCOPE
        - IGNSTATE
        - QSGDISP
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE NAMELIST':
          - CMDSCOPE
          - IGNSTATE
          - QSGDISP
    pcf:
      command: MQCMD_DELETE_NAMELIST
      request_href: SSFKSJ_9.4.0/refadmin/q087160_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087160_.html
      request_parameters:
        - name: NamelistName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: NamelistName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          IGNSTATE:
            - IgnoreState
        unmapped:
          - CMDSCOPE
          - QSGDISP
        pcf_unmapped:
          - CommandScope
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - NamelistName
          - QSGDisposition
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - NamelistName
          - QSGDisposition
    notes: []
  - mqsc:
      name: DELETE POLICY
      href: SSFKSJ_9.4.0/refadmin/q120810_.html
      positional_parameters:
        - policy-name
      input_parameters:
        - IGNSTATE
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE POLICY':
          - IGNSTATE
    pcf:
      command: MQCMD_DELETE_POLICY
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - IGNSTATE
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DELETE PROCESS
      href: SSFKSJ_9.4.0/refadmin/q085870_.html
      positional_parameters:
        - process-name
        - qmgr-name
      input_parameters:
        - CMDSCOPE
        - IGNSTATE
        - QSGDISP
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE PROCESS':
          - CMDSCOPE
          - IGNSTATE
          - QSGDISP
    pcf:
      command: MQCMD_DELETE_PROCESS
      request_href: SSFKSJ_9.4.0/refadmin/q087170_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087170_.html
      request_parameters:
        - name: ProcessName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ProcessName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          IGNSTATE:
            - IgnoreState
        unmapped:
          - CMDSCOPE
          - QSGDISP
        pcf_unmapped:
          - CommandScope
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - ProcessName
          - QSGDisposition
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - ProcessName
          - QSGDisposition
    notes: []
  - mqsc:
      name: DELETE PSID
      href: SSFKSJ_9.4.0/refadmin/q085880_.html
      positional_parameters:
        - psid-number
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_DELETE_PSID
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DELETE SERVICE
      href: SSFKSJ_9.4.0/refadmin/q085940_.html
      positional_parameters:
        - service-name
      input_parameters:
        - IGNSTATE
      output_parameters: []
      section_sources:
        'Keyword and parameter descriptions for DELETE SERVICE':
          - IGNSTATE
    pcf:
      command: MQCMD_DELETE_SERVICE
      request_href: SSFKSJ_9.4.0/refadmin/q087190_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087190_.html
      request_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          IGNSTATE:
            - IgnoreState
        unmapped: []
        pcf_unmapped:
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - ServiceName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - ServiceName
    notes: []
  - mqsc:
      name: DELETE STGCLASS
      href: SSFKSJ_9.4.0/refadmin/q085960_.html
      positional_parameters:
        - name
        - qmgr-name
      input_parameters:
        - CMDSCOPE
        - QSGDISP
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE STGCLASS':
          - CMDSCOPE
          - QSGDISP
    pcf:
      command: MQCMD_DELETE_STGCLASS
      request_href: SSFKSJ_9.4.0/refadmin/q087200_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: StorageClassName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - QSGDISP
        pcf_unmapped:
          - CommandScope
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - QSGDisposition
          - StorageClassName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DELETE SUB
      href: SSFKSJ_9.4.0/refadmin/q085950_.html
      positional_parameters:
        - qmgr-name
        - string
        - subscription-name
      input_parameters:
        - CMDSCOPE
        - IGNSTATE
        - SUBID
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE SUB':
          - CMDSCOPE
          - IGNSTATE
          - SUBID
    pcf:
      command: MQCMD_DELETE_SUB
      request_href: SSFKSJ_9.4.0/refadmin/q087210_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: SubName
          pcf_type: MQCFST
          type_hint: str
        - name: SubId
          pcf_type: MQCFBS
          type_hint: bytes
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          SUBID: SubId
        ambiguous:
          IGNSTATE:
            - IgnoreState
        unmapped:
          - CMDSCOPE
        pcf_unmapped:
          - CommandScope
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - SubName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DELETE TOPIC
      href: SSFKSJ_9.4.0/refadmin/q085970_.html
      positional_parameters:
        - qmgr-name
        - topic-name
      input_parameters:
        - AUTHREC
        - CMDSCOPE
        - IGNSTATE
        - QSGDISP
      output_parameters: []
      section_sources:
        'Parameter descriptions for DELETE TOPIC':
          - AUTHREC
          - CMDSCOPE
          - IGNSTATE
          - QSGDISP
    pcf:
      command: MQCMD_DELETE_TOPIC
      request_href: SSFKSJ_9.4.0/refadmin/q087220_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087220_.html
      request_parameters:
        - name: TopicName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: Authrec
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRAR_YES
          pcf_type: null
          type_hint: null
        - name: MQRAR_NO
          pcf_type: null
          type_hint: null
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: TopicName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: Authrec
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRAR_YES
          pcf_type: null
          type_hint: null
        - name: MQRAR_NO
          pcf_type: null
          type_hint: null
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          AUTHREC: Authrec
        ambiguous:
          IGNSTATE:
            - IgnoreState
        unmapped:
          - CMDSCOPE
          - QSGDISP
        pcf_unmapped:
          - CommandScope
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - MQRAR_NO
          - MQRAR_YES
          - QSGDisposition
          - TopicName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Authrec
          - CommandScope
          - IgnoreState
          - MQIS_NO
          - MQIS_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - MQRAR_NO
          - MQRAR_YES
          - QSGDisposition
          - TopicName
    notes: []
  - mqsc:
      name: DISPLAY APSTATUS
      href: SSFKSJ_9.4.0/refadmin/q133100_.html
      positional_parameters:
        - applicationnamestr
        - value
      input_parameters: []
      output_parameters:
        - ALL
        - TYPE
        - WHERE
      section_sources:
        'Parameter descriptions for DISPLAY APSTATUS':
          - ALL
          - TYPE
          - WHERE
        'Application status parameters':
          - BALANCED
          - CLUSTER
          - COUNT
          - MOVCOUNT
        'Queue manager status parameters':
          - ACTIVE
          - BALSTATE
          - COUNT
          - LMSGDATE
          - LMSGTIME
          - MOVCOUNT
          - QMID
          - QMNAME
        'Local status parameters':
          - BALOPTS
          - BALTMOUT
          - BALTYPE
          - CONNS
          - CONNTAG
          - IMMCOUNT
          - IMMDATE
          - IMMREASN
          - IMMTIME
          - MOVABLE
    pcf:
      command: MQCMD_INQUIRE_AP_STATUS
      request_href: SSFKSJ_9.4.0/refadmin/q087880_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: ByteStringFilterCommand
          pcf_type: MQCFBF
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: OpenType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSOT_ALL
          pcf_type: null
          type_hint: null
        - name: MQQSOT_INPUT
          pcf_type: null
          type_hint: null
        - name: MQQSOT_OUTPUT
          pcf_type: null
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: MQIACF_ALL
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_MEDIA_LOG_EXTENT_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_CURRENT_Q_DEPTH
          pcf_type: null
          type_hint: null
        - name: MQIA_MONITORING_Q
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_INPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_OUTPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIACF_HANDLE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_MONITORING
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_MAX_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_Q_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OLDEST_MSG_AGE
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_TIME_INDICATOR
          pcf_type: null
          type_hint: null
        - name: MQIACF_UNCOMMITTED_MSGS
          pcf_type: null
          type_hint: null
        - name: MQBACF_EXTERNAL_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_Q_MGR_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_APPL_TAG
          pcf_type: null
          type_hint: null
        - name: MQCACF_ASID
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSB_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSTID
          pcf_type: null
          type_hint: null
        - name: MQCACF_TASK_NUMBER
          pcf_type: null
          type_hint: null
        - name: MQCACF_TRANSACTION_ID
          pcf_type: null
          type_hint: null
        - name: MQCACF_USER_IDENTIFIER
          pcf_type: null
          type_hint: null
        - name: MQCACH_CHANNEL_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACH_CONNECTION_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_APPL_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INPUT_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OPTIONS
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_SET
          pcf_type: null
          type_hint: null
        - name: MQIACF_PROCESS_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_ASYNC_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_THREAD_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_UOW_TYPE
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_HANDLE
          pcf_type: null
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_Q_TYPE_ERROR
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ByteStringFilterCommand
          - CommandScope
          - IntegerFilterCommand
          - MQBACF_EXTERNAL_UOW_ID
          - MQBACF_Q_MGR_UOW_ID
          - MQCACF_APPL_TAG
          - MQCACF_ASID
          - MQCACF_LAST_GET_DATE
          - MQCACF_LAST_GET_TIME
          - MQCACF_LAST_PUT_DATE
          - MQCACF_LAST_PUT_TIME
          - MQCACF_MEDIA_LOG_EXTENT_NAME
          - MQCACF_PSB_NAME
          - MQCACF_PSTID
          - MQCACF_TASK_NUMBER
          - MQCACF_TRANSACTION_ID
          - MQCACF_USER_IDENTIFIER
          - MQCACH_CHANNEL_NAME
          - MQCACH_CONNECTION_NAME
          - MQCA_Q_NAME
          - MQCA_Q_NAME
          - MQIACF_ALL
          - MQIACF_ASYNC_STATE
          - MQIACF_CUR_MAX_FILE_SIZE
          - MQIACF_CUR_Q_FILE_SIZE
          - MQIACF_HANDLE_STATE
          - MQIACF_MONITORING
          - MQIACF_OLDEST_MSG_AGE
          - MQIACF_OPEN_BROWSE
          - MQIACF_OPEN_INPUT_TYPE
          - MQIACF_OPEN_INQUIRE
          - MQIACF_OPEN_OPTIONS
          - MQIACF_OPEN_OUTPUT
          - MQIACF_OPEN_SET
          - MQIACF_PROCESS_ID
          - MQIACF_Q_HANDLE
          - MQIACF_Q_STATUS
          - MQIACF_Q_TIME_INDICATOR
          - MQIACF_THREAD_ID
          - MQIACF_UNCOMMITTED_MSGS
          - MQIACF_UOW_TYPE
          - MQIA_APPL_TYPE
          - MQIA_CURRENT_Q_DEPTH
          - MQIA_MONITORING_Q
          - MQIA_OPEN_INPUT_COUNT
          - MQIA_OPEN_OUTPUT_COUNT
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSOT_ALL
          - MQQSOT_INPUT
          - MQQSOT_OUTPUT
          - MQRCCF_Q_TYPE_ERROR
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
          - Reason
          - StatusType
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - ALL
          - TYPE
          - WHERE
        pcf_unmapped: []
    notes:
      - display-parameter-descriptions-treated-as-output
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY ARCHIVE
      href: SSFKSJ_9.4.0/refadmin/q085980_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters:
        - CMDSCOPE
      section_sources:
        'Parameter descriptions for DISPLAY ARCHIVE':
          - CMDSCOPE
    pcf:
      command: MQCMD_INQUIRE_ARCHIVE
      request_href: SSFKSJ_9.4.0/refadmin/q087260_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087260_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_ARCHIVE_TAPE
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AllocPrimary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocSecondary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocUnits
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_ALLOC_BLK
          pcf_type: null
          type_hint: null
        - name: MQSYSP_ALLOC_TRK
          pcf_type: null
          type_hint: null
        - name: MQSYSP_ALLOC_CYL
          pcf_type: null
          type_hint: null
        - name: ArchivePrefix1
          pcf_type: MQCFST
          type_hint: str
        - name: ArchivePrefix2
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveRetention
          pcf_type: MQCFIN
          type_hint: int
        - name: ArchiveUnit1
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveUnit2
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveWTOR
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: BlockSize
          pcf_type: MQCFIN
          type_hint: int
        - name: Catalog
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: Compact
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: Protect
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: QuiesceInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: RoutingCode
          pcf_type: MQCFIL
          type_hint: int
        - name: TimeStampFormat
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: MQSYSP_EXTENDED
          pcf_type: null
          type_hint: null
        - name: DataSetName
          pcf_type: MQCFST
          type_hint: str
        - name: LogCorrelId
          pcf_type: MQCFST
          type_hint: str
        - name: UnitAddress
          pcf_type: MQCFIN
          type_hint: int
        - name: UnitStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_STATUS_BUSY
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_PREMOUNT
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_UNKNOWN
          pcf_type: null
          type_hint: null
        - name: UnitVolser
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_ARCHIVE_TAPE
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AllocPrimary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocSecondary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocUnits
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_ALLOC_BLK
          pcf_type: null
          type_hint: null
        - name: MQSYSP_ALLOC_TRK
          pcf_type: null
          type_hint: null
        - name: MQSYSP_ALLOC_CYL
          pcf_type: null
          type_hint: null
        - name: ArchivePrefix1
          pcf_type: MQCFST
          type_hint: str
        - name: ArchivePrefix2
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveRetention
          pcf_type: MQCFIN
          type_hint: int
        - name: ArchiveUnit1
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveUnit2
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveWTOR
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: BlockSize
          pcf_type: MQCFIN
          type_hint: int
        - name: Catalog
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: Compact
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: Protect
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: QuiesceInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: RoutingCode
          pcf_type: MQCFIL
          type_hint: int
        - name: TimeStampFormat
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: MQSYSP_EXTENDED
          pcf_type: null
          type_hint: null
        - name: DataSetName
          pcf_type: MQCFST
          type_hint: str
        - name: LogCorrelId
          pcf_type: MQCFST
          type_hint: str
        - name: UnitAddress
          pcf_type: MQCFIN
          type_hint: int
        - name: UnitStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_STATUS_BUSY
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_PREMOUNT
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_UNKNOWN
          pcf_type: null
          type_hint: null
        - name: UnitVolser
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AllocPrimary
          - AllocSecondary
          - AllocUnits
          - Always
          - ArchivePrefix1
          - ArchivePrefix2
          - ArchiveRetention
          - ArchiveUnit1
          - ArchiveUnit2
          - ArchiveWTOR
          - BlockSize
          - Catalog
          - Compact
          - DataSetName
          - LogCorrelId
          - MQSYSP_ALLOC_BLK
          - MQSYSP_ALLOC_CYL
          - MQSYSP_ALLOC_TRK
          - MQSYSP_EXTENDED
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_STATUS_AVAILABLE
          - MQSYSP_STATUS_BUSY
          - MQSYSP_STATUS_PREMOUNT
          - MQSYSP_STATUS_UNKNOWN
          - MQSYSP_TYPE_ARCHIVE_TAPE
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_SET
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - Protect
          - QuiesceInterval
          - Returned
          - Returned
          - Returned
          - RoutingCode
          - TimeStampFormat
          - UnitAddress
          - UnitStatus
          - UnitVolser
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
        pcf_unmapped:
          - AllocPrimary
          - AllocSecondary
          - AllocUnits
          - Always
          - ArchivePrefix1
          - ArchivePrefix2
          - ArchiveRetention
          - ArchiveUnit1
          - ArchiveUnit2
          - ArchiveWTOR
          - BlockSize
          - Catalog
          - Compact
          - DataSetName
          - LogCorrelId
          - MQSYSP_ALLOC_BLK
          - MQSYSP_ALLOC_CYL
          - MQSYSP_ALLOC_TRK
          - MQSYSP_EXTENDED
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_STATUS_AVAILABLE
          - MQSYSP_STATUS_BUSY
          - MQSYSP_STATUS_PREMOUNT
          - MQSYSP_STATUS_UNKNOWN
          - MQSYSP_TYPE_ARCHIVE_TAPE
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_SET
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - Protect
          - QuiesceInterval
          - Returned
          - Returned
          - Returned
          - RoutingCode
          - TimeStampFormat
          - UnitAddress
          - UnitStatus
          - UnitVolser
    notes:
      - display-parameter-descriptions-treated-as-output
  - mqsc:
      name: DISPLAY AUTHINFO
      href: SSFKSJ_9.4.0/refadmin/q085990_.html
      positional_parameters:
        - generic-authentication-information-object-name
        - qmgr-name
      input_parameters: []
      output_parameters:
        - ADOPTCTX
        - ALL
        - ALTDATE
        - ALTTIME
        - AUTHENMD
        - AUTHORMD
        - AUTHTYPE
        - BASEDNG
        - BASEDNU
        - CHCKCLNT
        - CHCKLOCL
        - CLASSGRP
        - CLASSUSR
        - CMDSCOPE
        - CONNAME
        - DESCR
        - FAILDLAY
        - FINDGRP
        - GRPFIELD
        - LDAPPWD
        - LDAPUSER
        - NESTGRP
        - OCSPURL
        - QSGDISP
        - SECCOMM
        - SHORTUSR
        - USRFIELD
        - WHERE
      section_sources:
        'Parameter descriptions for DISPLAY AUTHINFO':
          - ALL
          - AUTHTYPE
          - CMDSCOPE
          - QSGDISP
          - WHERE
        'Requested parameters':
          - ADOPTCTX
          - ALTDATE
          - ALTTIME
          - AUTHENMD
          - AUTHORMD
          - AUTHTYPE
          - BASEDNG
          - BASEDNU
          - CHCKCLNT
          - CHCKLOCL
          - CLASSGRP
          - CLASSUSR
          - CONNAME
          - DESCR
          - FAILDLAY
          - FINDGRP
          - GRPFIELD
          - LDAPPWD
          - LDAPUSER
          - NESTGRP
          - OCSPURL
          - SECCOMM
          - SHORTUSR
          - USRFIELD
    pcf:
      command: MQCMD_INQUIRE_AUTH_INFO
      request_href: SSFKSJ_9.4.0/refadmin/q087280_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087280_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AdoptContext
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: AuthInfoConnName
          pcf_type: MQCFST
          type_hint: str
        - name: AuthInfoDesc
          pcf_type: MQCFST
          type_hint: str
        - name: AuthInfoName
          pcf_type: MQCFST
          type_hint: str
        - name: AuthInfoType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAIT_CRL_LDAP
          pcf_type: null
          type_hint: null
        - name: MQAIT_OCSP
          pcf_type: null
          type_hint: null
        - name: MQAIT_IDPW_OS
          pcf_type: null
          type_hint: null
        - name: MQAIT_IDPW_LDAP
          pcf_type: null
          type_hint: null
        - name: AuthenticationMethod
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAUTHENTICATE_OS
          pcf_type: null
          type_hint: null
        - name: MQAUTHENTICATE_PAM
          pcf_type: null
          type_hint: null
        - name: AuthorizationMethod
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLDAP_AUTHORMD_OS
          pcf_type: null
          type_hint: null
        - name: MQLDAP_AUTHORMD_SEARCHGRP
          pcf_type: null
          type_hint: null
        - name: MQLDAP_AUTHORMD_SEARCHUSER
          pcf_type: null
          type_hint: null
        - name: MQLDAP_AUTHORMD_SRCHGRPSN
          pcf_type: null
          type_hint: null
        - name: BaseDNGroup
          pcf_type: MQCFST
          type_hint: str
        - name: BaseDNUser
          pcf_type: MQCFST
          type_hint: str
        - name: Checklocal
          pcf_type: null
          type_hint: null
        - name: MQCHK_NONE
          pcf_type: null
          type_hint: null
        - name: MQCHK_OPTIONAL
          pcf_type: null
          type_hint: null
        - name: MQCHK_REQUIRED
          pcf_type: null
          type_hint: null
        - name: MQCHK_REQUIRED_ADMIN
          pcf_type: null
          type_hint: null
        - name: ClassGroup
          pcf_type: MQCFST
          type_hint: str
        - name: Classuser
          pcf_type: MQCFST
          type_hint: str
        - name: FailureDelay
          pcf_type: MQCFIN
          type_hint: int
        - name: FindGroup
          pcf_type: MQCFST
          type_hint: str
        - name: GroupField
          pcf_type: MQCFST
          type_hint: str
        - name: GroupNesting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLDAP_NESTGRP_NO
          pcf_type: null
          type_hint: null
        - name: MQLDAP_NESTGRP_YES
          pcf_type: null
          type_hint: null
        - name: LDAPPassword
          pcf_type: MQCFST
          type_hint: str
        - name: LDAPUserName
          pcf_type: MQCFST
          type_hint: str
        - name: OCSPResponderURL
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: SecureComms
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortUser
          pcf_type: MQCFST
          type_hint: str
        - name: UserField
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AdoptContext
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: AuthInfoConnName
          pcf_type: MQCFST
          type_hint: str
        - name: AuthInfoDesc
          pcf_type: MQCFST
          type_hint: str
        - name: AuthInfoName
          pcf_type: MQCFST
          type_hint: str
        - name: AuthInfoType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAIT_CRL_LDAP
          pcf_type: null
          type_hint: null
        - name: MQAIT_OCSP
          pcf_type: null
          type_hint: null
        - name: MQAIT_IDPW_OS
          pcf_type: null
          type_hint: null
        - name: MQAIT_IDPW_LDAP
          pcf_type: null
          type_hint: null
        - name: AuthenticationMethod
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAUTHENTICATE_OS
          pcf_type: null
          type_hint: null
        - name: MQAUTHENTICATE_PAM
          pcf_type: null
          type_hint: null
        - name: AuthorizationMethod
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLDAP_AUTHORMD_OS
          pcf_type: null
          type_hint: null
        - name: MQLDAP_AUTHORMD_SEARCHGRP
          pcf_type: null
          type_hint: null
        - name: MQLDAP_AUTHORMD_SEARCHUSER
          pcf_type: null
          type_hint: null
        - name: MQLDAP_AUTHORMD_SRCHGRPSN
          pcf_type: null
          type_hint: null
        - name: BaseDNGroup
          pcf_type: MQCFST
          type_hint: str
        - name: BaseDNUser
          pcf_type: MQCFST
          type_hint: str
        - name: Checklocal
          pcf_type: null
          type_hint: null
        - name: MQCHK_NONE
          pcf_type: null
          type_hint: null
        - name: MQCHK_OPTIONAL
          pcf_type: null
          type_hint: null
        - name: MQCHK_REQUIRED
          pcf_type: null
          type_hint: null
        - name: MQCHK_REQUIRED_ADMIN
          pcf_type: null
          type_hint: null
        - name: ClassGroup
          pcf_type: MQCFST
          type_hint: str
        - name: Classuser
          pcf_type: MQCFST
          type_hint: str
        - name: FailureDelay
          pcf_type: MQCFIN
          type_hint: int
        - name: FindGroup
          pcf_type: MQCFST
          type_hint: str
        - name: GroupField
          pcf_type: MQCFST
          type_hint: str
        - name: GroupNesting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLDAP_NESTGRP_NO
          pcf_type: null
          type_hint: null
        - name: MQLDAP_NESTGRP_YES
          pcf_type: null
          type_hint: null
        - name: LDAPPassword
          pcf_type: MQCFST
          type_hint: str
        - name: LDAPUserName
          pcf_type: MQCFST
          type_hint: str
        - name: OCSPResponderURL
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: SecureComms
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortUser
          pcf_type: MQCFST
          type_hint: str
        - name: UserField
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AdoptContext
          - AlterationDate
          - AlterationTime
          - Always
          - AuthInfoConnName
          - AuthInfoDesc
          - AuthInfoName
          - AuthInfoType
          - AuthenticationMethod
          - AuthorizationMethod
          - BaseDNGroup
          - BaseDNUser
          - Checklocal
          - ClassGroup
          - Classuser
          - FailureDelay
          - FindGroup
          - GroupField
          - GroupNesting
          - LDAPPassword
          - LDAPUserName
          - MQAIT_CRL_LDAP
          - MQAIT_IDPW_LDAP
          - MQAIT_IDPW_OS
          - MQAIT_OCSP
          - MQAUTHENTICATE_OS
          - MQAUTHENTICATE_PAM
          - MQCHK_NONE
          - MQCHK_OPTIONAL
          - MQCHK_REQUIRED
          - MQCHK_REQUIRED_ADMIN
          - MQLDAP_AUTHORMD_OS
          - MQLDAP_AUTHORMD_SEARCHGRP
          - MQLDAP_AUTHORMD_SEARCHUSER
          - MQLDAP_AUTHORMD_SRCHGRPSN
          - MQLDAP_NESTGRP_NO
          - MQLDAP_NESTGRP_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - OCSPResponderURL
          - QSGDisposition
          - Returned
          - SecureComms
          - ShortUser
          - UserField
      response:
        suggested:
          CLASSUSR: Classuser
          SHORTUSR: ShortUser
          USRFIELD: UserField
        ambiguous:
          BASEDNU:
            - BaseDNUser
          CHCKLOCL:
            - Checklocal
          CLASSGRP:
            - ClassGroup
          FINDGRP:
            - FindGroup
          GRPFIELD:
            - GroupField
        unmapped:
          - ADOPTCTX
          - ALL
          - ALTDATE
          - ALTTIME
          - AUTHENMD
          - AUTHORMD
          - AUTHTYPE
          - BASEDNG
          - CHCKCLNT
          - CMDSCOPE
          - CONNAME
          - DESCR
          - FAILDLAY
          - LDAPPWD
          - LDAPUSER
          - NESTGRP
          - OCSPURL
          - QSGDISP
          - SECCOMM
          - WHERE
        pcf_unmapped:
          - AdoptContext
          - AlterationDate
          - AlterationTime
          - Always
          - AuthInfoConnName
          - AuthInfoDesc
          - AuthInfoName
          - AuthInfoType
          - AuthenticationMethod
          - AuthorizationMethod
          - BaseDNGroup
          - BaseDNUser
          - Checklocal
          - ClassGroup
          - FailureDelay
          - FindGroup
          - GroupField
          - GroupNesting
          - LDAPPassword
          - LDAPUserName
          - MQAIT_CRL_LDAP
          - MQAIT_IDPW_LDAP
          - MQAIT_IDPW_OS
          - MQAIT_OCSP
          - MQAUTHENTICATE_OS
          - MQAUTHENTICATE_PAM
          - MQCHK_NONE
          - MQCHK_OPTIONAL
          - MQCHK_REQUIRED
          - MQCHK_REQUIRED_ADMIN
          - MQLDAP_AUTHORMD_OS
          - MQLDAP_AUTHORMD_SEARCHGRP
          - MQLDAP_AUTHORMD_SEARCHUSER
          - MQLDAP_AUTHORMD_SRCHGRPSN
          - MQLDAP_NESTGRP_NO
          - MQLDAP_NESTGRP_YES
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - OCSPResponderURL
          - QSGDisposition
          - Returned
          - SecureComms
    notes:
      - display-parameter-descriptions-treated-as-output
      - display-requested-parameters-treated-as-output
  - mqsc:
      name: DISPLAY AUTHREC
      href: SSFKSJ_9.4.0/refadmin/q086000_.html
      positional_parameters:
        - group-name
        - principal-name
        - profile-name
        - service-component
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_AUTH_REC
      request_href: SSFKSJ_9.4.0/refadmin/q087320_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087320_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AuthorizationList
          pcf_type: MQCFIL
          type_hint: int
        - name: MQAUTH_NONE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALT_USER_AUTHORITY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CHANGE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CLEAR
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONNECT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CREATE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DELETE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DISPLAY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL_EXTENDED
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PUBLISH
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SUBSCRIBE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_RESUME
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_ADMIN
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_MQI
          pcf_type: null
          type_hint: null
        - name: EntityName
          pcf_type: MQCFST
          type_hint: str
        - name: EntityType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQZAET_GROUP
          pcf_type: null
          type_hint: null
        - name: MQZAET_PRINCIPAL
          pcf_type: null
          type_hint: null
        - name: MQZAET_UNKNOWN
          pcf_type: null
          type_hint: null
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_CLNTCONN_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQOT_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQOT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQOT_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQOT_REMOTE_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQOT_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQOT_TOPIC
          pcf_type: null
          type_hint: null
        - name: Options
          pcf_type: MQCFIN
          type_hint: int
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AuthorizationList
          pcf_type: MQCFIL
          type_hint: int
        - name: MQAUTH_NONE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALT_USER_AUTHORITY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CHANGE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CLEAR
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONNECT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CREATE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DELETE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DISPLAY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL_EXTENDED
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PUBLISH
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SUBSCRIBE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_RESUME
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_ADMIN
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_MQI
          pcf_type: null
          type_hint: null
        - name: EntityName
          pcf_type: MQCFST
          type_hint: str
        - name: EntityType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQZAET_GROUP
          pcf_type: null
          type_hint: null
        - name: MQZAET_PRINCIPAL
          pcf_type: null
          type_hint: null
        - name: MQZAET_UNKNOWN
          pcf_type: null
          type_hint: null
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_CLNTCONN_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQOT_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQOT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQOT_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQOT_REMOTE_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQOT_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQOT_TOPIC
          pcf_type: null
          type_hint: null
        - name: Options
          pcf_type: MQCFIN
          type_hint: int
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - AuthorizationList
          - EntityName
          - EntityType
          - MQAUTH_ALL
          - MQAUTH_ALL_ADMIN
          - MQAUTH_ALL_MQI
          - MQAUTH_ALT_USER_AUTHORITY
          - MQAUTH_BROWSE
          - MQAUTH_CHANGE
          - MQAUTH_CLEAR
          - MQAUTH_CONNECT
          - MQAUTH_CONTROL
          - MQAUTH_CONTROL_EXTENDED
          - MQAUTH_CREATE
          - MQAUTH_DELETE
          - MQAUTH_DISPLAY
          - MQAUTH_INPUT
          - MQAUTH_INQUIRE
          - MQAUTH_NONE
          - MQAUTH_OUTPUT
          - MQAUTH_PASS_ALL_CONTEXT
          - MQAUTH_PASS_IDENTITY_CONTEXT
          - MQAUTH_PUBLISH
          - MQAUTH_RESUME
          - MQAUTH_SET
          - MQAUTH_SET_ALL_CONTEXT
          - MQAUTH_SET_IDENTITY_CONTEXT
          - MQAUTH_SUBSCRIBE
          - MQAUTH_SYSTEM
          - MQOT_AUTH_INFO
          - MQOT_CHANNEL
          - MQOT_CLNTCONN_CHANNEL
          - MQOT_COMM_INFO
          - MQOT_LISTENER
          - MQOT_NAMELIST
          - MQOT_PROCESS
          - MQOT_Q
          - MQOT_Q_MGR
          - MQOT_REMOTE_Q_MGR_NAME
          - MQOT_SERVICE
          - MQOT_TOPIC
          - MQZAET_GROUP
          - MQZAET_PRINCIPAL
          - MQZAET_UNKNOWN
          - ObjectType
          - Options
          - ProfileName
          - QMgrName
          - Returned
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - AuthorizationList
          - EntityName
          - EntityType
          - MQAUTH_ALL
          - MQAUTH_ALL_ADMIN
          - MQAUTH_ALL_MQI
          - MQAUTH_ALT_USER_AUTHORITY
          - MQAUTH_BROWSE
          - MQAUTH_CHANGE
          - MQAUTH_CLEAR
          - MQAUTH_CONNECT
          - MQAUTH_CONTROL
          - MQAUTH_CONTROL_EXTENDED
          - MQAUTH_CREATE
          - MQAUTH_DELETE
          - MQAUTH_DISPLAY
          - MQAUTH_INPUT
          - MQAUTH_INQUIRE
          - MQAUTH_NONE
          - MQAUTH_OUTPUT
          - MQAUTH_PASS_ALL_CONTEXT
          - MQAUTH_PASS_IDENTITY_CONTEXT
          - MQAUTH_PUBLISH
          - MQAUTH_RESUME
          - MQAUTH_SET
          - MQAUTH_SET_ALL_CONTEXT
          - MQAUTH_SET_IDENTITY_CONTEXT
          - MQAUTH_SUBSCRIBE
          - MQAUTH_SYSTEM
          - MQOT_AUTH_INFO
          - MQOT_CHANNEL
          - MQOT_CLNTCONN_CHANNEL
          - MQOT_COMM_INFO
          - MQOT_LISTENER
          - MQOT_NAMELIST
          - MQOT_PROCESS
          - MQOT_Q
          - MQOT_Q_MGR
          - MQOT_REMOTE_Q_MGR_NAME
          - MQOT_SERVICE
          - MQOT_TOPIC
          - MQZAET_GROUP
          - MQZAET_PRINCIPAL
          - MQZAET_UNKNOWN
          - ObjectType
          - Options
          - ProfileName
          - QMgrName
          - Returned
    notes: []
  - mqsc:
      name: DISPLAY AUTHSERV
      href: SSFKSJ_9.4.0/refadmin/q086010_.html
      positional_parameters: []
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_AUTHSERV
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY CFSTATUS
      href: SSFKSJ_9.4.0/refadmin/q086020_.html
      positional_parameters:
        - (date)
        - (generic-structure-name)
        - (hexadecimal)
        - (integer)
        - (qmgrname)
        - (qmgrname-list)
        - (size)
        - (systemname)
        - (time)
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_CF_STATUS
      request_href: SSFKSJ_9.4.0/refadmin/q087880_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: ByteStringFilterCommand
          pcf_type: MQCFBF
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: OpenType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSOT_ALL
          pcf_type: null
          type_hint: null
        - name: MQQSOT_INPUT
          pcf_type: null
          type_hint: null
        - name: MQQSOT_OUTPUT
          pcf_type: null
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: MQIACF_ALL
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_MEDIA_LOG_EXTENT_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_CURRENT_Q_DEPTH
          pcf_type: null
          type_hint: null
        - name: MQIA_MONITORING_Q
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_INPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_OUTPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIACF_HANDLE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_MONITORING
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_MAX_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_Q_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OLDEST_MSG_AGE
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_TIME_INDICATOR
          pcf_type: null
          type_hint: null
        - name: MQIACF_UNCOMMITTED_MSGS
          pcf_type: null
          type_hint: null
        - name: MQBACF_EXTERNAL_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_Q_MGR_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_APPL_TAG
          pcf_type: null
          type_hint: null
        - name: MQCACF_ASID
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSB_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSTID
          pcf_type: null
          type_hint: null
        - name: MQCACF_TASK_NUMBER
          pcf_type: null
          type_hint: null
        - name: MQCACF_TRANSACTION_ID
          pcf_type: null
          type_hint: null
        - name: MQCACF_USER_IDENTIFIER
          pcf_type: null
          type_hint: null
        - name: MQCACH_CHANNEL_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACH_CONNECTION_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_APPL_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INPUT_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OPTIONS
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_SET
          pcf_type: null
          type_hint: null
        - name: MQIACF_PROCESS_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_ASYNC_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_THREAD_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_UOW_TYPE
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_HANDLE
          pcf_type: null
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_Q_TYPE_ERROR
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ByteStringFilterCommand
          - CommandScope
          - IntegerFilterCommand
          - MQBACF_EXTERNAL_UOW_ID
          - MQBACF_Q_MGR_UOW_ID
          - MQCACF_APPL_TAG
          - MQCACF_ASID
          - MQCACF_LAST_GET_DATE
          - MQCACF_LAST_GET_TIME
          - MQCACF_LAST_PUT_DATE
          - MQCACF_LAST_PUT_TIME
          - MQCACF_MEDIA_LOG_EXTENT_NAME
          - MQCACF_PSB_NAME
          - MQCACF_PSTID
          - MQCACF_TASK_NUMBER
          - MQCACF_TRANSACTION_ID
          - MQCACF_USER_IDENTIFIER
          - MQCACH_CHANNEL_NAME
          - MQCACH_CONNECTION_NAME
          - MQCA_Q_NAME
          - MQCA_Q_NAME
          - MQIACF_ALL
          - MQIACF_ASYNC_STATE
          - MQIACF_CUR_MAX_FILE_SIZE
          - MQIACF_CUR_Q_FILE_SIZE
          - MQIACF_HANDLE_STATE
          - MQIACF_MONITORING
          - MQIACF_OLDEST_MSG_AGE
          - MQIACF_OPEN_BROWSE
          - MQIACF_OPEN_INPUT_TYPE
          - MQIACF_OPEN_INQUIRE
          - MQIACF_OPEN_OPTIONS
          - MQIACF_OPEN_OUTPUT
          - MQIACF_OPEN_SET
          - MQIACF_PROCESS_ID
          - MQIACF_Q_HANDLE
          - MQIACF_Q_STATUS
          - MQIACF_Q_TIME_INDICATOR
          - MQIACF_THREAD_ID
          - MQIACF_UNCOMMITTED_MSGS
          - MQIACF_UOW_TYPE
          - MQIA_APPL_TYPE
          - MQIA_CURRENT_Q_DEPTH
          - MQIA_MONITORING_Q
          - MQIA_OPEN_INPUT_COUNT
          - MQIA_OPEN_OUTPUT_COUNT
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSOT_ALL
          - MQQSOT_INPUT
          - MQQSOT_OUTPUT
          - MQRCCF_Q_TYPE_ERROR
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
          - Reason
          - StatusType
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY CFSTRUCT
      href: SSFKSJ_9.4.0/refadmin/q086030_.html
      positional_parameters:
        - generic-structure-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_CF_STRUC
      request_href: SSFKSJ_9.4.0/refadmin/q087360_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087360_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFCONLOS_TERMINATE
          pcf_type: null
          type_hint: null
        - name: MQCFCONLOS_TOLERATE
          pcf_type: null
          type_hint: null
        - name: MQCFCONLOS_ASQMGR
          pcf_type: null
          type_hint: null
        - name: CFLevel
          pcf_type: MQCFIN
          type_hint: int
        - name: 1
          pcf_type: null
          type_hint: null
        - name: 2
          pcf_type: null
          type_hint: null
        - name: 3
          pcf_type: null
          type_hint: null
        - name: 4
          pcf_type: null
          type_hint: null
        - name: 5
          pcf_type: null
          type_hint: null
        - name: CFStrucDesc
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: DSBLOCK
          pcf_type: MQCFIN
          type_hint: int
        - name: DSBUFS
          pcf_type: MQCFIN
          type_hint: int
        - name: DSEXPAND
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDSE_YES
          pcf_type: null
          type_hint: null
        - name: MQDSE_NO
          pcf_type: null
          type_hint: null
        - name: MQDSE_DEFAULT
          pcf_type: null
          type_hint: null
        - name: DSGROUP
          pcf_type: MQCFST
          type_hint: str
        - name: OFFLD1SZ
          pcf_type: MQCFST
          type_hint: str
        - name: OFFLD2SZ
          pcf_type: MQCFST
          type_hint: str
        - name: OFFLD3SZ
          pcf_type: MQCFST
          type_hint: str
        - name: OFFLD1TH
          pcf_type: MQCFIN
          type_hint: int
        - name: OFFLD2TH
          pcf_type: MQCFIN
          type_hint: int
        - name: OFFLD3TH
          pcf_type: MQCFIN
          type_hint: int
        - name: Offload
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFOFFLD_DB2
          pcf_type: null
          type_hint: null
        - name: MQCFOFFLD_SMDS
          pcf_type: null
          type_hint: null
        - name: MQCFOFFLD_NONE
          pcf_type: null
          type_hint: null
        - name: RCVDATE
          pcf_type: MQCFST
          type_hint: str
        - name: RCVTIME
          pcf_type: MQCFST
          type_hint: str
        - name: Recauto
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECAUTO_YES
          pcf_type: null
          type_hint: null
        - name: MQRECAUTO_NO
          pcf_type: null
          type_hint: null
        - name: Recovery
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFR_YES
          pcf_type: null
          type_hint: null
        - name: MQCFR_NO
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFCONLOS_TERMINATE
          pcf_type: null
          type_hint: null
        - name: MQCFCONLOS_TOLERATE
          pcf_type: null
          type_hint: null
        - name: MQCFCONLOS_ASQMGR
          pcf_type: null
          type_hint: null
        - name: CFLevel
          pcf_type: MQCFIN
          type_hint: int
        - name: 1
          pcf_type: null
          type_hint: null
        - name: 2
          pcf_type: null
          type_hint: null
        - name: 3
          pcf_type: null
          type_hint: null
        - name: 4
          pcf_type: null
          type_hint: null
        - name: 5
          pcf_type: null
          type_hint: null
        - name: CFStrucDesc
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: DSBLOCK
          pcf_type: MQCFIN
          type_hint: int
        - name: DSBUFS
          pcf_type: MQCFIN
          type_hint: int
        - name: DSEXPAND
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDSE_YES
          pcf_type: null
          type_hint: null
        - name: MQDSE_NO
          pcf_type: null
          type_hint: null
        - name: MQDSE_DEFAULT
          pcf_type: null
          type_hint: null
        - name: DSGROUP
          pcf_type: MQCFST
          type_hint: str
        - name: OFFLD1SZ
          pcf_type: MQCFST
          type_hint: str
        - name: OFFLD2SZ
          pcf_type: MQCFST
          type_hint: str
        - name: OFFLD3SZ
          pcf_type: MQCFST
          type_hint: str
        - name: OFFLD1TH
          pcf_type: MQCFIN
          type_hint: int
        - name: OFFLD2TH
          pcf_type: MQCFIN
          type_hint: int
        - name: OFFLD3TH
          pcf_type: MQCFIN
          type_hint: int
        - name: Offload
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFOFFLD_DB2
          pcf_type: null
          type_hint: null
        - name: MQCFOFFLD_SMDS
          pcf_type: null
          type_hint: null
        - name: MQCFOFFLD_NONE
          pcf_type: null
          type_hint: null
        - name: RCVDATE
          pcf_type: MQCFST
          type_hint: str
        - name: RCVTIME
          pcf_type: MQCFST
          type_hint: str
        - name: Recauto
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECAUTO_YES
          pcf_type: null
          type_hint: null
        - name: MQRECAUTO_NO
          pcf_type: null
          type_hint: null
        - name: Recovery
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFR_YES
          pcf_type: null
          type_hint: null
        - name: MQCFR_NO
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - 1
          - 2
          - 3
          - 4
          - 5
          - AlterationDate
          - AlterationTime
          - Always
          - CFConlos
          - CFLevel
          - CFStrucDesc
          - CFStrucName
          - DSBLOCK
          - DSBUFS
          - DSEXPAND
          - DSGROUP
          - MQCFCONLOS_ASQMGR
          - MQCFCONLOS_TERMINATE
          - MQCFCONLOS_TOLERATE
          - MQCFOFFLD_DB2
          - MQCFOFFLD_NONE
          - MQCFOFFLD_SMDS
          - MQCFR_NO
          - MQCFR_YES
          - MQDSE_DEFAULT
          - MQDSE_NO
          - MQDSE_YES
          - MQRECAUTO_NO
          - MQRECAUTO_YES
          - OFFLD1SZ
          - OFFLD1TH
          - OFFLD2SZ
          - OFFLD2TH
          - OFFLD3SZ
          - OFFLD3TH
          - Offload
          - RCVDATE
          - RCVTIME
          - Recauto
          - Recovery
          - Returned
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - 1
          - 2
          - 3
          - 4
          - 5
          - AlterationDate
          - AlterationTime
          - Always
          - CFConlos
          - CFLevel
          - CFStrucDesc
          - CFStrucName
          - DSBLOCK
          - DSBUFS
          - DSEXPAND
          - DSGROUP
          - MQCFCONLOS_ASQMGR
          - MQCFCONLOS_TERMINATE
          - MQCFCONLOS_TOLERATE
          - MQCFOFFLD_DB2
          - MQCFOFFLD_NONE
          - MQCFOFFLD_SMDS
          - MQCFR_NO
          - MQCFR_YES
          - MQDSE_DEFAULT
          - MQDSE_NO
          - MQDSE_YES
          - MQRECAUTO_NO
          - MQRECAUTO_YES
          - OFFLD1SZ
          - OFFLD1TH
          - OFFLD2SZ
          - OFFLD2TH
          - OFFLD3SZ
          - OFFLD3TH
          - Offload
          - RCVDATE
          - RCVTIME
          - Recauto
          - Recovery
          - Returned
    notes: []
  - mqsc:
      name: DISPLAY CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q086040_.html
      positional_parameters:
        - (generic-channel-name)
        - integer
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_CHANNEL
      request_href: SSFKSJ_9.4.0/refadmin/q087430_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087430_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: BatchDataLimit
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchHeartbeat
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchSize
          pcf_type: MQCFIN
          type_hint: int
        - name: Certificatelabel
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHT_SENDER
          pcf_type: null
          type_hint: null
        - name: MQCHT_SERVER
          pcf_type: null
          type_hint: null
        - name: MQCHT_RECEIVER
          pcf_type: null
          type_hint: null
        - name: MQCHT_REQUESTER
          pcf_type: null
          type_hint: null
        - name: MQCHT_SVRCONN
          pcf_type: null
          type_hint: null
        - name: MQCHT_CLNTCONN
          pcf_type: null
          type_hint: null
        - name: MQCHT_CLUSRCVR
          pcf_type: null
          type_hint: null
        - name: MQCHT_CLUSSDR
          pcf_type: null
          type_hint: null
        - name: MQCHT_MQTT
          pcf_type: null
          type_hint: null
        - name: ClientChannelWeight
          pcf_type: MQCFIN
          type_hint: int
        - name: ClientIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: CLWLChannelPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLChannelRank
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLChannelWeight
          pcf_type: MQCFIN
          type_hint: int
        - name: ConnectionAffinity
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAFTY_PREFERRED
          pcf_type: null
          type_hint: null
        - name: MQCAFTY_NONE
          pcf_type: null
          type_hint: null
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: DataConversion
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCDC_NO_SENDER_CONVERSION
          pcf_type: null
          type_hint: null
        - name: MQCDC_SENDER_CONVERSION
          pcf_type: null
          type_hint: null
        - name: DefaultChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQCHLD_FIXSHARED
          pcf_type: null
          type_hint: null
        - name: MQCHLD_SHARED
          pcf_type: null
          type_hint: null
        - name: DiscInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: DefReconnect
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRCN_NO
          pcf_type: null
          type_hint: null
        - name: MQRCN_YES
          pcf_type: null
          type_hint: null
        - name: MQRCN_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQRCN_DISABLED
          pcf_type: null
          type_hint: null
        - name: HeaderCompression
          pcf_type: MQCFIL
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_SYSTEM
          pcf_type: null
          type_hint: null
        - name: HeartbeatInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: InDoubtInbound
          pcf_type: MQCFIN
          type_hint: int
        - name: InDoubtOutbound
          pcf_type: MQCFIN
          type_hint: int
        - name: KeepAliveInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: LastMsgTime
          pcf_type: MQCFST
          type_hint: str
        - name: LocalAddress
          pcf_type: MQCFST
          type_hint: str
        - name: LongRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: LongRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxInstances
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxInstancesPerClient
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MCAName
          pcf_type: MQCFST
          type_hint: str
        - name: MCAType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCAT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQMCAT_THREAD
          pcf_type: null
          type_hint: null
        - name: MCAUserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: MessageCompression
          pcf_type: MQCFIL
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_RLE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ZLIBFAST
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ZLIBHIGH
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ANY
          pcf_type: null
          type_hint: null
        - name: ModeName
          pcf_type: MQCFST
          type_hint: str
        - name: MsgExit
          pcf_type: MQCFST
          type_hint: str
        - name: MsgsReceived
          pcf_type: MQCFIN64
          type_hint: int
        - name: MsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgRetryExit
          pcf_type: MQCFST
          type_hint: str
        - name: MsgRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgRetryUserData
          pcf_type: MQCFST
          type_hint: str
        - name: MsgsSent
          pcf_type: MQCFIN64
          type_hint: int
        - name: MsgUserData
          pcf_type: MQCFST
          type_hint: str
        - name: NetworkPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: NonPersistentMsgSpeed
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNPMS_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQNPMS_FAST
          pcf_type: null
          type_hint: null
        - name: Password
          pcf_type: MQCFST
          type_hint: str
        - name: PropertyControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPROP_COMPATIBILITY
          pcf_type: null
          type_hint: null
        - name: MQPROP_NONE
          pcf_type: null
          type_hint: null
        - name: MQPROP_ALL
          pcf_type: null
          type_hint: null
        - name: PutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPA_DEFAULT
          pcf_type: null
          type_hint: null
        - name: MQPA_CONTEXT
          pcf_type: null
          type_hint: null
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ReceiveExit
          pcf_type: MQCFST
          type_hint: str
        - name: ReceiveUserData
          pcf_type: MQCFST
          type_hint: str
        - name: ResetSeq
          pcf_type: MQCFIN
          type_hint: int
        - name: SecurityExit
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SendExit
          pcf_type: MQCFST
          type_hint: str
        - name: SendUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SeqNumberWrap
          pcf_type: MQCFIN
          type_hint: int
        - name: SharingConversations
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SPLProtection
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSPL_PASSTHRU
          pcf_type: null
          type_hint: null
        - name: MQSPL_REMOVE
          pcf_type: null
          type_hint: null
        - name: MQSPL_AS_POLICY
          pcf_type: null
          type_hint: null
        - name: SSLCipherSpec
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCipherSuite
          pcf_type: MQCFST
          type_hint: str
        - name: SSLClientAuth
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCA_REQUIRED
          pcf_type: null
          type_hint: null
        - name: MQSCA_OPTIONAL
          pcf_type: null
          type_hint: null
        - name: MQSCA_NEVER_REQUIRED
          pcf_type: null
          type_hint: null
        - name: SSLPeerName
          pcf_type: MQCFST
          type_hint: str
        - name: TpName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQXPT_LU62
          pcf_type: null
          type_hint: null
        - name: MQXPT_TCP
          pcf_type: null
          type_hint: null
        - name: MQXPT_NETBIOS
          pcf_type: null
          type_hint: null
        - name: MQXPT_SPX
          pcf_type: null
          type_hint: null
        - name: MQXPT_DECNET
          pcf_type: null
          type_hint: null
        - name: UseDLQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSEDLQ_NO
          pcf_type: null
          type_hint: null
        - name: MQUSEDLQ_YES
          pcf_type: null
          type_hint: null
        - name: UserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: XmitQName
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: BatchDataLimit
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchHeartbeat
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchSize
          pcf_type: MQCFIN
          type_hint: int
        - name: Certificatelabel
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHT_SENDER
          pcf_type: null
          type_hint: null
        - name: MQCHT_SERVER
          pcf_type: null
          type_hint: null
        - name: MQCHT_RECEIVER
          pcf_type: null
          type_hint: null
        - name: MQCHT_REQUESTER
          pcf_type: null
          type_hint: null
        - name: MQCHT_SVRCONN
          pcf_type: null
          type_hint: null
        - name: MQCHT_CLNTCONN
          pcf_type: null
          type_hint: null
        - name: MQCHT_CLUSRCVR
          pcf_type: null
          type_hint: null
        - name: MQCHT_CLUSSDR
          pcf_type: null
          type_hint: null
        - name: MQCHT_MQTT
          pcf_type: null
          type_hint: null
        - name: ClientChannelWeight
          pcf_type: MQCFIN
          type_hint: int
        - name: ClientIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: CLWLChannelPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLChannelRank
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLChannelWeight
          pcf_type: MQCFIN
          type_hint: int
        - name: ConnectionAffinity
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAFTY_PREFERRED
          pcf_type: null
          type_hint: null
        - name: MQCAFTY_NONE
          pcf_type: null
          type_hint: null
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: DataConversion
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCDC_NO_SENDER_CONVERSION
          pcf_type: null
          type_hint: null
        - name: MQCDC_SENDER_CONVERSION
          pcf_type: null
          type_hint: null
        - name: DefaultChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQCHLD_FIXSHARED
          pcf_type: null
          type_hint: null
        - name: MQCHLD_SHARED
          pcf_type: null
          type_hint: null
        - name: DiscInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: DefReconnect
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRCN_NO
          pcf_type: null
          type_hint: null
        - name: MQRCN_YES
          pcf_type: null
          type_hint: null
        - name: MQRCN_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQRCN_DISABLED
          pcf_type: null
          type_hint: null
        - name: HeaderCompression
          pcf_type: MQCFIL
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_SYSTEM
          pcf_type: null
          type_hint: null
        - name: HeartbeatInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: InDoubtInbound
          pcf_type: MQCFIN
          type_hint: int
        - name: InDoubtOutbound
          pcf_type: MQCFIN
          type_hint: int
        - name: KeepAliveInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: LastMsgTime
          pcf_type: MQCFST
          type_hint: str
        - name: LocalAddress
          pcf_type: MQCFST
          type_hint: str
        - name: LongRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: LongRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxInstances
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxInstancesPerClient
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MCAName
          pcf_type: MQCFST
          type_hint: str
        - name: MCAType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCAT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQMCAT_THREAD
          pcf_type: null
          type_hint: null
        - name: MCAUserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: MessageCompression
          pcf_type: MQCFIL
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_RLE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ZLIBFAST
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ZLIBHIGH
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ANY
          pcf_type: null
          type_hint: null
        - name: ModeName
          pcf_type: MQCFST
          type_hint: str
        - name: MsgExit
          pcf_type: MQCFST
          type_hint: str
        - name: MsgsReceived
          pcf_type: MQCFIN64
          type_hint: int
        - name: MsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgRetryExit
          pcf_type: MQCFST
          type_hint: str
        - name: MsgRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgRetryUserData
          pcf_type: MQCFST
          type_hint: str
        - name: MsgsSent
          pcf_type: MQCFIN64
          type_hint: int
        - name: MsgUserData
          pcf_type: MQCFST
          type_hint: str
        - name: NetworkPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: NonPersistentMsgSpeed
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNPMS_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQNPMS_FAST
          pcf_type: null
          type_hint: null
        - name: Password
          pcf_type: MQCFST
          type_hint: str
        - name: PropertyControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPROP_COMPATIBILITY
          pcf_type: null
          type_hint: null
        - name: MQPROP_NONE
          pcf_type: null
          type_hint: null
        - name: MQPROP_ALL
          pcf_type: null
          type_hint: null
        - name: PutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPA_DEFAULT
          pcf_type: null
          type_hint: null
        - name: MQPA_CONTEXT
          pcf_type: null
          type_hint: null
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ReceiveExit
          pcf_type: MQCFST
          type_hint: str
        - name: ReceiveUserData
          pcf_type: MQCFST
          type_hint: str
        - name: ResetSeq
          pcf_type: MQCFIN
          type_hint: int
        - name: SecurityExit
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SendExit
          pcf_type: MQCFST
          type_hint: str
        - name: SendUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SeqNumberWrap
          pcf_type: MQCFIN
          type_hint: int
        - name: SharingConversations
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SPLProtection
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSPL_PASSTHRU
          pcf_type: null
          type_hint: null
        - name: MQSPL_REMOVE
          pcf_type: null
          type_hint: null
        - name: MQSPL_AS_POLICY
          pcf_type: null
          type_hint: null
        - name: SSLCipherSpec
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCipherSuite
          pcf_type: MQCFST
          type_hint: str
        - name: SSLClientAuth
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCA_REQUIRED
          pcf_type: null
          type_hint: null
        - name: MQSCA_OPTIONAL
          pcf_type: null
          type_hint: null
        - name: MQSCA_NEVER_REQUIRED
          pcf_type: null
          type_hint: null
        - name: SSLPeerName
          pcf_type: MQCFST
          type_hint: str
        - name: TpName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQXPT_LU62
          pcf_type: null
          type_hint: null
        - name: MQXPT_TCP
          pcf_type: null
          type_hint: null
        - name: MQXPT_NETBIOS
          pcf_type: null
          type_hint: null
        - name: MQXPT_SPX
          pcf_type: null
          type_hint: null
        - name: MQXPT_DECNET
          pcf_type: null
          type_hint: null
        - name: UseDLQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSEDLQ_NO
          pcf_type: null
          type_hint: null
        - name: MQUSEDLQ_YES
          pcf_type: null
          type_hint: null
        - name: UserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: XmitQName
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - BatchDataLimit
          - BatchHeartbeat
          - BatchInterval
          - BatchSize
          - CLWLChannelPriority
          - CLWLChannelRank
          - CLWLChannelWeight
          - Certificatelabel
          - ChannelDesc
          - ChannelMonitoring
          - ChannelName
          - ChannelStatistics
          - ChannelType
          - ClientChannelWeight
          - ClientIdentifier
          - ClusterName
          - ClusterNamelist
          - ConnectionAffinity
          - ConnectionName
          - DataConversion
          - DefReconnect
          - DefaultChannelDisposition
          - DiscInterval
          - HeaderCompression
          - HeartbeatInterval
          - InDoubtInbound
          - InDoubtOutbound
          - KeepAliveInterval
          - LastMsgTime
          - LocalAddress
          - LongRetryCount
          - LongRetryInterval
          - MCAName
          - MCAType
          - MCAUserIdentifier
          - MQCAFTY_NONE
          - MQCAFTY_PREFERRED
          - MQCDC_NO_SENDER_CONVERSION
          - MQCDC_SENDER_CONVERSION
          - MQCHLD_FIXSHARED
          - MQCHLD_PRIVATE
          - MQCHLD_SHARED
          - MQCHT_CLNTCONN
          - MQCHT_CLUSRCVR
          - MQCHT_CLUSSDR
          - MQCHT_MQTT
          - MQCHT_RECEIVER
          - MQCHT_REQUESTER
          - MQCHT_SENDER
          - MQCHT_SERVER
          - MQCHT_SVRCONN
          - MQCOMPRESS_ANY
          - MQCOMPRESS_NONE
          - MQCOMPRESS_NONE
          - MQCOMPRESS_RLE
          - MQCOMPRESS_SYSTEM
          - MQCOMPRESS_ZLIBFAST
          - MQCOMPRESS_ZLIBHIGH
          - MQMCAT_PROCESS
          - MQMCAT_THREAD
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQNPMS_FAST
          - MQNPMS_NORMAL
          - MQPA_CONTEXT
          - MQPA_DEFAULT
          - MQPROP_ALL
          - MQPROP_COMPATIBILITY
          - MQPROP_NONE
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - MQRCN_DISABLED
          - MQRCN_NO
          - MQRCN_Q_MGR
          - MQRCN_YES
          - MQSCA_NEVER_REQUIRED
          - MQSCA_OPTIONAL
          - MQSCA_REQUIRED
          - MQSPL_AS_POLICY
          - MQSPL_PASSTHRU
          - MQSPL_REMOVE
          - MQUSEDLQ_NO
          - MQUSEDLQ_YES
          - MQXPT_DECNET
          - MQXPT_LU62
          - MQXPT_NETBIOS
          - MQXPT_SPX
          - MQXPT_TCP
          - MaxInstances
          - MaxInstancesPerClient
          - MaxMsgLength
          - MessageCompression
          - ModeName
          - MsgExit
          - MsgRetryCount
          - MsgRetryExit
          - MsgRetryInterval
          - MsgRetryUserData
          - MsgUserData
          - MsgsReceived
          - MsgsSent
          - NetworkPriority
          - NonPersistentMsgSpeed
          - Password
          - PropertyControl
          - PutAuthority
          - QMgrName
          - QSGDisposition
          - ReceiveExit
          - ReceiveUserData
          - ResetSeq
          - Returned
          - SPLProtection
          - SSLCipherSpec
          - SSLCipherSuite
          - SSLClientAuth
          - SSLPeerName
          - SecurityExit
          - SecurityUserData
          - SendExit
          - SendUserData
          - SeqNumberWrap
          - SharingConversations
          - ShortRetryCount
          - ShortRetryInterval
          - TpName
          - TransportType
          - UseDLQ
          - UserIdentifier
          - XmitQName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - BatchDataLimit
          - BatchHeartbeat
          - BatchInterval
          - BatchSize
          - CLWLChannelPriority
          - CLWLChannelRank
          - CLWLChannelWeight
          - Certificatelabel
          - ChannelDesc
          - ChannelMonitoring
          - ChannelName
          - ChannelStatistics
          - ChannelType
          - ClientChannelWeight
          - ClientIdentifier
          - ClusterName
          - ClusterNamelist
          - ConnectionAffinity
          - ConnectionName
          - DataConversion
          - DefReconnect
          - DefaultChannelDisposition
          - DiscInterval
          - HeaderCompression
          - HeartbeatInterval
          - InDoubtInbound
          - InDoubtOutbound
          - KeepAliveInterval
          - LastMsgTime
          - LocalAddress
          - LongRetryCount
          - LongRetryInterval
          - MCAName
          - MCAType
          - MCAUserIdentifier
          - MQCAFTY_NONE
          - MQCAFTY_PREFERRED
          - MQCDC_NO_SENDER_CONVERSION
          - MQCDC_SENDER_CONVERSION
          - MQCHLD_FIXSHARED
          - MQCHLD_PRIVATE
          - MQCHLD_SHARED
          - MQCHT_CLNTCONN
          - MQCHT_CLUSRCVR
          - MQCHT_CLUSSDR
          - MQCHT_MQTT
          - MQCHT_RECEIVER
          - MQCHT_REQUESTER
          - MQCHT_SENDER
          - MQCHT_SERVER
          - MQCHT_SVRCONN
          - MQCOMPRESS_ANY
          - MQCOMPRESS_NONE
          - MQCOMPRESS_NONE
          - MQCOMPRESS_RLE
          - MQCOMPRESS_SYSTEM
          - MQCOMPRESS_ZLIBFAST
          - MQCOMPRESS_ZLIBHIGH
          - MQMCAT_PROCESS
          - MQMCAT_THREAD
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQNPMS_FAST
          - MQNPMS_NORMAL
          - MQPA_CONTEXT
          - MQPA_DEFAULT
          - MQPROP_ALL
          - MQPROP_COMPATIBILITY
          - MQPROP_NONE
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - MQRCN_DISABLED
          - MQRCN_NO
          - MQRCN_Q_MGR
          - MQRCN_YES
          - MQSCA_NEVER_REQUIRED
          - MQSCA_OPTIONAL
          - MQSCA_REQUIRED
          - MQSPL_AS_POLICY
          - MQSPL_PASSTHRU
          - MQSPL_REMOVE
          - MQUSEDLQ_NO
          - MQUSEDLQ_YES
          - MQXPT_DECNET
          - MQXPT_LU62
          - MQXPT_NETBIOS
          - MQXPT_SPX
          - MQXPT_TCP
          - MaxInstances
          - MaxInstancesPerClient
          - MaxMsgLength
          - MessageCompression
          - ModeName
          - MsgExit
          - MsgRetryCount
          - MsgRetryExit
          - MsgRetryInterval
          - MsgRetryUserData
          - MsgUserData
          - MsgsReceived
          - MsgsSent
          - NetworkPriority
          - NonPersistentMsgSpeed
          - Password
          - PropertyControl
          - PutAuthority
          - QMgrName
          - QSGDisposition
          - ReceiveExit
          - ReceiveUserData
          - ResetSeq
          - Returned
          - SPLProtection
          - SSLCipherSpec
          - SSLCipherSuite
          - SSLClientAuth
          - SSLPeerName
          - SecurityExit
          - SecurityUserData
          - SendExit
          - SendUserData
          - SeqNumberWrap
          - SharingConversations
          - ShortRetryCount
          - ShortRetryInterval
          - TpName
          - TransportType
          - UseDLQ
          - UserIdentifier
          - XmitQName
    notes: []
  - mqsc:
      name: DISPLAY CHINIT
      href: SSFKSJ_9.4.0/refadmin/q086060_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_CHINIT
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY CHLAUTH
      href: SSFKSJ_9.4.0/refadmin/q086070_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_CHLAUTH_RECS
      request_href: SSFKSJ_9.4.0/refadmin/q087450_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087450_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: Address
          pcf_type: MQCFST
          type_hint: str
        - name: AddrList
          pcf_type: MQCFSL
          type_hint: str
        - name: Chlauth
          pcf_type: MQCFST
          type_hint: str
        - name: CheckClient
          pcf_type: MQCFIN
          type_hint: int
        - name: ClntUser
          pcf_type: MQCFST
          type_hint: str
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: MCAUser
          pcf_type: MQCFST
          type_hint: str
        - name: QMName
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCertIssuer
          pcf_type: MQCFST
          type_hint: str
        - name: SSLPeer
          pcf_type: MQCFST
          type_hint: str
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAUT_BLOCKUSER
          pcf_type: null
          type_hint: null
        - name: MQCAUT_BLOCKADDR
          pcf_type: null
          type_hint: null
        - name: MQCAUT_SSLPEERMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_ADDRESSMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_USERMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_QMGRMAP
          pcf_type: null
          type_hint: null
        - name: UserList
          pcf_type: MQCFSL
          type_hint: str
        - name: UserSrc
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSRC_MAP
          pcf_type: null
          type_hint: null
        - name: MQUSRC_NOACCESS
          pcf_type: null
          type_hint: null
        - name: MQUSRC_CHANNEL
          pcf_type: null
          type_hint: null
        - name: Warn
          pcf_type: MQCFIN
          type_hint: int
        - name: MQWARN_NO
          pcf_type: null
          type_hint: null
        - name: MQWARN_YES
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: Address
          pcf_type: MQCFST
          type_hint: str
        - name: AddrList
          pcf_type: MQCFSL
          type_hint: str
        - name: Chlauth
          pcf_type: MQCFST
          type_hint: str
        - name: CheckClient
          pcf_type: MQCFIN
          type_hint: int
        - name: ClntUser
          pcf_type: MQCFST
          type_hint: str
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: MCAUser
          pcf_type: MQCFST
          type_hint: str
        - name: QMName
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCertIssuer
          pcf_type: MQCFST
          type_hint: str
        - name: SSLPeer
          pcf_type: MQCFST
          type_hint: str
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAUT_BLOCKUSER
          pcf_type: null
          type_hint: null
        - name: MQCAUT_BLOCKADDR
          pcf_type: null
          type_hint: null
        - name: MQCAUT_SSLPEERMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_ADDRESSMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_USERMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_QMGRMAP
          pcf_type: null
          type_hint: null
        - name: UserList
          pcf_type: MQCFSL
          type_hint: str
        - name: UserSrc
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSRC_MAP
          pcf_type: null
          type_hint: null
        - name: MQUSRC_NOACCESS
          pcf_type: null
          type_hint: null
        - name: MQUSRC_CHANNEL
          pcf_type: null
          type_hint: null
        - name: Warn
          pcf_type: MQCFIN
          type_hint: int
        - name: MQWARN_NO
          pcf_type: null
          type_hint: null
        - name: MQWARN_YES
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AddrList
          - Address
          - AlterationDate
          - AlterationTime
          - Always
          - Always
          - Always
          - Always
          - Always
          - Always
          - Always
          - CheckClient
          - Chlauth
          - ClntUser
          - Description
          - MCAUser
          - MQCAUT_ADDRESSMAP
          - MQCAUT_BLOCKADDR
          - MQCAUT_BLOCKUSER
          - MQCAUT_QMGRMAP
          - MQCAUT_SSLPEERMAP
          - MQCAUT_USERMAP
          - MQUSRC_CHANNEL
          - MQUSRC_MAP
          - MQUSRC_NOACCESS
          - MQWARN_NO
          - MQWARN_YES
          - QMName
          - Returned
          - SSLCertIssuer
          - SSLPeer
          - Type
          - UserList
          - UserSrc
          - Warn
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AddrList
          - Address
          - AlterationDate
          - AlterationTime
          - Always
          - Always
          - Always
          - Always
          - Always
          - Always
          - Always
          - CheckClient
          - Chlauth
          - ClntUser
          - Description
          - MCAUser
          - MQCAUT_ADDRESSMAP
          - MQCAUT_BLOCKADDR
          - MQCAUT_BLOCKUSER
          - MQCAUT_QMGRMAP
          - MQCAUT_SSLPEERMAP
          - MQCAUT_USERMAP
          - MQUSRC_CHANNEL
          - MQUSRC_MAP
          - MQUSRC_NOACCESS
          - MQWARN_NO
          - MQWARN_YES
          - QMName
          - Returned
          - SSLCertIssuer
          - SSLPeer
          - Type
          - UserList
          - UserSrc
          - Warn
    notes: []
  - mqsc:
      name: DISPLAY CHSTATUS
      href: SSFKSJ_9.4.0/refadmin/q086090_.html
      positional_parameters:
        - connection-name
        - filter-keyword
        - filter-value
        - generic-channel-name
        - operator
        - q-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_CHANNEL_STATUS
      request_href: SSFKSJ_9.4.0/refadmin/q087570_.html
      response_href: SSFKSJ_9.4.0/refadmin/q125035_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStartDate
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStartTime
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHS_DISCONNECTED
          pcf_type: null
          type_hint: null
        - name: MQCHS_RUNNING
          pcf_type: null
          type_hint: null
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHT_MQTT
          pcf_type: null
          type_hint: null
        - name: ClientUser
          pcf_type: MQCFST
          type_hint: str
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: Connections
          pcf_type: MQCFIN
          type_hint: int
        - name: InDoubtInput
          pcf_type: MQCFIN
          type_hint: int
        - name: InDoubtOutput
          pcf_type: MQCFIN
          type_hint: int
        - name: KeepAliveInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: LastMsgDate
          pcf_type: MQCFST
          type_hint: str
        - name: LastMsgTime
          pcf_type: MQCFST
          type_hint: str
        - name: MCAUser
          pcf_type: MQCFST
          type_hint: str
        - name: MsgsReceived
          pcf_type: MQCFIN64
          type_hint: int
        - name: MsgsSent
          pcf_type: MQCFIN64
          type_hint: int
        - name: PendingOutbound
          pcf_type: MQCFIN
          type_hint: int
        - name: Protocol
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStartDate
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStartTime
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHS_DISCONNECTED
          pcf_type: null
          type_hint: null
        - name: MQCHS_RUNNING
          pcf_type: null
          type_hint: null
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHT_AMQP
          pcf_type: null
          type_hint: null
        - name: ClientUser
          pcf_type: MQCFST
          type_hint: str
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: Connections
          pcf_type: MQCFIN
          type_hint: int
        - name: KeepAliveInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: LastMsgDate
          pcf_type: MQCFST
          type_hint: str
        - name: LastMsgTime
          pcf_type: MQCFST
          type_hint: str
        - name: MCAUser
          pcf_type: MQCFST
          type_hint: str
        - name: MsgsReceived
          pcf_type: MQCFIN64
          type_hint: int
        - name: MsgsSent
          pcf_type: MQCFIN64
          type_hint: int
        - name: Protocol
          pcf_type: MQCFST
          type_hint: str
        - name: MQPROTO_AMQP
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - Always
          - ChannelName
          - ChannelStartDate
          - ChannelStartTime
          - ChannelStatus
          - ChannelType
          - ClientUser
          - ConnectionName
          - Connections
          - InDoubtInput
          - InDoubtOutput
          - KeepAliveInterval
          - LastMsgDate
          - LastMsgTime
          - MCAUser
          - MQCHS_DISCONNECTED
          - MQCHS_RUNNING
          - MQCHT_MQTT
          - MsgsReceived
          - MsgsSent
          - PendingOutbound
          - Protocol
          - Returned
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - Always
          - ChannelName
          - ChannelStartDate
          - ChannelStartTime
          - ChannelStatus
          - ChannelType
          - ClientUser
          - ConnectionName
          - Connections
          - KeepAliveInterval
          - LastMsgDate
          - LastMsgTime
          - MCAUser
          - MQCHS_DISCONNECTED
          - MQCHS_RUNNING
          - MQCHT_AMQP
          - MQPROTO_AMQP
          - MsgsReceived
          - MsgsSent
          - Protocol
          - Returned
    notes: []
  - mqsc:
      name: DISPLAY CLUSQMGR
      href: SSFKSJ_9.4.0/refadmin/q086110_.html
      positional_parameters:
        - filter-keyword
        - filter-value
        - generic-name
        - generic-qmgr-name
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_CLUSTER_Q_MGR
      request_href: SSFKSJ_9.4.0/refadmin/q087590_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087590_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: BatchHeartbeat
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHS_BINDING
          pcf_type: null
          type_hint: null
        - name: MQCHS_INACTIVE
          pcf_type: null
          type_hint: null
        - name: MQCHS_STARTING
          pcf_type: null
          type_hint: null
        - name: MQCHS_RUNNING
          pcf_type: null
          type_hint: null
        - name: MQCHS_PAUSED
          pcf_type: null
          type_hint: null
        - name: MQCHS_STOPPING
          pcf_type: null
          type_hint: null
        - name: MQCHS_RETRYING
          pcf_type: null
          type_hint: null
        - name: MQCHS_STOPPED
          pcf_type: null
          type_hint: null
        - name: MQCHS_REQUESTING
          pcf_type: null
          type_hint: null
        - name: MQCHS_INITIALIZING
          pcf_type: null
          type_hint: null
        - name: ClusterDate
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterInfo
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterTime
          pcf_type: MQCFST
          type_hint: str
        - name: CLWLChannelPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLChannelRank
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLChannelWeight
          pcf_type: MQCFIN
          type_hint: int
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: DataConversion
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCDC_NO_SENDER_CONVERSION
          pcf_type: null
          type_hint: null
        - name: MQCDC_SENDER_CONVERSION
          pcf_type: null
          type_hint: null
        - name: DiscInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: HeaderCompression
          pcf_type: MQCFIL
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_SYSTEM
          pcf_type: null
          type_hint: null
        - name: HeartbeatInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: KeepAliveInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: LocalAddress
          pcf_type: MQCFST
          type_hint: str
        - name: LongRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: LongRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MCAName
          pcf_type: MQCFST
          type_hint: str
        - name: MCAType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCAT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQMCAT_THREAD
          pcf_type: null
          type_hint: null
        - name: MCAUserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: MessageCompression
          pcf_type: MQCFIL
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_RLE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ZLIBFAST
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ZLIBHIGH
          pcf_type: null
          type_hint: null
        - name: ModeName
          pcf_type: MQCFST
          type_hint: str
        - name: MsgExit
          pcf_type: MQCFST
          type_hint: str
        - name: MsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgRetryExit
          pcf_type: MQCFST
          type_hint: str
        - name: MsgRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgRetryUserData
          pcf_type: MQCFST
          type_hint: str
        - name: MsgUserData
          pcf_type: MQCFST
          type_hint: str
        - name: NetworkPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: NonPersistentMsgSpeed
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNPMS_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQNPMS_FAST
          pcf_type: null
          type_hint: null
        - name: Password
          pcf_type: MQCFST
          type_hint: str
        - name: PutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPA_DEFAULT
          pcf_type: null
          type_hint: null
        - name: MQPA_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQPA_ALTERNATE_OR_MCA
          pcf_type: null
          type_hint: null
        - name: MQPA_ONLY_MCA
          pcf_type: null
          type_hint: null
        - name: QMgrDefinitionType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMDT_EXPLICIT_CLUSTER_SENDER
          pcf_type: null
          type_hint: null
        - name: MQQMDT_AUTO_CLUSTER_SENDER
          pcf_type: null
          type_hint: null
        - name: MQQMDT_CLUSTER_RECEIVER
          pcf_type: null
          type_hint: null
        - name: MQQMDT_AUTO_EXP_CLUSTER_SENDER
          pcf_type: null
          type_hint: null
        - name: QMgrIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMT_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQQMT_REPOSITORY
          pcf_type: null
          type_hint: null
        - name: ReceiveExit
          pcf_type: MQCFST
          type_hint: str
        - name: ReceiveUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityExit
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SendExit
          pcf_type: MQCFST
          type_hint: str
        - name: SendUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SeqNumberWrap
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLCipherSpec
          pcf_type: MQCFST
          type_hint: str
        - name: SSLClientAuth
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCA_REQUIRED
          pcf_type: null
          type_hint: null
        - name: MQSCA_OPTIONAL
          pcf_type: null
          type_hint: null
        - name: SSLPeerName
          pcf_type: MQCFST
          type_hint: str
        - name: Suspend
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSUS_NO
          pcf_type: null
          type_hint: null
        - name: MQSUS_YES
          pcf_type: null
          type_hint: null
        - name: TpName
          pcf_type: MQCFST
          type_hint: str
        - name: TranmissionQName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQXPT_LU62
          pcf_type: null
          type_hint: null
        - name: MQXPT_TCP
          pcf_type: null
          type_hint: null
        - name: MQXPT_NETBIOS
          pcf_type: null
          type_hint: null
        - name: MQXPT_SPX
          pcf_type: null
          type_hint: null
        - name: MQXPT_DECNET
          pcf_type: null
          type_hint: null
        - name: UseDLQ
          pcf_type: MQCFIN
          type_hint: int
        - name: UserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: Version
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: BatchHeartbeat
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: BatchSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHS_BINDING
          pcf_type: null
          type_hint: null
        - name: MQCHS_INACTIVE
          pcf_type: null
          type_hint: null
        - name: MQCHS_STARTING
          pcf_type: null
          type_hint: null
        - name: MQCHS_RUNNING
          pcf_type: null
          type_hint: null
        - name: MQCHS_PAUSED
          pcf_type: null
          type_hint: null
        - name: MQCHS_STOPPING
          pcf_type: null
          type_hint: null
        - name: MQCHS_RETRYING
          pcf_type: null
          type_hint: null
        - name: MQCHS_STOPPED
          pcf_type: null
          type_hint: null
        - name: MQCHS_REQUESTING
          pcf_type: null
          type_hint: null
        - name: MQCHS_INITIALIZING
          pcf_type: null
          type_hint: null
        - name: ClusterDate
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterInfo
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterTime
          pcf_type: MQCFST
          type_hint: str
        - name: CLWLChannelPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLChannelRank
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLChannelWeight
          pcf_type: MQCFIN
          type_hint: int
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: DataConversion
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCDC_NO_SENDER_CONVERSION
          pcf_type: null
          type_hint: null
        - name: MQCDC_SENDER_CONVERSION
          pcf_type: null
          type_hint: null
        - name: DiscInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: HeaderCompression
          pcf_type: MQCFIL
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_SYSTEM
          pcf_type: null
          type_hint: null
        - name: HeartbeatInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: KeepAliveInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: LocalAddress
          pcf_type: MQCFST
          type_hint: str
        - name: LongRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: LongRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MCAName
          pcf_type: MQCFST
          type_hint: str
        - name: MCAType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCAT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQMCAT_THREAD
          pcf_type: null
          type_hint: null
        - name: MCAUserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: MessageCompression
          pcf_type: MQCFIL
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_RLE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ZLIBFAST
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ZLIBHIGH
          pcf_type: null
          type_hint: null
        - name: ModeName
          pcf_type: MQCFST
          type_hint: str
        - name: MsgExit
          pcf_type: MQCFST
          type_hint: str
        - name: MsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgRetryExit
          pcf_type: MQCFST
          type_hint: str
        - name: MsgRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgRetryUserData
          pcf_type: MQCFST
          type_hint: str
        - name: MsgUserData
          pcf_type: MQCFST
          type_hint: str
        - name: NetworkPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: NonPersistentMsgSpeed
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNPMS_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQNPMS_FAST
          pcf_type: null
          type_hint: null
        - name: Password
          pcf_type: MQCFST
          type_hint: str
        - name: PutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPA_DEFAULT
          pcf_type: null
          type_hint: null
        - name: MQPA_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQPA_ALTERNATE_OR_MCA
          pcf_type: null
          type_hint: null
        - name: MQPA_ONLY_MCA
          pcf_type: null
          type_hint: null
        - name: QMgrDefinitionType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMDT_EXPLICIT_CLUSTER_SENDER
          pcf_type: null
          type_hint: null
        - name: MQQMDT_AUTO_CLUSTER_SENDER
          pcf_type: null
          type_hint: null
        - name: MQQMDT_CLUSTER_RECEIVER
          pcf_type: null
          type_hint: null
        - name: MQQMDT_AUTO_EXP_CLUSTER_SENDER
          pcf_type: null
          type_hint: null
        - name: QMgrIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMT_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQQMT_REPOSITORY
          pcf_type: null
          type_hint: null
        - name: ReceiveExit
          pcf_type: MQCFST
          type_hint: str
        - name: ReceiveUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityExit
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SendExit
          pcf_type: MQCFST
          type_hint: str
        - name: SendUserData
          pcf_type: MQCFST
          type_hint: str
        - name: SeqNumberWrap
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ShortRetryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLCipherSpec
          pcf_type: MQCFST
          type_hint: str
        - name: SSLClientAuth
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCA_REQUIRED
          pcf_type: null
          type_hint: null
        - name: MQSCA_OPTIONAL
          pcf_type: null
          type_hint: null
        - name: SSLPeerName
          pcf_type: MQCFST
          type_hint: str
        - name: Suspend
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSUS_NO
          pcf_type: null
          type_hint: null
        - name: MQSUS_YES
          pcf_type: null
          type_hint: null
        - name: TpName
          pcf_type: MQCFST
          type_hint: str
        - name: TranmissionQName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQXPT_LU62
          pcf_type: null
          type_hint: null
        - name: MQXPT_TCP
          pcf_type: null
          type_hint: null
        - name: MQXPT_NETBIOS
          pcf_type: null
          type_hint: null
        - name: MQXPT_SPX
          pcf_type: null
          type_hint: null
        - name: MQXPT_DECNET
          pcf_type: null
          type_hint: null
        - name: UseDLQ
          pcf_type: MQCFIN
          type_hint: int
        - name: UserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: Version
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - BatchHeartbeat
          - BatchInterval
          - BatchSize
          - CLWLChannelPriority
          - CLWLChannelRank
          - CLWLChannelWeight
          - ChannelDesc
          - ChannelMonitoring
          - ChannelName
          - ChannelStatus
          - ClusterDate
          - ClusterInfo
          - ClusterName
          - ClusterTime
          - ConnectionName
          - DataConversion
          - DiscInterval
          - HeaderCompression
          - HeartbeatInterval
          - KeepAliveInterval
          - LocalAddress
          - LongRetryCount
          - LongRetryInterval
          - MCAName
          - MCAType
          - MCAUserIdentifier
          - MQCDC_NO_SENDER_CONVERSION
          - MQCDC_SENDER_CONVERSION
          - MQCHS_BINDING
          - MQCHS_INACTIVE
          - MQCHS_INITIALIZING
          - MQCHS_PAUSED
          - MQCHS_REQUESTING
          - MQCHS_RETRYING
          - MQCHS_RUNNING
          - MQCHS_STARTING
          - MQCHS_STOPPED
          - MQCHS_STOPPING
          - MQCOMPRESS_NONE
          - MQCOMPRESS_NONE
          - MQCOMPRESS_RLE
          - MQCOMPRESS_SYSTEM
          - MQCOMPRESS_ZLIBFAST
          - MQCOMPRESS_ZLIBHIGH
          - MQMCAT_PROCESS
          - MQMCAT_THREAD
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_OFF
          - MQMON_Q_MGR
          - MQNPMS_FAST
          - MQNPMS_NORMAL
          - MQPA_ALTERNATE_OR_MCA
          - MQPA_CONTEXT
          - MQPA_DEFAULT
          - MQPA_ONLY_MCA
          - MQQMDT_AUTO_CLUSTER_SENDER
          - MQQMDT_AUTO_EXP_CLUSTER_SENDER
          - MQQMDT_CLUSTER_RECEIVER
          - MQQMDT_EXPLICIT_CLUSTER_SENDER
          - MQQMT_NORMAL
          - MQQMT_REPOSITORY
          - MQSCA_OPTIONAL
          - MQSCA_REQUIRED
          - MQSUS_NO
          - MQSUS_YES
          - MQXPT_DECNET
          - MQXPT_LU62
          - MQXPT_NETBIOS
          - MQXPT_SPX
          - MQXPT_TCP
          - MaxMsgLength
          - MessageCompression
          - ModeName
          - MsgExit
          - MsgRetryCount
          - MsgRetryExit
          - MsgRetryInterval
          - MsgRetryUserData
          - MsgUserData
          - NetworkPriority
          - NonPersistentMsgSpeed
          - Password
          - PutAuthority
          - QMgrDefinitionType
          - QMgrIdentifier
          - QMgrName
          - QMgrType
          - ReceiveExit
          - ReceiveUserData
          - Returned
          - SSLCipherSpec
          - SSLClientAuth
          - SSLPeerName
          - SecurityExit
          - SecurityUserData
          - SendExit
          - SendUserData
          - SeqNumberWrap
          - ShortRetryCount
          - ShortRetryInterval
          - Suspend
          - TpName
          - TranmissionQName
          - TransportType
          - UseDLQ
          - UserIdentifier
          - Version
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - BatchHeartbeat
          - BatchInterval
          - BatchSize
          - CLWLChannelPriority
          - CLWLChannelRank
          - CLWLChannelWeight
          - ChannelDesc
          - ChannelMonitoring
          - ChannelName
          - ChannelStatus
          - ClusterDate
          - ClusterInfo
          - ClusterName
          - ClusterTime
          - ConnectionName
          - DataConversion
          - DiscInterval
          - HeaderCompression
          - HeartbeatInterval
          - KeepAliveInterval
          - LocalAddress
          - LongRetryCount
          - LongRetryInterval
          - MCAName
          - MCAType
          - MCAUserIdentifier
          - MQCDC_NO_SENDER_CONVERSION
          - MQCDC_SENDER_CONVERSION
          - MQCHS_BINDING
          - MQCHS_INACTIVE
          - MQCHS_INITIALIZING
          - MQCHS_PAUSED
          - MQCHS_REQUESTING
          - MQCHS_RETRYING
          - MQCHS_RUNNING
          - MQCHS_STARTING
          - MQCHS_STOPPED
          - MQCHS_STOPPING
          - MQCOMPRESS_NONE
          - MQCOMPRESS_NONE
          - MQCOMPRESS_RLE
          - MQCOMPRESS_SYSTEM
          - MQCOMPRESS_ZLIBFAST
          - MQCOMPRESS_ZLIBHIGH
          - MQMCAT_PROCESS
          - MQMCAT_THREAD
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_OFF
          - MQMON_Q_MGR
          - MQNPMS_FAST
          - MQNPMS_NORMAL
          - MQPA_ALTERNATE_OR_MCA
          - MQPA_CONTEXT
          - MQPA_DEFAULT
          - MQPA_ONLY_MCA
          - MQQMDT_AUTO_CLUSTER_SENDER
          - MQQMDT_AUTO_EXP_CLUSTER_SENDER
          - MQQMDT_CLUSTER_RECEIVER
          - MQQMDT_EXPLICIT_CLUSTER_SENDER
          - MQQMT_NORMAL
          - MQQMT_REPOSITORY
          - MQSCA_OPTIONAL
          - MQSCA_REQUIRED
          - MQSUS_NO
          - MQSUS_YES
          - MQXPT_DECNET
          - MQXPT_LU62
          - MQXPT_NETBIOS
          - MQXPT_SPX
          - MQXPT_TCP
          - MaxMsgLength
          - MessageCompression
          - ModeName
          - MsgExit
          - MsgRetryCount
          - MsgRetryExit
          - MsgRetryInterval
          - MsgRetryUserData
          - MsgUserData
          - NetworkPriority
          - NonPersistentMsgSpeed
          - Password
          - PutAuthority
          - QMgrDefinitionType
          - QMgrIdentifier
          - QMgrName
          - QMgrType
          - ReceiveExit
          - ReceiveUserData
          - Returned
          - SSLCipherSpec
          - SSLClientAuth
          - SSLPeerName
          - SecurityExit
          - SecurityUserData
          - SendExit
          - SendUserData
          - SeqNumberWrap
          - ShortRetryCount
          - ShortRetryInterval
          - Suspend
          - TpName
          - TranmissionQName
          - TransportType
          - UseDLQ
          - UserIdentifier
          - Version
    notes: []
  - mqsc:
      name: DISPLAY CMDSERV
      href: SSFKSJ_9.4.0/refadmin/q086120_.html
      positional_parameters: []
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_CMDSERV
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY COMMINFO
      href: SSFKSJ_9.4.0/refadmin/q086130_.html
      positional_parameters:
        - (generic-comminfo-name)
        - filter-keyword
        - filter-value
        - operator
        - string
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_COMM_INFO
      request_href: SSFKSJ_9.4.0/refadmin/q087610_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087610_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: Bridge
          pcf_type: MQCFIN
          type_hint: int
        - name: CCSID
          pcf_type: MQCFIN
          type_hint: int
        - name: CommEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_EXCEPTION
          pcf_type: null
          type_hint: null
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: Encoding
          pcf_type: MQCFIN
          type_hint: int
        - name: MQENC_AS_PUBLISHED
          pcf_type: null
          type_hint: null
        - name: MQENC_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQENC_REVERSED
          pcf_type: null
          type_hint: null
        - name: MQENC_S390
          pcf_type: null
          type_hint: null
        - name: MQENC_TNS
          pcf_type: null
          type_hint: null
        - name: GrpAddress
          pcf_type: MQCFST
          type_hint: str
        - name: MonitorInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MulticastHeartbeat
          pcf_type: MQCFIN
          type_hint: int
        - name: MulticastPropControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCP_ALL
          pcf_type: null
          type_hint: null
        - name: MQMAP_REPLY
          pcf_type: null
          type_hint: null
        - name: MQMAP_USER
          pcf_type: null
          type_hint: null
        - name: MQMAP_NONE
          pcf_type: null
          type_hint: null
        - name: MQMAP_COMPAT
          pcf_type: null
          type_hint: null
        - name: MsgHistory
          pcf_type: MQCFIN
          type_hint: int
        - name: NewSubHistory
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNSH_NONE
          pcf_type: null
          type_hint: null
        - name: MQNSH_ALL
          pcf_type: null
          type_hint: null
        - name: PortNumber
          pcf_type: MQCFIN
          type_hint: int
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCIT_MULTICAST
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: Bridge
          pcf_type: MQCFIN
          type_hint: int
        - name: CCSID
          pcf_type: MQCFIN
          type_hint: int
        - name: CommEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_EXCEPTION
          pcf_type: null
          type_hint: null
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: Encoding
          pcf_type: MQCFIN
          type_hint: int
        - name: MQENC_AS_PUBLISHED
          pcf_type: null
          type_hint: null
        - name: MQENC_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQENC_REVERSED
          pcf_type: null
          type_hint: null
        - name: MQENC_S390
          pcf_type: null
          type_hint: null
        - name: MQENC_TNS
          pcf_type: null
          type_hint: null
        - name: GrpAddress
          pcf_type: MQCFST
          type_hint: str
        - name: MonitorInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MulticastHeartbeat
          pcf_type: MQCFIN
          type_hint: int
        - name: MulticastPropControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMCP_ALL
          pcf_type: null
          type_hint: null
        - name: MQMAP_REPLY
          pcf_type: null
          type_hint: null
        - name: MQMAP_USER
          pcf_type: null
          type_hint: null
        - name: MQMAP_NONE
          pcf_type: null
          type_hint: null
        - name: MQMAP_COMPAT
          pcf_type: null
          type_hint: null
        - name: MsgHistory
          pcf_type: MQCFIN
          type_hint: int
        - name: NewSubHistory
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNSH_NONE
          pcf_type: null
          type_hint: null
        - name: MQNSH_ALL
          pcf_type: null
          type_hint: null
        - name: PortNumber
          pcf_type: MQCFIN
          type_hint: int
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCIT_MULTICAST
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - Bridge
          - CCSID
          - CommEvent
          - ComminfoName
          - Description
          - Encoding
          - GrpAddress
          - MQCIT_MULTICAST
          - MQENC_AS_PUBLISHED
          - MQENC_NORMAL
          - MQENC_REVERSED
          - MQENC_S390
          - MQENC_TNS
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_EXCEPTION
          - MQMAP_COMPAT
          - MQMAP_NONE
          - MQMAP_REPLY
          - MQMAP_USER
          - MQMCP_ALL
          - MQNSH_ALL
          - MQNSH_NONE
          - MonitorInterval
          - MsgHistory
          - MulticastHeartbeat
          - MulticastPropControl
          - NewSubHistory
          - PortNumber
          - Returned
          - Type
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - Bridge
          - CCSID
          - CommEvent
          - ComminfoName
          - Description
          - Encoding
          - GrpAddress
          - MQCIT_MULTICAST
          - MQENC_AS_PUBLISHED
          - MQENC_NORMAL
          - MQENC_REVERSED
          - MQENC_S390
          - MQENC_TNS
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_EXCEPTION
          - MQMAP_COMPAT
          - MQMAP_NONE
          - MQMAP_REPLY
          - MQMAP_USER
          - MQMCP_ALL
          - MQNSH_ALL
          - MQNSH_NONE
          - MonitorInterval
          - MsgHistory
          - MulticastHeartbeat
          - MulticastPropControl
          - NewSubHistory
          - PortNumber
          - Returned
          - Type
    notes: []
  - mqsc:
      name: DISPLAY CONN
      href: SSFKSJ_9.4.0/refadmin/q086140_.html
      positional_parameters:
        - generic-connid
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_CONN
      request_href: SSFKSJ_9.4.0/refadmin/q087620_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: ConnectionId
          pcf_type: MQCFBS
          type_hint: bytes
        - name: GenericConnectionId
          pcf_type: MQCFBS
          type_hint: bytes
        - name: ByteStringFilterCommand
          pcf_type: MQCFBF
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ConnectionAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: MQIACF_ALL
          pcf_type: null
          type_hint: null
        - name: MQBACF_CONNECTION_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_CONN_TAG
          pcf_type: null
          type_hint: null
        - name: MQBACF_EXTERNAL_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_ORIGIN_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_Q_MGR_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQCACF_APPL_TAG
          pcf_type: null
          type_hint: null
        - name: MQCACF_ASID
          pcf_type: null
          type_hint: null
        - name: MQCACF_ORIGIN_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSB_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_PST_ID
          pcf_type: null
          type_hint: null
        - name: MQCACF_TASK_NUMBER
          pcf_type: null
          type_hint: null
        - name: MQCACF_TRANSACTION_ID
          pcf_type: null
          type_hint: null
        - name: MQCACF_UOW_LOG_EXTENT_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_UOW_LOG_START_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_UOW_LOG_START_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_UOW_START_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_UOW_START_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_USER_IDENTIFIER
          pcf_type: null
          type_hint: null
        - name: MQCACH_CHANNEL_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACH_CONNECTION_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_APPL_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_CONNECT_OPTIONS
          pcf_type: null
          type_hint: null
        - name: MQIACF_PROCESS_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_THREAD_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_UOW_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_UOW_TYPE
          pcf_type: null
          type_hint: null
        - name: MQCACF_OBJECT_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACH_CONNECTION_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_QSG_DISP
          pcf_type: null
          type_hint: null
        - name: MQIA_READ_AHEAD
          pcf_type: null
          type_hint: null
        - name: MQIA_UR_DISP
          pcf_type: null
          type_hint: null
        - name: MQIACF_HANDLE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OBJECT_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OPTIONS
          pcf_type: null
          type_hint: null
        - name: ConnInfoType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_CONN_INFO_CONN
          pcf_type: null
          type_hint: null
        - name: MQIACF_CONN_INFO_HANDLE
          pcf_type: null
          type_hint: null
        - name: MQIACF_CONN_INFO_ALL
          pcf_type: null
          type_hint: null
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: URDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_ALL
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CONNECTION_ID_ERROR
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ByteStringFilterCommand
          - CommandScope
          - ConnInfoType
          - ConnectionAttrs
          - ConnectionId
          - GenericConnectionId
          - IntegerFilterCommand
          - MQBACF_CONNECTION_ID
          - MQBACF_CONN_TAG
          - MQBACF_EXTERNAL_UOW_ID
          - MQBACF_ORIGIN_UOW_ID
          - MQBACF_Q_MGR_UOW_ID
          - MQCACF_APPL_TAG
          - MQCACF_ASID
          - MQCACF_OBJECT_NAME
          - MQCACF_ORIGIN_NAME
          - MQCACF_PSB_NAME
          - MQCACF_PST_ID
          - MQCACF_TASK_NUMBER
          - MQCACF_TRANSACTION_ID
          - MQCACF_UOW_LOG_EXTENT_NAME
          - MQCACF_UOW_LOG_START_DATE
          - MQCACF_UOW_LOG_START_TIME
          - MQCACF_UOW_START_DATE
          - MQCACF_UOW_START_TIME
          - MQCACF_USER_IDENTIFIER
          - MQCACH_CHANNEL_NAME
          - MQCACH_CONNECTION_NAME
          - MQCACH_CONNECTION_NAME
          - MQIACF_ALL
          - MQIACF_CONNECT_OPTIONS
          - MQIACF_CONN_INFO_ALL
          - MQIACF_CONN_INFO_CONN
          - MQIACF_CONN_INFO_HANDLE
          - MQIACF_HANDLE_STATE
          - MQIACF_OBJECT_TYPE
          - MQIACF_OPEN_OPTIONS
          - MQIACF_PROCESS_ID
          - MQIACF_THREAD_ID
          - MQIACF_UOW_STATE
          - MQIACF_UOW_TYPE
          - MQIA_APPL_TYPE
          - MQIA_QSG_DISP
          - MQIA_READ_AHEAD
          - MQIA_UR_DISP
          - MQQSGD_ALL
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - MQRCCF_CONNECTION_ID_ERROR
          - Reason
          - StringFilterCommand
          - URDisposition
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY ENTAUTH
      href: SSFKSJ_9.4.0/refadmin/q086150_.html
      positional_parameters:
        - group-name
        - object-name
        - principal-name
        - service-component
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_ENTAUTH
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY GROUP
      href: SSFKSJ_9.4.0/refadmin/q086160_.html
      positional_parameters: []
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_GROUP
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY LISTENER
      href: SSFKSJ_9.4.0/refadmin/q086170_.html
      positional_parameters:
        - filter-keyword
        - filter-value
        - generic-listener-name
        - operator
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_LISTENER
      request_href: SSFKSJ_9.4.0/refadmin/q087490_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087490_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: Adapter
          pcf_type: MQCFIN
          type_hint: int
        - name: Backlog
          pcf_type: MQCFIN
          type_hint: int
        - name: Commands
          pcf_type: MQCFIN
          type_hint: int
        - name: IPAddress
          pcf_type: MQCFST
          type_hint: str
        - name: ListenerDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: LocalName
          pcf_type: MQCFST
          type_hint: str
        - name: NetbiosNames
          pcf_type: MQCFIN
          type_hint: int
        - name: Port
          pcf_type: MQCFIN
          type_hint: int
        - name: Sessions
          pcf_type: MQCFIN
          type_hint: int
        - name: Socket
          pcf_type: MQCFIN
          type_hint: int
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR_START
          pcf_type: null
          type_hint: null
        - name: TPName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQXPT_TCP
          pcf_type: null
          type_hint: null
        - name: MQXPT_LU62
          pcf_type: null
          type_hint: null
        - name: MQXPT_NETBIOS
          pcf_type: null
          type_hint: null
        - name: MQXPT_SPX
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: Adapter
          pcf_type: MQCFIN
          type_hint: int
        - name: Backlog
          pcf_type: MQCFIN
          type_hint: int
        - name: Commands
          pcf_type: MQCFIN
          type_hint: int
        - name: IPAddress
          pcf_type: MQCFST
          type_hint: str
        - name: ListenerDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: LocalName
          pcf_type: MQCFST
          type_hint: str
        - name: NetbiosNames
          pcf_type: MQCFIN
          type_hint: int
        - name: Port
          pcf_type: MQCFIN
          type_hint: int
        - name: Sessions
          pcf_type: MQCFIN
          type_hint: int
        - name: Socket
          pcf_type: MQCFIN
          type_hint: int
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR_START
          pcf_type: null
          type_hint: null
        - name: TPName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQXPT_TCP
          pcf_type: null
          type_hint: null
        - name: MQXPT_LU62
          pcf_type: null
          type_hint: null
        - name: MQXPT_NETBIOS
          pcf_type: null
          type_hint: null
        - name: MQXPT_SPX
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Adapter
          - AlterationDate
          - AlterationTime
          - Always
          - Backlog
          - Commands
          - IPAddress
          - ListenerDesc
          - ListenerName
          - LocalName
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR_START
          - MQXPT_LU62
          - MQXPT_NETBIOS
          - MQXPT_SPX
          - MQXPT_TCP
          - NetbiosNames
          - Port
          - Returned
          - Sessions
          - Socket
          - StartMode
          - TPName
          - TransportType
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Adapter
          - AlterationDate
          - AlterationTime
          - Always
          - Backlog
          - Commands
          - IPAddress
          - ListenerDesc
          - ListenerName
          - LocalName
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR_START
          - MQXPT_LU62
          - MQXPT_NETBIOS
          - MQXPT_SPX
          - MQXPT_TCP
          - NetbiosNames
          - Port
          - Returned
          - Sessions
          - Socket
          - StartMode
          - TPName
          - TransportType
    notes: []
  - mqsc:
      name: DISPLAY LOG
      href: SSFKSJ_9.4.0/refadmin/q086180_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_LOG
      request_href: SSFKSJ_9.4.0/refadmin/q087690_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087690_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_LOG_COPY
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_LOG_STATUS
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: DeallocateInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: DualActive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: DualArchive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: DualBSDS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: InputBufferSize
          pcf_type: MQCFIN
          type_hint: int
        - name: LogArchive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: LogCompression
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_RLE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ANY
          pcf_type: null
          type_hint: null
        - name: MaxArchiveLog
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxConcurrentOffloads
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxReadTapeUnits
          pcf_type: MQCFIN
          type_hint: int
        - name: OutputBufferCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OutputBufferSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ZHyperWrite
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: ZHyperLink
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: DataSetName
          pcf_type: MQCFST
          type_hint: str
        - name: Encrypted
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: FullLogs
          pcf_type: MQCFIN
          type_hint: int
        - name: LogCompression
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_RLE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ANY
          pcf_type: null
          type_hint: null
        - name: LogCopyNumber
          pcf_type: MQCFIN
          type_hint: int
        - name: LogRBA
          pcf_type: MQCFST
          type_hint: str
        - name: LogSuspend
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: LogUsed
          pcf_type: MQCFIN
          type_hint: int
        - name: OffloadStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_STATUS_ALLOCATING_ARCHIVE
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_COPYING_BSDS
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_COPYING_LOG
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_BUSY
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: QMgrStartDate
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrStartRBA
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrStartTime
          pcf_type: MQCFST
          type_hint: str
        - name: TotalLogs
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_LOG_COPY
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_LOG_STATUS
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: DeallocateInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: DualActive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: DualArchive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: DualBSDS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: InputBufferSize
          pcf_type: MQCFIN
          type_hint: int
        - name: LogArchive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: LogCompression
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_RLE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ANY
          pcf_type: null
          type_hint: null
        - name: MaxArchiveLog
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxConcurrentOffloads
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxReadTapeUnits
          pcf_type: MQCFIN
          type_hint: int
        - name: OutputBufferCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OutputBufferSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ZHyperWrite
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: ZHyperLink
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: DataSetName
          pcf_type: MQCFST
          type_hint: str
        - name: Encrypted
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: FullLogs
          pcf_type: MQCFIN
          type_hint: int
        - name: LogCompression
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_RLE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ANY
          pcf_type: null
          type_hint: null
        - name: LogCopyNumber
          pcf_type: MQCFIN
          type_hint: int
        - name: LogRBA
          pcf_type: MQCFST
          type_hint: str
        - name: LogSuspend
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: LogUsed
          pcf_type: MQCFIN
          type_hint: int
        - name: OffloadStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_STATUS_ALLOCATING_ARCHIVE
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_COPYING_BSDS
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_COPYING_LOG
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_BUSY
          pcf_type: null
          type_hint: null
        - name: MQSYSP_STATUS_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: QMgrStartDate
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrStartRBA
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrStartTime
          pcf_type: MQCFST
          type_hint: str
        - name: TotalLogs
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - DataSetName
          - DeallocateInterval
          - DualActive
          - DualArchive
          - DualBSDS
          - Encrypted
          - FullLogs
          - InputBufferSize
          - LogArchive
          - LogCompression
          - LogCompression
          - LogCopyNumber
          - LogRBA
          - LogSuspend
          - LogUsed
          - MQCOMPRESS_ANY
          - MQCOMPRESS_ANY
          - MQCOMPRESS_NONE
          - MQCOMPRESS_NONE
          - MQCOMPRESS_RLE
          - MQCOMPRESS_RLE
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_STATUS_ALLOCATING_ARCHIVE
          - MQSYSP_STATUS_AVAILABLE
          - MQSYSP_STATUS_BUSY
          - MQSYSP_STATUS_COPYING_BSDS
          - MQSYSP_STATUS_COPYING_LOG
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_LOG_COPY
          - MQSYSP_TYPE_LOG_STATUS
          - MQSYSP_TYPE_SET
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MaxArchiveLog
          - MaxConcurrentOffloads
          - MaxReadTapeUnits
          - OffloadStatus
          - OutputBufferCount
          - OutputBufferSize
          - QMgrStartDate
          - QMgrStartRBA
          - QMgrStartTime
          - Returned
          - Returned
          - Returned
          - Returned
          - TotalLogs
          - ZHyperLink
          - ZHyperWrite
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - DataSetName
          - DeallocateInterval
          - DualActive
          - DualArchive
          - DualBSDS
          - Encrypted
          - FullLogs
          - InputBufferSize
          - LogArchive
          - LogCompression
          - LogCompression
          - LogCopyNumber
          - LogRBA
          - LogSuspend
          - LogUsed
          - MQCOMPRESS_ANY
          - MQCOMPRESS_ANY
          - MQCOMPRESS_NONE
          - MQCOMPRESS_NONE
          - MQCOMPRESS_RLE
          - MQCOMPRESS_RLE
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_STATUS_ALLOCATING_ARCHIVE
          - MQSYSP_STATUS_AVAILABLE
          - MQSYSP_STATUS_BUSY
          - MQSYSP_STATUS_COPYING_BSDS
          - MQSYSP_STATUS_COPYING_LOG
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_LOG_COPY
          - MQSYSP_TYPE_LOG_STATUS
          - MQSYSP_TYPE_SET
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MaxArchiveLog
          - MaxConcurrentOffloads
          - MaxReadTapeUnits
          - OffloadStatus
          - OutputBufferCount
          - OutputBufferSize
          - QMgrStartDate
          - QMgrStartRBA
          - QMgrStartTime
          - Returned
          - Returned
          - Returned
          - Returned
          - TotalLogs
          - ZHyperLink
          - ZHyperWrite
    notes: []
  - mqsc:
      name: DISPLAY LSSTATUS
      href: SSFKSJ_9.4.0/refadmin/q086190_.html
      positional_parameters:
        - filter-keyword
        - filter-value
        - generic-listener-name
        - operator
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_LS_STATUS
      request_href: SSFKSJ_9.4.0/refadmin/q087880_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: ByteStringFilterCommand
          pcf_type: MQCFBF
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: OpenType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSOT_ALL
          pcf_type: null
          type_hint: null
        - name: MQQSOT_INPUT
          pcf_type: null
          type_hint: null
        - name: MQQSOT_OUTPUT
          pcf_type: null
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: MQIACF_ALL
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_MEDIA_LOG_EXTENT_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_CURRENT_Q_DEPTH
          pcf_type: null
          type_hint: null
        - name: MQIA_MONITORING_Q
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_INPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_OUTPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIACF_HANDLE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_MONITORING
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_MAX_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_Q_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OLDEST_MSG_AGE
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_TIME_INDICATOR
          pcf_type: null
          type_hint: null
        - name: MQIACF_UNCOMMITTED_MSGS
          pcf_type: null
          type_hint: null
        - name: MQBACF_EXTERNAL_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_Q_MGR_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_APPL_TAG
          pcf_type: null
          type_hint: null
        - name: MQCACF_ASID
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSB_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSTID
          pcf_type: null
          type_hint: null
        - name: MQCACF_TASK_NUMBER
          pcf_type: null
          type_hint: null
        - name: MQCACF_TRANSACTION_ID
          pcf_type: null
          type_hint: null
        - name: MQCACF_USER_IDENTIFIER
          pcf_type: null
          type_hint: null
        - name: MQCACH_CHANNEL_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACH_CONNECTION_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_APPL_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INPUT_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OPTIONS
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_SET
          pcf_type: null
          type_hint: null
        - name: MQIACF_PROCESS_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_ASYNC_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_THREAD_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_UOW_TYPE
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_HANDLE
          pcf_type: null
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_Q_TYPE_ERROR
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ByteStringFilterCommand
          - CommandScope
          - IntegerFilterCommand
          - MQBACF_EXTERNAL_UOW_ID
          - MQBACF_Q_MGR_UOW_ID
          - MQCACF_APPL_TAG
          - MQCACF_ASID
          - MQCACF_LAST_GET_DATE
          - MQCACF_LAST_GET_TIME
          - MQCACF_LAST_PUT_DATE
          - MQCACF_LAST_PUT_TIME
          - MQCACF_MEDIA_LOG_EXTENT_NAME
          - MQCACF_PSB_NAME
          - MQCACF_PSTID
          - MQCACF_TASK_NUMBER
          - MQCACF_TRANSACTION_ID
          - MQCACF_USER_IDENTIFIER
          - MQCACH_CHANNEL_NAME
          - MQCACH_CONNECTION_NAME
          - MQCA_Q_NAME
          - MQCA_Q_NAME
          - MQIACF_ALL
          - MQIACF_ASYNC_STATE
          - MQIACF_CUR_MAX_FILE_SIZE
          - MQIACF_CUR_Q_FILE_SIZE
          - MQIACF_HANDLE_STATE
          - MQIACF_MONITORING
          - MQIACF_OLDEST_MSG_AGE
          - MQIACF_OPEN_BROWSE
          - MQIACF_OPEN_INPUT_TYPE
          - MQIACF_OPEN_INQUIRE
          - MQIACF_OPEN_OPTIONS
          - MQIACF_OPEN_OUTPUT
          - MQIACF_OPEN_SET
          - MQIACF_PROCESS_ID
          - MQIACF_Q_HANDLE
          - MQIACF_Q_STATUS
          - MQIACF_Q_TIME_INDICATOR
          - MQIACF_THREAD_ID
          - MQIACF_UNCOMMITTED_MSGS
          - MQIACF_UOW_TYPE
          - MQIA_APPL_TYPE
          - MQIA_CURRENT_Q_DEPTH
          - MQIA_MONITORING_Q
          - MQIA_OPEN_INPUT_COUNT
          - MQIA_OPEN_OUTPUT_COUNT
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSOT_ALL
          - MQQSOT_INPUT
          - MQQSOT_OUTPUT
          - MQRCCF_Q_TYPE_ERROR
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
          - Reason
          - StatusType
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY MAXSMSGS
      href: SSFKSJ_9.4.0/refadmin/q086200_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_MAXSMSGS
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY NAMELIST
      href: SSFKSJ_9.4.0/refadmin/q086210_.html
      positional_parameters:
        - filter-keyword
        - filter-value
        - generic-namelist-name
        - operator
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_NAMELIST
      request_href: SSFKSJ_9.4.0/refadmin/q087710_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087710_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: NameCount
          pcf_type: MQCFIN
          type_hint: int
        - name: NamelistDesc
          pcf_type: MQCFST
          type_hint: str
        - name: NamelistName
          pcf_type: MQCFST
          type_hint: str
        - name: NamelistType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNT_NONE
          pcf_type: null
          type_hint: null
        - name: MQNT_Q
          pcf_type: null
          type_hint: null
        - name: MQNT_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQNT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: Names
          pcf_type: MQCFSL
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: NameCount
          pcf_type: MQCFIN
          type_hint: int
        - name: NamelistDesc
          pcf_type: MQCFST
          type_hint: str
        - name: NamelistName
          pcf_type: MQCFST
          type_hint: str
        - name: NamelistType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNT_NONE
          pcf_type: null
          type_hint: null
        - name: MQNT_Q
          pcf_type: null
          type_hint: null
        - name: MQNT_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQNT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: Names
          pcf_type: MQCFSL
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - MQNT_AUTH_INFO
          - MQNT_CLUSTER
          - MQNT_NONE
          - MQNT_Q
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - NameCount
          - NamelistDesc
          - NamelistName
          - NamelistType
          - Names
          - QSGDisposition
          - Returned
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - MQNT_AUTH_INFO
          - MQNT_CLUSTER
          - MQNT_NONE
          - MQNT_Q
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - NameCount
          - NamelistDesc
          - NamelistName
          - NamelistType
          - Names
          - QSGDisposition
          - Returned
    notes: []
  - mqsc:
      name: DISPLAY POLICY
      href: SSFKSJ_9.4.0/refadmin/q120820_.html
      positional_parameters:
        - (policy-name)
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_POLICY
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY PROCESS
      href: SSFKSJ_9.4.0/refadmin/q086220_.html
      positional_parameters:
        - (generic-process-name)
        - filter-keyword
        - filter-value
        - operator
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_PROCESS
      request_href: SSFKSJ_9.4.0/refadmin/q087750_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087750_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: ApplId
          pcf_type: MQCFST
          type_hint: str
        - name: ApplType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAT_AIX
          pcf_type: null
          type_hint: null
        - name: MQAT_CICS
          pcf_type: null
          type_hint: null
        - name: MQAT_DOS
          pcf_type: null
          type_hint: null
        - name: MQAT_MVS
          pcf_type: null
          type_hint: null
        - name: MQAT_OS400
          pcf_type: null
          type_hint: null
        - name: MQAT_QMGR
          pcf_type: null
          type_hint: null
        - name: MQAT_UNIX
          pcf_type: null
          type_hint: null
        - name: MQAT_WINDOWS
          pcf_type: null
          type_hint: null
        - name: MQAT_WINDOWS_NT
          pcf_type: null
          type_hint: null
        - name: integer
          pcf_type: null
          type_hint: null
        - name: EnvData
          pcf_type: MQCFST
          type_hint: str
        - name: ProcessDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ProcessName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: UserData
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: ApplId
          pcf_type: MQCFST
          type_hint: str
        - name: ApplType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAT_AIX
          pcf_type: null
          type_hint: null
        - name: MQAT_CICS
          pcf_type: null
          type_hint: null
        - name: MQAT_DOS
          pcf_type: null
          type_hint: null
        - name: MQAT_MVS
          pcf_type: null
          type_hint: null
        - name: MQAT_OS400
          pcf_type: null
          type_hint: null
        - name: MQAT_QMGR
          pcf_type: null
          type_hint: null
        - name: MQAT_UNIX
          pcf_type: null
          type_hint: null
        - name: MQAT_WINDOWS
          pcf_type: null
          type_hint: null
        - name: MQAT_WINDOWS_NT
          pcf_type: null
          type_hint: null
        - name: integer
          pcf_type: null
          type_hint: null
        - name: EnvData
          pcf_type: MQCFST
          type_hint: str
        - name: ProcessDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ProcessName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: UserData
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - ApplId
          - ApplType
          - EnvData
          - MQAT_AIX
          - MQAT_CICS
          - MQAT_DOS
          - MQAT_MVS
          - MQAT_OS400
          - MQAT_QMGR
          - MQAT_UNIX
          - MQAT_WINDOWS
          - MQAT_WINDOWS_NT
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - ProcessDesc
          - ProcessName
          - QSGDisposition
          - Returned
          - UserData
          - integer
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - ApplId
          - ApplType
          - EnvData
          - MQAT_AIX
          - MQAT_CICS
          - MQAT_DOS
          - MQAT_MVS
          - MQAT_OS400
          - MQAT_QMGR
          - MQAT_UNIX
          - MQAT_WINDOWS
          - MQAT_WINDOWS_NT
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - ProcessDesc
          - ProcessName
          - QSGDisposition
          - Returned
          - UserData
          - integer
    notes: []
  - mqsc:
      name: DISPLAY PUBSUB
      href: SSFKSJ_9.4.0/refadmin/q086230_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_PUBSUB
      request_href: SSFKSJ_9.4.0/refadmin/q087780_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: blank
          pcf_type: or omit the parameter altogether
          type_hint: null
        - name: a
          pcf_type: null
          type_hint: null
        - name: an
          pcf_type: null
          type_hint: null
        - name: PubSubStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: MQIACF_ALL
          pcf_type: null
          type_hint: null
        - name: MQIA_SUB_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIA_TOPIC_NODE_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIACF_PUBSUB_STATUS
          pcf_type: null
          type_hint: null
        - name: MQIACF_PS_STATUS_TYPE
          pcf_type: null
          type_hint: null
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPSST_ALL
          pcf_type: null
          type_hint: null
        - name: MQPSST_LOCAL
          pcf_type: null
          type_hint: null
        - name: MQPSST_PARENT
          pcf_type: null
          type_hint: null
        - name: MQPSST_CHILD
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - MQIACF_ALL
          - MQIACF_PS_STATUS_TYPE
          - MQIACF_PUBSUB_STATUS
          - MQIA_SUB_COUNT
          - MQIA_TOPIC_NODE_COUNT
          - MQPSST_ALL
          - MQPSST_CHILD
          - MQPSST_LOCAL
          - MQPSST_PARENT
          - PubSubStatusAttrs
          - Type
          - a
          - an
          - blank
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY QMGR
      href: SSFKSJ_9.4.0/refadmin/q086240_.html
      positional_parameters:
        - integer
        - qmgr-name
      input_parameters: []
      output_parameters:
        - DEFCLXQ
        - OTELPCTL
        - OTELTRAC
      section_sources:
        'Requested parameters':
          - DEFCLXQ
          - OTELPCTL
          - OTELTRAC
    pcf:
      command: MQCMD_INQUIRE_Q_MGR
      request_href: SSFKSJ_9.4.0/refadmin/q087830_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087830_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AccountingConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMON_ENABLED
          pcf_type: null
          type_hint: null
        - name: AccountingInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ActivityConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMON_ENABLED
          pcf_type: null
          type_hint: null
        - name: ActivityRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECORDING_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_MSG
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_Q
          pcf_type: null
          type_hint: null
        - name: ActivityTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: AdoptNewMCACheck
          pcf_type: MQCFIN
          type_hint: int
        - name: MQADOPT_CHECK_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_NET_ADDR
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_ALL
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_NONE
          pcf_type: null
          type_hint: null
        - name: AdoptNewMCAType
          pcf_type: MQCFIL
          type_hint: int
        - name: MQADOPT_TYPE_NO
          pcf_type: null
          type_hint: null
        - name: MQADOPT_TYPE_ALL
          pcf_type: null
          type_hint: null
        - name: AdvancedCapability
          pcf_type: MQCFIN
          type_hint: int
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: AMQPCapability
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAP_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQCAP_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: AuthorityEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: BridgeEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: CertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: CertificateValPolicy
          pcf_type: MQCFIN
          type_hint: int
        - name: MQ_CERT_VAL_POLICY_ANY
          pcf_type: null
          type_hint: null
        - name: MQ_CERT_VAL_POLICY_RFC5280
          pcf_type: null
          type_hint: null
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFCONLOS_TERMINATE
          pcf_type: null
          type_hint: null
        - name: MQCFCONLOS_TOLERATE
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDef
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHAD_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQCHAD_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDefEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDefExit
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelAuthenticationRecords
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLA_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQCHLA_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_EXCEPTION
          pcf_type: null
          type_hint: null
        - name: ChannelInitiatorControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChinitAdapters
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitDispatchers
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitServiceParm
          pcf_type: MQCFST
          type_hint: str
        - name: ChinitTraceAutoStart
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTRAXSTR_YES
          pcf_type: null
          type_hint: null
        - name: MQTRAXSTR_NO
          pcf_type: null
          type_hint: null
        - name: ChinitTraceTableSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderMonitoringDefault
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ClusterSenderStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ClusterWorkLoadData
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterWorkLoadExit
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterWorkLoadLength
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLMRUChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLUseQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLWL_USEQ_ANY
          pcf_type: null
          type_hint: null
        - name: MQCLWL_USEQ_LOCAL
          pcf_type: null
          type_hint: null
        - name: CodedCharSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_NODISPLAY
          pcf_type: null
          type_hint: null
        - name: CommandInputQName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandLevel
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCMDL_LEVEL_800
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_801
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_802
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_900
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_901
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_902
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_903
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_904
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_905
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_910
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_911
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_912
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_913
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_914
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_915
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_910
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_920
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_921
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_922
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_923
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_924
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_925
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_930
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_931
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_932
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_933
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_934
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_935
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_940
          pcf_type: null
          type_hint: null
        - name: CommandServerControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ConfigurationEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: ConnAuth
          pcf_type: MQCFST
          type_hint: str
        - name: CreationDate
          pcf_type: MQCFST
          type_hint: str
        - name: CreationTime
          pcf_type: MQCFST
          type_hint: str
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: DeadLetterQName
          pcf_type: MQCFST
          type_hint: str
        - name: DefClusterXmitQueueType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLXQ_SCTQ
          pcf_type: null
          type_hint: null
        - name: MQCLXQ_CHANNEL
          pcf_type: null
          type_hint: null
        - name: DefXmitQName
          pcf_type: MQCFST
          type_hint: str
        - name: DistLists
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDL_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQDL_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: DNSGroup
          pcf_type: MQCFST
          type_hint: str
        - name: DNSWLM
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDNSWLM_NO
          pcf_type: null
          type_hint: null
        - name: EncryptionPolicySuiteB
          pcf_type: MQCFIL
          type_hint: int
        - name: MQ_SUITE_B_NONE
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_128_BIT
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_192_BIT
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_128_BIT
          pcf_type: null
          type_hint: null
        - name: ExpiryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEXPI_OFF
          pcf_type: null
          type_hint: null
        - name: GroupUR
          pcf_type: MQCFIN
          type_hint: int
        - name: MQGUR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQGUR_ENABLED
          pcf_type: null
          type_hint: null
        - name: IGQPutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIGQPA_DEFAULT
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_ONLY_IGQ
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_ALTERNATE_OR_IGQ
          pcf_type: null
          type_hint: null
        - name: IGQUserId
          pcf_type: MQCFST
          type_hint: str
        - name: ImageInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMEDIMGINTVL_OFF
          pcf_type: null
          type_hint: null
        - name: ImageLogLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMEDIMGLOGLN_OFF
          pcf_type: null
          type_hint: null
        - name: ImageRecoverObject
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: ImageSchedule
          pcf_type: MQCFST
          type_hint: str
        - name: MQMEDIMGSCHED_AUTO
          pcf_type: null
          type_hint: null
        - name: MQMEDIMGSCHED_MANUAL
          pcf_type: null
          type_hint: null
        - name: InhibitEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: InitialKey
          pcf_type: MQCFST
          type_hint: str
        - name: IntraGroupQueuing
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIGQ_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQIGQ_ENABLED
          pcf_type: null
          type_hint: null
        - name: IPAddressVersion
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIPADDR_IPV4
          pcf_type: null
          type_hint: null
        - name: MQIPADDR_IPV6
          pcf_type: null
          type_hint: null
        - name: ListenerTimer
          pcf_type: MQCFIN
          type_hint: int
        - name: LocalEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: LoggerEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: LUGroupName
          pcf_type: MQCFST
          type_hint: str
        - name: LUName
          pcf_type: MQCFST
          type_hint: str
        - name: LU62ARMSuffix
          pcf_type: MQCFST
          type_hint: str
        - name: LU62Channels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxActiveChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxHandles
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxPropertiesLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxUncommittedMsgs
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: MQIStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: MsgMarkBrowseInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_PCTL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQOTEL_PCTL_AUTO
          pcf_type: null
          type_hint: null
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_TRACE_OFF
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_ON
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_NONE
          pcf_type: null
          type_hint: null
        - name: OutboundPortMax
          pcf_type: MQCFIN
          type_hint: int
        - name: OutboundPortMin
          pcf_type: MQCFIN
          type_hint: int
        - name: Parent
          pcf_type: MQCFST
          type_hint: str
        - name: PerformanceEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: Platform
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPL_AIX
          pcf_type: null
          type_hint: null
        - name: MQPL_APPLIANCE
          pcf_type: null
          type_hint: null
        - name: MQPL_OS400
          pcf_type: null
          type_hint: null
        - name: MQPL_UNIX
          pcf_type: null
          type_hint: null
        - name: MQPL_WINDOWS_NT
          pcf_type: null
          type_hint: null
        - name: MQPL_ZOS
          pcf_type: null
          type_hint: null
        - name: PubSubClus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPSCLUS_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQPSCLUS_DISABLED
          pcf_type: null
          type_hint: null
        - name: PubSubMaxMsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPSM_COMPAT
          pcf_type: null
          type_hint: null
        - name: MQPSM_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQPSM_ENABLED
          pcf_type: null
          type_hint: null
        - name: PubSubNPInputMsg
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUNDELIVERED_DISCARD
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_KEEP
          pcf_type: null
          type_hint: null
        - name: PubSubNPResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUNDELIVERED_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_SAFE
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_DISCARD
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_KEEP
          pcf_type: null
          type_hint: null
        - name: PubSubSyncPoint
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYNCPOINT_IFPER
          pcf_type: null
          type_hint: null
        - name: MQSYNCPOINT_YES
          pcf_type: null
          type_hint: null
        - name: QMgrDesc
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGCertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: QSGName
          pcf_type: MQCFST
          type_hint: str
        - name: QueueAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: ReceiveTimeout
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutMin
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRCVTIME_MULTIPLY
          pcf_type: null
          type_hint: null
        - name: MQRCVTIME_ADD
          pcf_type: null
          type_hint: null
        - name: MQRCVTIME_EQUAL
          pcf_type: null
          type_hint: null
        - name: RemoteEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: RepositoryName
          pcf_type: MQCFST
          type_hint: str
        - name: RepositoryNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: RevDns
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRDNS_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRDNS_ENABLED
          pcf_type: null
          type_hint: null
        - name: SecurityCase
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCYC_UPPER
          pcf_type: null
          type_hint: null
        - name: MQSCYC_MIXED
          pcf_type: null
          type_hint: null
        - name: SharedQQmgrName
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSQQM_USE
          pcf_type: null
          type_hint: null
        - name: MQSQQM_IGNORE
          pcf_type: null
          type_hint: null
        - name: Splcap
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAP_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQCAP_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: SSLCRLNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCryptoHardware
          pcf_type: MQCFST
          type_hint: str
        - name: SSLEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: SSLFipsRequired
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSSL_FIPS_NO
          pcf_type: null
          type_hint: null
        - name: MQSSL_FIPS_YES
          pcf_type: null
          type_hint: null
        - name: SSLKeyRepository
          pcf_type: MQCFST
          type_hint: str
        - name: SSLKeyRepositoryPassword
          pcf_type: MQCFST
          type_hint: str
        - name: SSLKeyResetCount
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLTasks
          pcf_type: MQCFIN
          type_hint: int
        - name: StartStopEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: StatisticsInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SyncPoint
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSP_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQSP_NOT_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: TCPChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPKeepAlive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTCPKEEP_YES
          pcf_type: null
          type_hint: null
        - name: MQTCPKEEP_NO
          pcf_type: null
          type_hint: null
        - name: TCPName
          pcf_type: MQCFST
          type_hint: str
        - name: TCPStackType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTCPSTACK_SINGLE
          pcf_type: null
          type_hint: null
        - name: MQTCPSTACK_MULTIPLE
          pcf_type: null
          type_hint: null
        - name: TraceRouteRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECORDING_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_MSG
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_Q
          pcf_type: null
          type_hint: null
        - name: TreeLifeTime
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: Version
          pcf_type: MQCFST
          type_hint: str
        - name: XrCapability
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AccountingConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMON_ENABLED
          pcf_type: null
          type_hint: null
        - name: AccountingInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ActivityConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMON_ENABLED
          pcf_type: null
          type_hint: null
        - name: ActivityRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECORDING_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_MSG
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_Q
          pcf_type: null
          type_hint: null
        - name: ActivityTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: AdoptNewMCACheck
          pcf_type: MQCFIN
          type_hint: int
        - name: MQADOPT_CHECK_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_NET_ADDR
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_ALL
          pcf_type: null
          type_hint: null
        - name: MQADOPT_CHECK_NONE
          pcf_type: null
          type_hint: null
        - name: AdoptNewMCAType
          pcf_type: MQCFIL
          type_hint: int
        - name: MQADOPT_TYPE_NO
          pcf_type: null
          type_hint: null
        - name: MQADOPT_TYPE_ALL
          pcf_type: null
          type_hint: null
        - name: AdvancedCapability
          pcf_type: MQCFIN
          type_hint: int
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: AMQPCapability
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAP_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQCAP_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: AuthorityEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: BridgeEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: CertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: CertificateValPolicy
          pcf_type: MQCFIN
          type_hint: int
        - name: MQ_CERT_VAL_POLICY_ANY
          pcf_type: null
          type_hint: null
        - name: MQ_CERT_VAL_POLICY_RFC5280
          pcf_type: null
          type_hint: null
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFCONLOS_TERMINATE
          pcf_type: null
          type_hint: null
        - name: MQCFCONLOS_TOLERATE
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDef
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHAD_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQCHAD_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDefEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelAutoDefExit
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelAuthenticationRecords
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLA_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQCHLA_ENABLED
          pcf_type: null
          type_hint: null
        - name: ChannelEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_EXCEPTION
          pcf_type: null
          type_hint: null
        - name: ChannelInitiatorControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ChinitAdapters
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitDispatchers
          pcf_type: MQCFIN
          type_hint: int
        - name: ChinitServiceParm
          pcf_type: MQCFST
          type_hint: str
        - name: ChinitTraceAutoStart
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTRAXSTR_YES
          pcf_type: null
          type_hint: null
        - name: MQTRAXSTR_NO
          pcf_type: null
          type_hint: null
        - name: ChinitTraceTableSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderMonitoringDefault
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ClusterSenderStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: ClusterWorkLoadData
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterWorkLoadExit
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterWorkLoadLength
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLMRUChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLUseQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLWL_USEQ_ANY
          pcf_type: null
          type_hint: null
        - name: MQCLWL_USEQ_LOCAL
          pcf_type: null
          type_hint: null
        - name: CodedCharSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_NODISPLAY
          pcf_type: null
          type_hint: null
        - name: CommandInputQName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandLevel
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCMDL_LEVEL_800
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_801
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_802
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_900
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_901
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_902
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_903
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_904
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_905
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_910
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_911
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_912
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_913
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_914
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_915
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_910
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_920
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_921
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_922
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_923
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_924
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_925
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_930
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_931
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_932
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_933
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_934
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_935
          pcf_type: null
          type_hint: null
        - name: MQCMDL_LEVEL_940
          pcf_type: null
          type_hint: null
        - name: CommandServerControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ConfigurationEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: ConnAuth
          pcf_type: MQCFST
          type_hint: str
        - name: CreationDate
          pcf_type: MQCFST
          type_hint: str
        - name: CreationTime
          pcf_type: MQCFST
          type_hint: str
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: DeadLetterQName
          pcf_type: MQCFST
          type_hint: str
        - name: DefClusterXmitQueueType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLXQ_SCTQ
          pcf_type: null
          type_hint: null
        - name: MQCLXQ_CHANNEL
          pcf_type: null
          type_hint: null
        - name: DefXmitQName
          pcf_type: MQCFST
          type_hint: str
        - name: DistLists
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDL_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQDL_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: DNSGroup
          pcf_type: MQCFST
          type_hint: str
        - name: DNSWLM
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDNSWLM_NO
          pcf_type: null
          type_hint: null
        - name: EncryptionPolicySuiteB
          pcf_type: MQCFIL
          type_hint: int
        - name: MQ_SUITE_B_NONE
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_128_BIT
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_192_BIT
          pcf_type: null
          type_hint: null
        - name: MQ_SUITE_B_128_BIT
          pcf_type: null
          type_hint: null
        - name: ExpiryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEXPI_OFF
          pcf_type: null
          type_hint: null
        - name: GroupUR
          pcf_type: MQCFIN
          type_hint: int
        - name: MQGUR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQGUR_ENABLED
          pcf_type: null
          type_hint: null
        - name: IGQPutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIGQPA_DEFAULT
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_ONLY_IGQ
          pcf_type: null
          type_hint: null
        - name: MQIGQPA_ALTERNATE_OR_IGQ
          pcf_type: null
          type_hint: null
        - name: IGQUserId
          pcf_type: MQCFST
          type_hint: str
        - name: ImageInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMEDIMGINTVL_OFF
          pcf_type: null
          type_hint: null
        - name: ImageLogLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMEDIMGLOGLN_OFF
          pcf_type: null
          type_hint: null
        - name: ImageRecoverObject
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: ImageSchedule
          pcf_type: MQCFST
          type_hint: str
        - name: MQMEDIMGSCHED_AUTO
          pcf_type: null
          type_hint: null
        - name: MQMEDIMGSCHED_MANUAL
          pcf_type: null
          type_hint: null
        - name: InhibitEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: InitialKey
          pcf_type: MQCFST
          type_hint: str
        - name: IntraGroupQueuing
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIGQ_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQIGQ_ENABLED
          pcf_type: null
          type_hint: null
        - name: IPAddressVersion
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIPADDR_IPV4
          pcf_type: null
          type_hint: null
        - name: MQIPADDR_IPV6
          pcf_type: null
          type_hint: null
        - name: ListenerTimer
          pcf_type: MQCFIN
          type_hint: int
        - name: LocalEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: LoggerEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: LUGroupName
          pcf_type: MQCFST
          type_hint: str
        - name: LUName
          pcf_type: MQCFST
          type_hint: str
        - name: LU62ARMSuffix
          pcf_type: MQCFST
          type_hint: str
        - name: LU62Channels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxActiveChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxHandles
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxPropertiesLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxUncommittedMsgs
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: MQIStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: MsgMarkBrowseInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_PCTL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQOTEL_PCTL_AUTO
          pcf_type: null
          type_hint: null
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_TRACE_OFF
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_ON
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_NONE
          pcf_type: null
          type_hint: null
        - name: OutboundPortMax
          pcf_type: MQCFIN
          type_hint: int
        - name: OutboundPortMin
          pcf_type: MQCFIN
          type_hint: int
        - name: Parent
          pcf_type: MQCFST
          type_hint: str
        - name: PerformanceEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: Platform
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPL_AIX
          pcf_type: null
          type_hint: null
        - name: MQPL_APPLIANCE
          pcf_type: null
          type_hint: null
        - name: MQPL_OS400
          pcf_type: null
          type_hint: null
        - name: MQPL_UNIX
          pcf_type: null
          type_hint: null
        - name: MQPL_WINDOWS_NT
          pcf_type: null
          type_hint: null
        - name: MQPL_ZOS
          pcf_type: null
          type_hint: null
        - name: PubSubClus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPSCLUS_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQPSCLUS_DISABLED
          pcf_type: null
          type_hint: null
        - name: PubSubMaxMsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPSM_COMPAT
          pcf_type: null
          type_hint: null
        - name: MQPSM_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQPSM_ENABLED
          pcf_type: null
          type_hint: null
        - name: PubSubNPInputMsg
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUNDELIVERED_DISCARD
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_KEEP
          pcf_type: null
          type_hint: null
        - name: PubSubNPResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUNDELIVERED_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_SAFE
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_DISCARD
          pcf_type: null
          type_hint: null
        - name: MQUNDELIVERED_KEEP
          pcf_type: null
          type_hint: null
        - name: PubSubSyncPoint
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYNCPOINT_IFPER
          pcf_type: null
          type_hint: null
        - name: MQSYNCPOINT_YES
          pcf_type: null
          type_hint: null
        - name: QMgrDesc
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGCertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: QSGName
          pcf_type: MQCFST
          type_hint: str
        - name: QueueAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_NONE
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: ReceiveTimeout
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutMin
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRCVTIME_MULTIPLY
          pcf_type: null
          type_hint: null
        - name: MQRCVTIME_ADD
          pcf_type: null
          type_hint: null
        - name: MQRCVTIME_EQUAL
          pcf_type: null
          type_hint: null
        - name: RemoteEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: RepositoryName
          pcf_type: MQCFST
          type_hint: str
        - name: RepositoryNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: RevDns
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRDNS_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRDNS_ENABLED
          pcf_type: null
          type_hint: null
        - name: SecurityCase
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCYC_UPPER
          pcf_type: null
          type_hint: null
        - name: MQSCYC_MIXED
          pcf_type: null
          type_hint: null
        - name: SharedQQmgrName
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSQQM_USE
          pcf_type: null
          type_hint: null
        - name: MQSQQM_IGNORE
          pcf_type: null
          type_hint: null
        - name: Splcap
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAP_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQCAP_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: SSLCRLNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCryptoHardware
          pcf_type: MQCFST
          type_hint: str
        - name: SSLEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: SSLFipsRequired
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSSL_FIPS_NO
          pcf_type: null
          type_hint: null
        - name: MQSSL_FIPS_YES
          pcf_type: null
          type_hint: null
        - name: SSLKeyRepository
          pcf_type: MQCFST
          type_hint: str
        - name: SSLKeyRepositoryPassword
          pcf_type: MQCFST
          type_hint: str
        - name: SSLKeyResetCount
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLTasks
          pcf_type: MQCFIN
          type_hint: int
        - name: StartStopEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: StatisticsInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SyncPoint
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSP_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQSP_NOT_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: TCPChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPKeepAlive
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTCPKEEP_YES
          pcf_type: null
          type_hint: null
        - name: MQTCPKEEP_NO
          pcf_type: null
          type_hint: null
        - name: TCPName
          pcf_type: MQCFST
          type_hint: str
        - name: TCPStackType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTCPSTACK_SINGLE
          pcf_type: null
          type_hint: null
        - name: MQTCPSTACK_MULTIPLE
          pcf_type: null
          type_hint: null
        - name: TraceRouteRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRECORDING_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_MSG
          pcf_type: null
          type_hint: null
        - name: MQRECORDING_Q
          pcf_type: null
          type_hint: null
        - name: TreeLifeTime
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: Version
          pcf_type: MQCFST
          type_hint: str
        - name: XrCapability
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AMQPCapability
          - AccountingConnOverride
          - AccountingInterval
          - ActivityConnOverride
          - ActivityRecording
          - ActivityTrace
          - AdoptNewMCACheck
          - AdoptNewMCAType
          - AdvancedCapability
          - AlterationDate
          - AlterationTime
          - Always
          - AuthorityEvent
          - BridgeEvent
          - CFConlos
          - CLWLMRUChannels
          - CLWLUseQ
          - CertificateLabel
          - CertificateValPolicy
          - ChannelAuthenticationRecords
          - ChannelAutoDef
          - ChannelAutoDefEvent
          - ChannelAutoDefExit
          - ChannelEvent
          - ChannelInitiatorControl
          - ChannelMonitoring
          - ChannelStatistics
          - ChinitAdapters
          - ChinitDispatchers
          - ChinitServiceParm
          - ChinitTraceAutoStart
          - ChinitTraceTableSize
          - ClusterSenderMonitoringDefault
          - ClusterSenderStatistics
          - ClusterWorkLoadData
          - ClusterWorkLoadExit
          - ClusterWorkLoadLength
          - CodedCharSetId
          - CommandEvent
          - CommandInputQName
          - CommandLevel
          - CommandServerControl
          - ConfigurationEvent
          - ConnAuth
          - CreationDate
          - CreationTime
          - Custom
          - DNSGroup
          - DNSWLM
          - DeadLetterQName
          - DefClusterXmitQueueType
          - DefXmitQName
          - DistLists
          - EncryptionPolicySuiteB
          - ExpiryInterval
          - GroupUR
          - IGQPutAuthority
          - IGQUserId
          - IPAddressVersion
          - ImageInterval
          - ImageLogLength
          - ImageRecoverObject
          - ImageRecoverQueue
          - ImageSchedule
          - InhibitEvent
          - InitialKey
          - IntraGroupQueuing
          - LU62ARMSuffix
          - LU62Channels
          - LUGroupName
          - LUName
          - ListenerTimer
          - LocalEvent
          - LoggerEvent
          - MQADOPT_CHECK_ALL
          - MQADOPT_CHECK_NET_ADDR
          - MQADOPT_CHECK_NONE
          - MQADOPT_CHECK_Q_MGR_NAME
          - MQADOPT_TYPE_ALL
          - MQADOPT_TYPE_NO
          - MQCAP_NOT_SUPPORTED
          - MQCAP_NOT_SUPPORTED
          - MQCAP_SUPPORTED
          - MQCAP_SUPPORTED
          - MQCFCONLOS_TERMINATE
          - MQCFCONLOS_TOLERATE
          - MQCHAD_DISABLED
          - MQCHAD_ENABLED
          - MQCHLA_DISABLED
          - MQCHLA_ENABLED
          - MQCLWL_USEQ_ANY
          - MQCLWL_USEQ_LOCAL
          - MQCLXQ_CHANNEL
          - MQCLXQ_SCTQ
          - MQCMDL_LEVEL_800
          - MQCMDL_LEVEL_801
          - MQCMDL_LEVEL_802
          - MQCMDL_LEVEL_900
          - MQCMDL_LEVEL_901
          - MQCMDL_LEVEL_902
          - MQCMDL_LEVEL_903
          - MQCMDL_LEVEL_904
          - MQCMDL_LEVEL_905
          - MQCMDL_LEVEL_910
          - MQCMDL_LEVEL_910
          - MQCMDL_LEVEL_911
          - MQCMDL_LEVEL_912
          - MQCMDL_LEVEL_913
          - MQCMDL_LEVEL_914
          - MQCMDL_LEVEL_915
          - MQCMDL_LEVEL_920
          - MQCMDL_LEVEL_921
          - MQCMDL_LEVEL_922
          - MQCMDL_LEVEL_923
          - MQCMDL_LEVEL_924
          - MQCMDL_LEVEL_925
          - MQCMDL_LEVEL_930
          - MQCMDL_LEVEL_931
          - MQCMDL_LEVEL_932
          - MQCMDL_LEVEL_933
          - MQCMDL_LEVEL_934
          - MQCMDL_LEVEL_935
          - MQCMDL_LEVEL_940
          - MQDL_NOT_SUPPORTED
          - MQDL_SUPPORTED
          - MQDNSWLM_NO
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_EXCEPTION
          - MQEVR_NODISPLAY
          - MQEXPI_OFF
          - MQGUR_DISABLED
          - MQGUR_ENABLED
          - MQIAccounting
          - MQIGQPA_ALTERNATE_OR_IGQ
          - MQIGQPA_CONTEXT
          - MQIGQPA_DEFAULT
          - MQIGQPA_ONLY_IGQ
          - MQIGQ_DISABLED
          - MQIGQ_ENABLED
          - MQIMGRCOV_NO
          - MQIMGRCOV_NO
          - MQIMGRCOV_YES
          - MQIMGRCOV_YES
          - MQIPADDR_IPV4
          - MQIPADDR_IPV6
          - MQIStatistics
          - MQMEDIMGINTVL_OFF
          - MQMEDIMGLOGLN_OFF
          - MQMEDIMGSCHED_AUTO
          - MQMEDIMGSCHED_MANUAL
          - MQMON_DISABLED
          - MQMON_DISABLED
          - MQMON_ENABLED
          - MQMON_ENABLED
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQOTEL_PCTL_AUTO
          - MQOTEL_PCTL_MANUAL
          - MQOTEL_TRACE_NONE
          - MQOTEL_TRACE_OFF
          - MQOTEL_TRACE_ON
          - MQPL_AIX
          - MQPL_APPLIANCE
          - MQPL_OS400
          - MQPL_UNIX
          - MQPL_WINDOWS_NT
          - MQPL_ZOS
          - MQPSCLUS_DISABLED
          - MQPSCLUS_ENABLED
          - MQPSM_COMPAT
          - MQPSM_DISABLED
          - MQPSM_ENABLED
          - MQRCVTIME_ADD
          - MQRCVTIME_EQUAL
          - MQRCVTIME_MULTIPLY
          - MQRDNS_DISABLED
          - MQRDNS_ENABLED
          - MQRECORDING_DISABLED
          - MQRECORDING_DISABLED
          - MQRECORDING_MSG
          - MQRECORDING_MSG
          - MQRECORDING_Q
          - MQRECORDING_Q
          - MQSCYC_MIXED
          - MQSCYC_UPPER
          - MQSP_AVAILABLE
          - MQSP_NOT_AVAILABLE
          - MQSQQM_IGNORE
          - MQSQQM_USE
          - MQSSL_FIPS_NO
          - MQSSL_FIPS_YES
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR
          - MQSYNCPOINT_IFPER
          - MQSYNCPOINT_YES
          - MQTCPKEEP_NO
          - MQTCPKEEP_YES
          - MQTCPSTACK_MULTIPLE
          - MQTCPSTACK_SINGLE
          - MQTRAXSTR_NO
          - MQTRAXSTR_YES
          - MQUNDELIVERED_DISCARD
          - MQUNDELIVERED_DISCARD
          - MQUNDELIVERED_KEEP
          - MQUNDELIVERED_KEEP
          - MQUNDELIVERED_NORMAL
          - MQUNDELIVERED_SAFE
          - MQ_CERT_VAL_POLICY_ANY
          - MQ_CERT_VAL_POLICY_RFC5280
          - MQ_SUITE_B_128_BIT
          - MQ_SUITE_B_128_BIT
          - MQ_SUITE_B_192_BIT
          - MQ_SUITE_B_NONE
          - MaxActiveChannels
          - MaxChannels
          - MaxHandles
          - MaxMsgLength
          - MaxPriority
          - MaxPropertiesLength
          - MaxUncommittedMsgs
          - MsgMarkBrowseInterval
          - OTELPropagationControl
          - OTELTrace
          - OutboundPortMax
          - OutboundPortMin
          - Parent
          - PerformanceEvent
          - Platform
          - PubSubClus
          - PubSubMaxMsgRetryCount
          - PubSubMode
          - PubSubNPInputMsg
          - PubSubNPResponse
          - PubSubSyncPoint
          - QMgrDesc
          - QMgrIdentifier
          - QMgrName
          - QSGCertificateLabel
          - QSGName
          - QueueAccounting
          - QueueMonitoring
          - QueueStatistics
          - ReceiveTimeout
          - ReceiveTimeoutMin
          - ReceiveTimeoutType
          - RemoteEvent
          - RepositoryName
          - RepositoryNamelist
          - Returned
          - RevDns
          - SSLCRLNamelist
          - SSLCryptoHardware
          - SSLEvent
          - SSLFipsRequired
          - SSLKeyRepository
          - SSLKeyRepositoryPassword
          - SSLKeyResetCount
          - SSLTasks
          - SecurityCase
          - SharedQQmgrName
          - Splcap
          - StartStopEvent
          - StatisticsInterval
          - SyncPoint
          - TCPChannels
          - TCPKeepAlive
          - TCPName
          - TCPStackType
          - TraceRouteRecording
          - TreeLifeTime
          - TriggerInterval
          - Version
          - XrCapability
      response:
        suggested:
          OTELTRAC: OTELTrace
        ambiguous:
          {}
        unmapped:
          - DEFCLXQ
          - OTELPCTL
        pcf_unmapped:
          - AMQPCapability
          - AccountingConnOverride
          - AccountingInterval
          - ActivityConnOverride
          - ActivityRecording
          - ActivityTrace
          - AdoptNewMCACheck
          - AdoptNewMCAType
          - AdvancedCapability
          - AlterationDate
          - AlterationTime
          - Always
          - AuthorityEvent
          - BridgeEvent
          - CFConlos
          - CLWLMRUChannels
          - CLWLUseQ
          - CertificateLabel
          - CertificateValPolicy
          - ChannelAuthenticationRecords
          - ChannelAutoDef
          - ChannelAutoDefEvent
          - ChannelAutoDefExit
          - ChannelEvent
          - ChannelInitiatorControl
          - ChannelMonitoring
          - ChannelStatistics
          - ChinitAdapters
          - ChinitDispatchers
          - ChinitServiceParm
          - ChinitTraceAutoStart
          - ChinitTraceTableSize
          - ClusterSenderMonitoringDefault
          - ClusterSenderStatistics
          - ClusterWorkLoadData
          - ClusterWorkLoadExit
          - ClusterWorkLoadLength
          - CodedCharSetId
          - CommandEvent
          - CommandInputQName
          - CommandLevel
          - CommandServerControl
          - ConfigurationEvent
          - ConnAuth
          - CreationDate
          - CreationTime
          - Custom
          - DNSGroup
          - DNSWLM
          - DeadLetterQName
          - DefClusterXmitQueueType
          - DefXmitQName
          - DistLists
          - EncryptionPolicySuiteB
          - ExpiryInterval
          - GroupUR
          - IGQPutAuthority
          - IGQUserId
          - IPAddressVersion
          - ImageInterval
          - ImageLogLength
          - ImageRecoverObject
          - ImageRecoverQueue
          - ImageSchedule
          - InhibitEvent
          - InitialKey
          - IntraGroupQueuing
          - LU62ARMSuffix
          - LU62Channels
          - LUGroupName
          - LUName
          - ListenerTimer
          - LocalEvent
          - LoggerEvent
          - MQADOPT_CHECK_ALL
          - MQADOPT_CHECK_NET_ADDR
          - MQADOPT_CHECK_NONE
          - MQADOPT_CHECK_Q_MGR_NAME
          - MQADOPT_TYPE_ALL
          - MQADOPT_TYPE_NO
          - MQCAP_NOT_SUPPORTED
          - MQCAP_NOT_SUPPORTED
          - MQCAP_SUPPORTED
          - MQCAP_SUPPORTED
          - MQCFCONLOS_TERMINATE
          - MQCFCONLOS_TOLERATE
          - MQCHAD_DISABLED
          - MQCHAD_ENABLED
          - MQCHLA_DISABLED
          - MQCHLA_ENABLED
          - MQCLWL_USEQ_ANY
          - MQCLWL_USEQ_LOCAL
          - MQCLXQ_CHANNEL
          - MQCLXQ_SCTQ
          - MQCMDL_LEVEL_800
          - MQCMDL_LEVEL_801
          - MQCMDL_LEVEL_802
          - MQCMDL_LEVEL_900
          - MQCMDL_LEVEL_901
          - MQCMDL_LEVEL_902
          - MQCMDL_LEVEL_903
          - MQCMDL_LEVEL_904
          - MQCMDL_LEVEL_905
          - MQCMDL_LEVEL_910
          - MQCMDL_LEVEL_910
          - MQCMDL_LEVEL_911
          - MQCMDL_LEVEL_912
          - MQCMDL_LEVEL_913
          - MQCMDL_LEVEL_914
          - MQCMDL_LEVEL_915
          - MQCMDL_LEVEL_920
          - MQCMDL_LEVEL_921
          - MQCMDL_LEVEL_922
          - MQCMDL_LEVEL_923
          - MQCMDL_LEVEL_924
          - MQCMDL_LEVEL_925
          - MQCMDL_LEVEL_930
          - MQCMDL_LEVEL_931
          - MQCMDL_LEVEL_932
          - MQCMDL_LEVEL_933
          - MQCMDL_LEVEL_934
          - MQCMDL_LEVEL_935
          - MQCMDL_LEVEL_940
          - MQDL_NOT_SUPPORTED
          - MQDL_SUPPORTED
          - MQDNSWLM_NO
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_EXCEPTION
          - MQEVR_NODISPLAY
          - MQEXPI_OFF
          - MQGUR_DISABLED
          - MQGUR_ENABLED
          - MQIAccounting
          - MQIGQPA_ALTERNATE_OR_IGQ
          - MQIGQPA_CONTEXT
          - MQIGQPA_DEFAULT
          - MQIGQPA_ONLY_IGQ
          - MQIGQ_DISABLED
          - MQIGQ_ENABLED
          - MQIMGRCOV_NO
          - MQIMGRCOV_NO
          - MQIMGRCOV_YES
          - MQIMGRCOV_YES
          - MQIPADDR_IPV4
          - MQIPADDR_IPV6
          - MQIStatistics
          - MQMEDIMGINTVL_OFF
          - MQMEDIMGLOGLN_OFF
          - MQMEDIMGSCHED_AUTO
          - MQMEDIMGSCHED_MANUAL
          - MQMON_DISABLED
          - MQMON_DISABLED
          - MQMON_ENABLED
          - MQMON_ENABLED
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_MEDIUM
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_NONE
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_ON
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQOTEL_PCTL_AUTO
          - MQOTEL_PCTL_MANUAL
          - MQOTEL_TRACE_NONE
          - MQOTEL_TRACE_OFF
          - MQOTEL_TRACE_ON
          - MQPL_AIX
          - MQPL_APPLIANCE
          - MQPL_OS400
          - MQPL_UNIX
          - MQPL_WINDOWS_NT
          - MQPL_ZOS
          - MQPSCLUS_DISABLED
          - MQPSCLUS_ENABLED
          - MQPSM_COMPAT
          - MQPSM_DISABLED
          - MQPSM_ENABLED
          - MQRCVTIME_ADD
          - MQRCVTIME_EQUAL
          - MQRCVTIME_MULTIPLY
          - MQRDNS_DISABLED
          - MQRDNS_ENABLED
          - MQRECORDING_DISABLED
          - MQRECORDING_DISABLED
          - MQRECORDING_MSG
          - MQRECORDING_MSG
          - MQRECORDING_Q
          - MQRECORDING_Q
          - MQSCYC_MIXED
          - MQSCYC_UPPER
          - MQSP_AVAILABLE
          - MQSP_NOT_AVAILABLE
          - MQSQQM_IGNORE
          - MQSQQM_USE
          - MQSSL_FIPS_NO
          - MQSSL_FIPS_YES
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR
          - MQSYNCPOINT_IFPER
          - MQSYNCPOINT_YES
          - MQTCPKEEP_NO
          - MQTCPKEEP_YES
          - MQTCPSTACK_MULTIPLE
          - MQTCPSTACK_SINGLE
          - MQTRAXSTR_NO
          - MQTRAXSTR_YES
          - MQUNDELIVERED_DISCARD
          - MQUNDELIVERED_DISCARD
          - MQUNDELIVERED_KEEP
          - MQUNDELIVERED_KEEP
          - MQUNDELIVERED_NORMAL
          - MQUNDELIVERED_SAFE
          - MQ_CERT_VAL_POLICY_ANY
          - MQ_CERT_VAL_POLICY_RFC5280
          - MQ_SUITE_B_128_BIT
          - MQ_SUITE_B_128_BIT
          - MQ_SUITE_B_192_BIT
          - MQ_SUITE_B_NONE
          - MaxActiveChannels
          - MaxChannels
          - MaxHandles
          - MaxMsgLength
          - MaxPriority
          - MaxPropertiesLength
          - MaxUncommittedMsgs
          - MsgMarkBrowseInterval
          - OTELPropagationControl
          - OutboundPortMax
          - OutboundPortMin
          - Parent
          - PerformanceEvent
          - Platform
          - PubSubClus
          - PubSubMaxMsgRetryCount
          - PubSubMode
          - PubSubNPInputMsg
          - PubSubNPResponse
          - PubSubSyncPoint
          - QMgrDesc
          - QMgrIdentifier
          - QMgrName
          - QSGCertificateLabel
          - QSGName
          - QueueAccounting
          - QueueMonitoring
          - QueueStatistics
          - ReceiveTimeout
          - ReceiveTimeoutMin
          - ReceiveTimeoutType
          - RemoteEvent
          - RepositoryName
          - RepositoryNamelist
          - Returned
          - RevDns
          - SSLCRLNamelist
          - SSLCryptoHardware
          - SSLEvent
          - SSLFipsRequired
          - SSLKeyRepository
          - SSLKeyRepositoryPassword
          - SSLKeyResetCount
          - SSLTasks
          - SecurityCase
          - SharedQQmgrName
          - Splcap
          - StartStopEvent
          - StatisticsInterval
          - SyncPoint
          - TCPChannels
          - TCPKeepAlive
          - TCPName
          - TCPStackType
          - TraceRouteRecording
          - TreeLifeTime
          - TriggerInterval
          - Version
          - XrCapability
    notes:
      - display-requested-parameters-treated-as-output
  - mqsc:
      name: DISPLAY QMSTATUS
      href: SSFKSJ_9.4.0/refadmin/q086250_.html
      positional_parameters: []
      input_parameters: []
      output_parameters:
        - ACTIVE
        - LEADER
        - REPLICA
        - UNKNOWN
      section_sources:
        'Requested parameters for TYPE(NATIVEHA)':
          - ACTIVE
          - LEADER
          - REPLICA
          - UNKNOWN
    pcf:
      command: MQCMD_INQUIRE_Q_MGR_STATUS
      request_href: SSFKSJ_9.4.0/refadmin/q087850_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087850_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_MGR_STATUS_INFO_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_MGR_STATUS_INFO_NHA
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: ArchiveLog
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveLogSize
          pcf_type: MQCFIN
          type_hint: int
        - name: AutoCluster
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAUTOCLUS_TYPE_NONE
          pcf_type: null
          type_hint: null
        - name: MQAUTOCLUS_TYPE_UNIFORM
          pcf_type: null
          type_hint: null
        - name: ChannelInitiatorStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_STATUS_STOPPED
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_STARTING
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_RUNNING
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_STOPPING
          pcf_type: null
          type_hint: null
        - name: ChkptCnt
          pcf_type: MQCFIN
          type_hint: int
        - name: ChkptOps
          pcf_type: MQCFIN
          type_hint: int
        - name: ChkptSz
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandServerStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_STATUS_STARTING
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_RUNNING
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_STOPPING
          pcf_type: null
          type_hint: null
        - name: ConnectionCount
          pcf_type: MQCFIN
          type_hint: int
        - name: CurrentLog
          pcf_type: MQCFST
          type_hint: str
        - name: DataFSSize
          pcf_type: MQCFIN
          type_hint: int
        - name: DataFSUse
          pcf_type: MQCFIN
          type_hint: int
        - name: DataPath
          pcf_type: MQCFST
          type_hint: str
        - name: DiskLsn
          pcf_type: MQCFST
          type_hint: str
        - name: GrpLsn
          pcf_type: MQCFST
          type_hint: str
        - name: GrpName
          pcf_type: MQCFST
          type_hint: str
        - name: GrpRole
          pcf_type: MQCFIN
          type_hint: int
        - name: HostName
          pcf_type: MQCFST
          type_hint: str
        - name: InstallationDesc
          pcf_type: MQCFST
          type_hint: str
        - name: InstallationName
          pcf_type: MQCFST
          type_hint: str
        - name: InstallationPath
          pcf_type: MQCFST
          type_hint: str
        - name: InSyncInstances
          pcf_type: MQCFIN
          type_hint: int
        - name: LDAPConnectionStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLDAPC_CONNECTED
          pcf_type: null
          type_hint: null
        - name: MQLDAPC_ERROR
          pcf_type: null
          type_hint: null
        - name: MQLDAPC_INACTIVE
          pcf_type: null
          type_hint: null
        - name: LogExtSize
          pcf_type: MQCFIN
          type_hint: int
        - name: LogFSSize
          pcf_type: MQCFIN
          type_hint: int
        - name: LogFSUse
          pcf_type: MQCFIN
          type_hint: int
        - name: LogInUse
          pcf_type: MQCFIN
          type_hint: int
        - name: LogPath
          pcf_type: MQCFST
          type_hint: str
        - name: LogPrim
          pcf_type: MQCFIN
          type_hint: int
        - name: LogSec
          pcf_type: MQCFIN
          type_hint: int
        - name: LogStartDate
          pcf_type: MQCFST
          type_hint: str
        - name: LogStartLSN
          pcf_type: MQCFST
          type_hint: str
        - name: LogStartTime
          pcf_type: MQCFST
          type_hint: str
        - name: LogType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLOGTYPE_CIRCULAR
          pcf_type: null
          type_hint: null
        - name: MQLOGTYPE_LINEAR
          pcf_type: null
          type_hint: null
        - name: MQLOGTYPE_REPLICATED
          pcf_type: null
          type_hint: null
        - name: LogUtilization
          pcf_type: MQCFIN
          type_hint: int
        - name: MediaRecoveryLog
          pcf_type: MQCFST
          type_hint: str
        - name: MediaRecoveryLogSize
          pcf_type: MQCFIN
          type_hint: int
        - name: NativeHAInstanceName
          pcf_type: MQCFST
          type_hint: str
        - name: PermitStandby
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSTDBY_NOT_PERMITTED
          pcf_type: null
          type_hint: null
        - name: MQSTDBY_PERMITTED
          pcf_type: null
          type_hint: null
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMSTA_STARTING
          pcf_type: null
          type_hint: null
        - name: MQQMSTA_RUNNING
          pcf_type: null
          type_hint: null
        - name: MQQMSTA_QUIESCING
          pcf_type: null
          type_hint: null
        - name: QMgrEncryption
          pcf_type: MQCFIN
          type_hint: int
        - name: MQFSENC_NO
          pcf_type: null
          type_hint: null
        - name: MQFSENC_YES
          pcf_type: null
          type_hint: null
        - name: MQFSENC_UNKNOWN
          pcf_type: null
          type_hint: null
        - name: QMgrFSSize
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrFSUse
          pcf_type: MQCFIN
          type_hint: int
        - name: RestartRecoveryLog
          pcf_type: MQCFST
          type_hint: str
        - name: RestartRecoveryLogSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ReusableLogSize
          pcf_type: MQCFIN
          type_hint: int
        - name: StartDate
          pcf_type: MQCFST
          type_hint: str
        - name: StartTime
          pcf_type: MQCFST
          type_hint: str
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_MGR_STATUS_INFO_Q_MGR
          pcf_type: null
          type_hint: null
        - name: TotalInstances
          pcf_type: MQCFIN
          type_hint: int
        - name: UniClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: AckLsn
          pcf_type: MQCFST
          type_hint: str
        - name: Backlog
          pcf_type: MQCFIN
          type_hint: int
        - name: GroupBacklog
          pcf_type: MQCFIN
          type_hint: int
        - name: ConnActv
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNHACONNACTV_NO
          pcf_type: null
          type_hint: null
        - name: MQNHACONNACTV_YES
          pcf_type: null
          type_hint: null
        - name: ConnGrp
          pcf_type: MQCFIN
          type_hint: int
        - name: GrpAddr
          pcf_type: MQCFIN
          type_hint: int
        - name: GrpName
          pcf_type: MQCFST
          type_hint: str
        - name: GrpRole
          pcf_type: MQCFIN
          type_hint: int
        - name: GrpStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: GrpVer
          pcf_type: MQCFST
          type_hint: str
        - name: HAInitDate
          pcf_type: MQCFST
          type_hint: str
        - name: HAInitLSN
          pcf_type: MQCFST
          type_hint: str
        - name: HAInitTime
          pcf_type: MQCFST
          type_hint: str
        - name: HAStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: InitLsn
          pcf_type: MQCFST
          type_hint: str
        - name: InitTime
          pcf_type: MQCFST
          type_hint: str
        - name: InSync
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNHAINSYNC_NO
          pcf_type: null
          type_hint: null
        - name: MQNHAINSYNC_YES
          pcf_type: null
          type_hint: null
        - name: Instance
          pcf_type: MQCFST
          type_hint: str
        - name: LiveTime
          pcf_type: MQCFST
          type_hint: str
        - name: NhaType
          pcf_type: MQCFST
          type_hint: str
        - name: MQNHATYPE_INSTANCE
          pcf_type: null
          type_hint: null
        - name: MQNHATYPE_GROUP
          pcf_type: null
          type_hint: null
        - name: RcovLsn
          pcf_type: MQCFST
          type_hint: str
        - name: RcovTime
          pcf_type: MQCFST
          type_hint: str
        - name: ReplAddr
          pcf_type: MQCFST
          type_hint: str
        - name: Role
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNHAROLE_UNKNOWN
          pcf_type: null
          type_hint: null
        - name: MQNHAROLE_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQNHAROLE_LEADER
          pcf_type: null
          type_hint: null
        - name: MQNHAROLE_REPLICA
          pcf_type: null
          type_hint: null
        - name: SyncTime
          pcf_type: MQCFST
          type_hint: str
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_MGR_STATUS_INFO_NHA
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_MGR_STATUS_INFO_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_MGR_STATUS_INFO_NHA
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: ArchiveLog
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveLogSize
          pcf_type: MQCFIN
          type_hint: int
        - name: AutoCluster
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAUTOCLUS_TYPE_NONE
          pcf_type: null
          type_hint: null
        - name: MQAUTOCLUS_TYPE_UNIFORM
          pcf_type: null
          type_hint: null
        - name: ChannelInitiatorStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_STATUS_STOPPED
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_STARTING
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_RUNNING
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_STOPPING
          pcf_type: null
          type_hint: null
        - name: ChkptCnt
          pcf_type: MQCFIN
          type_hint: int
        - name: ChkptOps
          pcf_type: MQCFIN
          type_hint: int
        - name: ChkptSz
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandServerStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_STATUS_STARTING
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_RUNNING
          pcf_type: null
          type_hint: null
        - name: MQSVC_STATUS_STOPPING
          pcf_type: null
          type_hint: null
        - name: ConnectionCount
          pcf_type: MQCFIN
          type_hint: int
        - name: CurrentLog
          pcf_type: MQCFST
          type_hint: str
        - name: DataFSSize
          pcf_type: MQCFIN
          type_hint: int
        - name: DataFSUse
          pcf_type: MQCFIN
          type_hint: int
        - name: DataPath
          pcf_type: MQCFST
          type_hint: str
        - name: DiskLsn
          pcf_type: MQCFST
          type_hint: str
        - name: GrpLsn
          pcf_type: MQCFST
          type_hint: str
        - name: GrpName
          pcf_type: MQCFST
          type_hint: str
        - name: GrpRole
          pcf_type: MQCFIN
          type_hint: int
        - name: HostName
          pcf_type: MQCFST
          type_hint: str
        - name: InstallationDesc
          pcf_type: MQCFST
          type_hint: str
        - name: InstallationName
          pcf_type: MQCFST
          type_hint: str
        - name: InstallationPath
          pcf_type: MQCFST
          type_hint: str
        - name: InSyncInstances
          pcf_type: MQCFIN
          type_hint: int
        - name: LDAPConnectionStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLDAPC_CONNECTED
          pcf_type: null
          type_hint: null
        - name: MQLDAPC_ERROR
          pcf_type: null
          type_hint: null
        - name: MQLDAPC_INACTIVE
          pcf_type: null
          type_hint: null
        - name: LogExtSize
          pcf_type: MQCFIN
          type_hint: int
        - name: LogFSSize
          pcf_type: MQCFIN
          type_hint: int
        - name: LogFSUse
          pcf_type: MQCFIN
          type_hint: int
        - name: LogInUse
          pcf_type: MQCFIN
          type_hint: int
        - name: LogPath
          pcf_type: MQCFST
          type_hint: str
        - name: LogPrim
          pcf_type: MQCFIN
          type_hint: int
        - name: LogSec
          pcf_type: MQCFIN
          type_hint: int
        - name: LogStartDate
          pcf_type: MQCFST
          type_hint: str
        - name: LogStartLSN
          pcf_type: MQCFST
          type_hint: str
        - name: LogStartTime
          pcf_type: MQCFST
          type_hint: str
        - name: LogType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLOGTYPE_CIRCULAR
          pcf_type: null
          type_hint: null
        - name: MQLOGTYPE_LINEAR
          pcf_type: null
          type_hint: null
        - name: MQLOGTYPE_REPLICATED
          pcf_type: null
          type_hint: null
        - name: LogUtilization
          pcf_type: MQCFIN
          type_hint: int
        - name: MediaRecoveryLog
          pcf_type: MQCFST
          type_hint: str
        - name: MediaRecoveryLogSize
          pcf_type: MQCFIN
          type_hint: int
        - name: NativeHAInstanceName
          pcf_type: MQCFST
          type_hint: str
        - name: PermitStandby
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSTDBY_NOT_PERMITTED
          pcf_type: null
          type_hint: null
        - name: MQSTDBY_PERMITTED
          pcf_type: null
          type_hint: null
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMSTA_STARTING
          pcf_type: null
          type_hint: null
        - name: MQQMSTA_RUNNING
          pcf_type: null
          type_hint: null
        - name: MQQMSTA_QUIESCING
          pcf_type: null
          type_hint: null
        - name: QMgrEncryption
          pcf_type: MQCFIN
          type_hint: int
        - name: MQFSENC_NO
          pcf_type: null
          type_hint: null
        - name: MQFSENC_YES
          pcf_type: null
          type_hint: null
        - name: MQFSENC_UNKNOWN
          pcf_type: null
          type_hint: null
        - name: QMgrFSSize
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrFSUse
          pcf_type: MQCFIN
          type_hint: int
        - name: RestartRecoveryLog
          pcf_type: MQCFST
          type_hint: str
        - name: RestartRecoveryLogSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ReusableLogSize
          pcf_type: MQCFIN
          type_hint: int
        - name: StartDate
          pcf_type: MQCFST
          type_hint: str
        - name: StartTime
          pcf_type: MQCFST
          type_hint: str
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_MGR_STATUS_INFO_Q_MGR
          pcf_type: null
          type_hint: null
        - name: TotalInstances
          pcf_type: MQCFIN
          type_hint: int
        - name: UniClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: AckLsn
          pcf_type: MQCFST
          type_hint: str
        - name: Backlog
          pcf_type: MQCFIN
          type_hint: int
        - name: GroupBacklog
          pcf_type: MQCFIN
          type_hint: int
        - name: ConnActv
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNHACONNACTV_NO
          pcf_type: null
          type_hint: null
        - name: MQNHACONNACTV_YES
          pcf_type: null
          type_hint: null
        - name: ConnGrp
          pcf_type: MQCFIN
          type_hint: int
        - name: GrpAddr
          pcf_type: MQCFIN
          type_hint: int
        - name: GrpName
          pcf_type: MQCFST
          type_hint: str
        - name: GrpRole
          pcf_type: MQCFIN
          type_hint: int
        - name: GrpStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: GrpVer
          pcf_type: MQCFST
          type_hint: str
        - name: HAInitDate
          pcf_type: MQCFST
          type_hint: str
        - name: HAInitLSN
          pcf_type: MQCFST
          type_hint: str
        - name: HAInitTime
          pcf_type: MQCFST
          type_hint: str
        - name: HAStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: InitLsn
          pcf_type: MQCFST
          type_hint: str
        - name: InitTime
          pcf_type: MQCFST
          type_hint: str
        - name: InSync
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNHAINSYNC_NO
          pcf_type: null
          type_hint: null
        - name: MQNHAINSYNC_YES
          pcf_type: null
          type_hint: null
        - name: Instance
          pcf_type: MQCFST
          type_hint: str
        - name: LiveTime
          pcf_type: MQCFST
          type_hint: str
        - name: NhaType
          pcf_type: MQCFST
          type_hint: str
        - name: MQNHATYPE_INSTANCE
          pcf_type: null
          type_hint: null
        - name: MQNHATYPE_GROUP
          pcf_type: null
          type_hint: null
        - name: RcovLsn
          pcf_type: MQCFST
          type_hint: str
        - name: RcovTime
          pcf_type: MQCFST
          type_hint: str
        - name: ReplAddr
          pcf_type: MQCFST
          type_hint: str
        - name: Role
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNHAROLE_UNKNOWN
          pcf_type: null
          type_hint: null
        - name: MQNHAROLE_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQNHAROLE_LEADER
          pcf_type: null
          type_hint: null
        - name: MQNHAROLE_REPLICA
          pcf_type: null
          type_hint: null
        - name: SyncTime
          pcf_type: MQCFST
          type_hint: str
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_MGR_STATUS_INFO_NHA
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AckLsn
          - Always
          - ArchiveLog
          - ArchiveLogSize
          - AutoCluster
          - Backlog
          - ChannelInitiatorStatus
          - ChkptCnt
          - ChkptOps
          - ChkptSz
          - CommandServerStatus
          - ConnActv
          - ConnGrp
          - ConnectionCount
          - CurrentLog
          - DataFSSize
          - DataFSUse
          - DataPath
          - DiskLsn
          - GroupBacklog
          - GrpAddr
          - GrpLsn
          - GrpName
          - GrpName
          - GrpRole
          - GrpRole
          - GrpStatus
          - GrpVer
          - HAInitDate
          - HAInitLSN
          - HAInitTime
          - HAStatus
          - HostName
          - InSync
          - InSyncInstances
          - InitLsn
          - InitTime
          - InstallationDesc
          - InstallationName
          - InstallationPath
          - Instance
          - LDAPConnectionStatus
          - LiveTime
          - LogExtSize
          - LogFSSize
          - LogFSUse
          - LogInUse
          - LogPath
          - LogPrim
          - LogSec
          - LogStartDate
          - LogStartLSN
          - LogStartTime
          - LogType
          - LogUtilization
          - MQAUTOCLUS_TYPE_NONE
          - MQAUTOCLUS_TYPE_UNIFORM
          - MQFSENC_NO
          - MQFSENC_UNKNOWN
          - MQFSENC_YES
          - MQIACF_Q_MGR_STATUS_INFO_NHA
          - MQIACF_Q_MGR_STATUS_INFO_NHA
          - MQIACF_Q_MGR_STATUS_INFO_Q_MGR
          - MQIACF_Q_MGR_STATUS_INFO_Q_MGR
          - MQLDAPC_CONNECTED
          - MQLDAPC_ERROR
          - MQLDAPC_INACTIVE
          - MQLOGTYPE_CIRCULAR
          - MQLOGTYPE_LINEAR
          - MQLOGTYPE_REPLICATED
          - MQNHACONNACTV_NO
          - MQNHACONNACTV_YES
          - MQNHAINSYNC_NO
          - MQNHAINSYNC_YES
          - MQNHAROLE_ACTIVE
          - MQNHAROLE_LEADER
          - MQNHAROLE_REPLICA
          - MQNHAROLE_UNKNOWN
          - MQNHATYPE_GROUP
          - MQNHATYPE_INSTANCE
          - MQQMSTA_QUIESCING
          - MQQMSTA_RUNNING
          - MQQMSTA_STARTING
          - MQSTDBY_NOT_PERMITTED
          - MQSTDBY_PERMITTED
          - MQSVC_STATUS_RUNNING
          - MQSVC_STATUS_RUNNING
          - MQSVC_STATUS_STARTING
          - MQSVC_STATUS_STARTING
          - MQSVC_STATUS_STOPPED
          - MQSVC_STATUS_STOPPING
          - MQSVC_STATUS_STOPPING
          - MediaRecoveryLog
          - MediaRecoveryLogSize
          - NativeHAInstanceName
          - NhaType
          - PermitStandby
          - QMgrEncryption
          - QMgrFSSize
          - QMgrFSUse
          - QMgrName
          - QMgrStatus
          - RcovLsn
          - RcovTime
          - ReplAddr
          - RestartRecoveryLog
          - RestartRecoveryLogSize
          - Returned
          - Returned
          - ReusableLogSize
          - Role
          - StartDate
          - StartTime
          - StatusType
          - StatusType
          - SyncTime
          - TotalInstances
          - UniClusterName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - ACTIVE
          - LEADER
          - REPLICA
          - UNKNOWN
        pcf_unmapped:
          - AckLsn
          - Always
          - ArchiveLog
          - ArchiveLogSize
          - AutoCluster
          - Backlog
          - ChannelInitiatorStatus
          - ChkptCnt
          - ChkptOps
          - ChkptSz
          - CommandServerStatus
          - ConnActv
          - ConnGrp
          - ConnectionCount
          - CurrentLog
          - DataFSSize
          - DataFSUse
          - DataPath
          - DiskLsn
          - GroupBacklog
          - GrpAddr
          - GrpLsn
          - GrpName
          - GrpName
          - GrpRole
          - GrpRole
          - GrpStatus
          - GrpVer
          - HAInitDate
          - HAInitLSN
          - HAInitTime
          - HAStatus
          - HostName
          - InSync
          - InSyncInstances
          - InitLsn
          - InitTime
          - InstallationDesc
          - InstallationName
          - InstallationPath
          - Instance
          - LDAPConnectionStatus
          - LiveTime
          - LogExtSize
          - LogFSSize
          - LogFSUse
          - LogInUse
          - LogPath
          - LogPrim
          - LogSec
          - LogStartDate
          - LogStartLSN
          - LogStartTime
          - LogType
          - LogUtilization
          - MQAUTOCLUS_TYPE_NONE
          - MQAUTOCLUS_TYPE_UNIFORM
          - MQFSENC_NO
          - MQFSENC_UNKNOWN
          - MQFSENC_YES
          - MQIACF_Q_MGR_STATUS_INFO_NHA
          - MQIACF_Q_MGR_STATUS_INFO_NHA
          - MQIACF_Q_MGR_STATUS_INFO_Q_MGR
          - MQIACF_Q_MGR_STATUS_INFO_Q_MGR
          - MQLDAPC_CONNECTED
          - MQLDAPC_ERROR
          - MQLDAPC_INACTIVE
          - MQLOGTYPE_CIRCULAR
          - MQLOGTYPE_LINEAR
          - MQLOGTYPE_REPLICATED
          - MQNHACONNACTV_NO
          - MQNHACONNACTV_YES
          - MQNHAINSYNC_NO
          - MQNHAINSYNC_YES
          - MQNHAROLE_ACTIVE
          - MQNHAROLE_LEADER
          - MQNHAROLE_REPLICA
          - MQNHAROLE_UNKNOWN
          - MQNHATYPE_GROUP
          - MQNHATYPE_INSTANCE
          - MQQMSTA_QUIESCING
          - MQQMSTA_RUNNING
          - MQQMSTA_STARTING
          - MQSTDBY_NOT_PERMITTED
          - MQSTDBY_PERMITTED
          - MQSVC_STATUS_RUNNING
          - MQSVC_STATUS_RUNNING
          - MQSVC_STATUS_STARTING
          - MQSVC_STATUS_STARTING
          - MQSVC_STATUS_STOPPED
          - MQSVC_STATUS_STOPPING
          - MQSVC_STATUS_STOPPING
          - MediaRecoveryLog
          - MediaRecoveryLogSize
          - NativeHAInstanceName
          - NhaType
          - PermitStandby
          - QMgrEncryption
          - QMgrFSSize
          - QMgrFSUse
          - QMgrName
          - QMgrStatus
          - RcovLsn
          - RcovTime
          - ReplAddr
          - RestartRecoveryLog
          - RestartRecoveryLogSize
          - Returned
          - Returned
          - ReusableLogSize
          - Role
          - StartDate
          - StartTime
          - StatusType
          - StatusType
          - SyncTime
          - TotalInstances
          - UniClusterName
    notes:
      - display-requested-parameters-treated-as-output
  - mqsc:
      name: DISPLAY QSTATUS
      href: SSFKSJ_9.4.0/refadmin/q086260_.html
      positional_parameters:
        - generic-qname
        - n
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_Q_STATUS
      request_href: SSFKSJ_9.4.0/refadmin/q087890_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087890_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_HANDLE
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: CurrentMaxQFileSize
          pcf_type: MQCFIN
          type_hint: int
        - name: CurrentQFileSize
          pcf_type: MQCFIN
          type_hint: int
        - name: CurrentQDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: LastGetDate
          pcf_type: MQCFST
          type_hint: str
        - name: LastGetTime
          pcf_type: MQCFST
          type_hint: str
        - name: LastPutDate
          pcf_type: MQCFST
          type_hint: str
        - name: LastPutTime
          pcf_type: MQCFST
          type_hint: str
        - name: MediaRecoveryLogExtent
          pcf_type: MQCFST
          type_hint: str
        - name: OldestMsgAge
          pcf_type: MQCFIN
          type_hint: int
        - name: OnQTime
          pcf_type: MQCFIL
          type_hint: int
        - name: OpenInputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenOutputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFST
          type_hint: str
        - name: UncommittedMsgs
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSUM_YES
          pcf_type: null
          type_hint: null
        - name: MQQSUM_NO
          pcf_type: null
          type_hint: null
        - name: n
          pcf_type: null
          type_hint: null
        - name: ApplDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ApplTag
          pcf_type: MQCFST
          type_hint: str
        - name: ApplType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAT_QMGR
          pcf_type: null
          type_hint: null
        - name: MQAT_CHANNEL_INITIATOR
          pcf_type: null
          type_hint: null
        - name: MQAT_USER
          pcf_type: null
          type_hint: null
        - name: MQAT_BATCH
          pcf_type: null
          type_hint: null
        - name: MQAT_RRS_BATCH
          pcf_type: null
          type_hint: null
        - name: MQAT_CICS
          pcf_type: null
          type_hint: null
        - name: MQAT_IMS
          pcf_type: null
          type_hint: null
        - name: MQAT_SYSTEM_EXTENSION
          pcf_type: null
          type_hint: null
        - name: ASId
          pcf_type: MQCFST
          type_hint: str
        - name: AsynchronousState
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAS_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQAS_INACTIVE
          pcf_type: null
          type_hint: null
        - name: MQAS_SUSPENDED
          pcf_type: null
          type_hint: null
        - name: MQAS_SUSPENDED_TEMPORARY
          pcf_type: null
          type_hint: null
        - name: MQAS_NONE
          pcf_type: null
          type_hint: null
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: ExternalUOWId
          pcf_type: MQCFBS
          type_hint: bytes
        - name: HandleState
          pcf_type: MQCFIN
          type_hint: int
        - name: MQHSTATE_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQHSTATE_INACTIVE
          pcf_type: null
          type_hint: null
        - name: OpenBrowse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_YES
          pcf_type: null
          type_hint: null
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: OpenInputType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: MQQSO_SHARED
          pcf_type: null
          type_hint: null
        - name: MQQSO_EXCLUSIVE
          pcf_type: null
          type_hint: null
        - name: OpenInquire
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_YES
          pcf_type: null
          type_hint: null
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: OpenOptions
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenOutput
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_YES
          pcf_type: null
          type_hint: null
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: OpenSet
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_YES
          pcf_type: null
          type_hint: null
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: ProcessId
          pcf_type: MQCFIN
          type_hint: int
        - name: PSBName
          pcf_type: MQCFST
          type_hint: str
        - name: PSTId
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrUOWId
          pcf_type: MQCFBS
          type_hint: bytes
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFST
          type_hint: str
        - name: TaskNumber
          pcf_type: MQCFST
          type_hint: str
        - name: ThreadId
          pcf_type: MQCFIN
          type_hint: int
        - name: TransactionId
          pcf_type: MQCFST
          type_hint: str
        - name: UOWIdentifier
          pcf_type: MQCFBS
          type_hint: bytes
        - name: UOWType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUOWT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQUOWT_CICS
          pcf_type: null
          type_hint: null
        - name: MQUOWT_XA
          pcf_type: null
          type_hint: null
        - name: UserIdentifier
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_HANDLE
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: CurrentMaxQFileSize
          pcf_type: MQCFIN
          type_hint: int
        - name: CurrentQFileSize
          pcf_type: MQCFIN
          type_hint: int
        - name: CurrentQDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: LastGetDate
          pcf_type: MQCFST
          type_hint: str
        - name: LastGetTime
          pcf_type: MQCFST
          type_hint: str
        - name: LastPutDate
          pcf_type: MQCFST
          type_hint: str
        - name: LastPutTime
          pcf_type: MQCFST
          type_hint: str
        - name: MediaRecoveryLogExtent
          pcf_type: MQCFST
          type_hint: str
        - name: OldestMsgAge
          pcf_type: MQCFIN
          type_hint: int
        - name: OnQTime
          pcf_type: MQCFIL
          type_hint: int
        - name: OpenInputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenOutputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFST
          type_hint: str
        - name: UncommittedMsgs
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSUM_YES
          pcf_type: null
          type_hint: null
        - name: MQQSUM_NO
          pcf_type: null
          type_hint: null
        - name: n
          pcf_type: null
          type_hint: null
        - name: ApplDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ApplTag
          pcf_type: MQCFST
          type_hint: str
        - name: ApplType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAT_QMGR
          pcf_type: null
          type_hint: null
        - name: MQAT_CHANNEL_INITIATOR
          pcf_type: null
          type_hint: null
        - name: MQAT_USER
          pcf_type: null
          type_hint: null
        - name: MQAT_BATCH
          pcf_type: null
          type_hint: null
        - name: MQAT_RRS_BATCH
          pcf_type: null
          type_hint: null
        - name: MQAT_CICS
          pcf_type: null
          type_hint: null
        - name: MQAT_IMS
          pcf_type: null
          type_hint: null
        - name: MQAT_SYSTEM_EXTENSION
          pcf_type: null
          type_hint: null
        - name: ASId
          pcf_type: MQCFST
          type_hint: str
        - name: AsynchronousState
          pcf_type: MQCFIN
          type_hint: int
        - name: MQAS_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQAS_INACTIVE
          pcf_type: null
          type_hint: null
        - name: MQAS_SUSPENDED
          pcf_type: null
          type_hint: null
        - name: MQAS_SUSPENDED_TEMPORARY
          pcf_type: null
          type_hint: null
        - name: MQAS_NONE
          pcf_type: null
          type_hint: null
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: ExternalUOWId
          pcf_type: MQCFBS
          type_hint: bytes
        - name: HandleState
          pcf_type: MQCFIN
          type_hint: int
        - name: MQHSTATE_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQHSTATE_INACTIVE
          pcf_type: null
          type_hint: null
        - name: OpenBrowse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_YES
          pcf_type: null
          type_hint: null
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: OpenInputType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: MQQSO_SHARED
          pcf_type: null
          type_hint: null
        - name: MQQSO_EXCLUSIVE
          pcf_type: null
          type_hint: null
        - name: OpenInquire
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_YES
          pcf_type: null
          type_hint: null
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: OpenOptions
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenOutput
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_YES
          pcf_type: null
          type_hint: null
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: OpenSet
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSO_YES
          pcf_type: null
          type_hint: null
        - name: MQQSO_NO
          pcf_type: null
          type_hint: null
        - name: ProcessId
          pcf_type: MQCFIN
          type_hint: int
        - name: PSBName
          pcf_type: MQCFST
          type_hint: str
        - name: PSTId
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrUOWId
          pcf_type: MQCFBS
          type_hint: bytes
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFST
          type_hint: str
        - name: TaskNumber
          pcf_type: MQCFST
          type_hint: str
        - name: ThreadId
          pcf_type: MQCFIN
          type_hint: int
        - name: TransactionId
          pcf_type: MQCFST
          type_hint: str
        - name: UOWIdentifier
          pcf_type: MQCFBS
          type_hint: bytes
        - name: UOWType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUOWT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQUOWT_CICS
          pcf_type: null
          type_hint: null
        - name: MQUOWT_XA
          pcf_type: null
          type_hint: null
        - name: UserIdentifier
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ASId
          - Always
          - ApplDesc
          - ApplTag
          - ApplType
          - AsynchronousState
          - ChannelName
          - ConnectionName
          - CurrentMaxQFileSize
          - CurrentQDepth
          - CurrentQFileSize
          - ExternalUOWId
          - HandleState
          - LastGetDate
          - LastGetTime
          - LastPutDate
          - LastPutTime
          - MQAS_ACTIVE
          - MQAS_INACTIVE
          - MQAS_NONE
          - MQAS_SUSPENDED
          - MQAS_SUSPENDED_TEMPORARY
          - MQAT_BATCH
          - MQAT_CHANNEL_INITIATOR
          - MQAT_CICS
          - MQAT_IMS
          - MQAT_QMGR
          - MQAT_RRS_BATCH
          - MQAT_SYSTEM_EXTENSION
          - MQAT_USER
          - MQHSTATE_ACTIVE
          - MQHSTATE_INACTIVE
          - MQIACF_Q_HANDLE
          - MQIACF_Q_STATUS
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_OFF
          - MQQSGD_COPY
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSGD_SHARED
          - MQQSO_EXCLUSIVE
          - MQQSO_NO
          - MQQSO_NO
          - MQQSO_NO
          - MQQSO_NO
          - MQQSO_NO
          - MQQSO_SHARED
          - MQQSO_YES
          - MQQSO_YES
          - MQQSO_YES
          - MQQSO_YES
          - MQQSUM_NO
          - MQQSUM_YES
          - MQUOWT_CICS
          - MQUOWT_Q_MGR
          - MQUOWT_XA
          - MediaRecoveryLogExtent
          - OldestMsgAge
          - OnQTime
          - OpenBrowse
          - OpenInputCount
          - OpenInputType
          - OpenInquire
          - OpenOptions
          - OpenOutput
          - OpenOutputCount
          - OpenSet
          - PSBName
          - PSTId
          - ProcessId
          - QMgrUOWId
          - QName
          - QName
          - QSGDisposition
          - QSGDisposition
          - QueueMonitoring
          - Returned
          - Returned
          - StatusType
          - StatusType
          - TaskNumber
          - ThreadId
          - TransactionId
          - UOWIdentifier
          - UOWType
          - UncommittedMsgs
          - UserIdentifier
          - n
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ASId
          - Always
          - ApplDesc
          - ApplTag
          - ApplType
          - AsynchronousState
          - ChannelName
          - ConnectionName
          - CurrentMaxQFileSize
          - CurrentQDepth
          - CurrentQFileSize
          - ExternalUOWId
          - HandleState
          - LastGetDate
          - LastGetTime
          - LastPutDate
          - LastPutTime
          - MQAS_ACTIVE
          - MQAS_INACTIVE
          - MQAS_NONE
          - MQAS_SUSPENDED
          - MQAS_SUSPENDED_TEMPORARY
          - MQAT_BATCH
          - MQAT_CHANNEL_INITIATOR
          - MQAT_CICS
          - MQAT_IMS
          - MQAT_QMGR
          - MQAT_RRS_BATCH
          - MQAT_SYSTEM_EXTENSION
          - MQAT_USER
          - MQHSTATE_ACTIVE
          - MQHSTATE_INACTIVE
          - MQIACF_Q_HANDLE
          - MQIACF_Q_STATUS
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_OFF
          - MQQSGD_COPY
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSGD_SHARED
          - MQQSO_EXCLUSIVE
          - MQQSO_NO
          - MQQSO_NO
          - MQQSO_NO
          - MQQSO_NO
          - MQQSO_NO
          - MQQSO_SHARED
          - MQQSO_YES
          - MQQSO_YES
          - MQQSO_YES
          - MQQSO_YES
          - MQQSUM_NO
          - MQQSUM_YES
          - MQUOWT_CICS
          - MQUOWT_Q_MGR
          - MQUOWT_XA
          - MediaRecoveryLogExtent
          - OldestMsgAge
          - OnQTime
          - OpenBrowse
          - OpenInputCount
          - OpenInputType
          - OpenInquire
          - OpenOptions
          - OpenOutput
          - OpenOutputCount
          - OpenSet
          - PSBName
          - PSTId
          - ProcessId
          - QMgrUOWId
          - QName
          - QName
          - QSGDisposition
          - QSGDisposition
          - QueueMonitoring
          - Returned
          - Returned
          - StatusType
          - StatusType
          - TaskNumber
          - ThreadId
          - TransactionId
          - UOWIdentifier
          - UOWType
          - UncommittedMsgs
          - UserIdentifier
          - n
    notes: []
  - mqsc:
      name: DISPLAY QUEUE
      href: SSFKSJ_9.4.0/refadmin/q086270_.html
      positional_parameters:
        - filter-keyword
        - filter-value
        - generic-name
        - generic-name)
        - integer
        - operator
        - qmgr-name
        - queue-name
        - queue-type
        - target-type
      input_parameters: []
      output_parameters:
        - ACCTQ
        - ALL
        - ALTDATE
        - ALTTIME
        - BOQNAME
        - BOTHRESH
        - CAPEXPRY
        - CLCHNAME
        - CLUSDATE
        - CLUSINFO
        - CLUSNL
        - CLUSQMGR
        - CLUSQT
        - CLUSTER
        - CLUSTIME
        - CLWLPRTY
        - CLWLRANK
        - CLWLUSEQ
        - CMDSCOPE
        - COMPAT
        - COPY
        - CRDATE
        - CRTIME
        - CURDEPTH
        - CUSTOM
        - DEFBIND
        - DEFPRESP
        - DEFPRTY
        - DEFPSIST
        - DEFREADA
        - DEFSOPT
        - DEFTYPE
        - DESCR
        - DISTL
        - EQ
        - FORCE
        - GE
        - GET
        - GROUP
        - GT
        - HARDENBO
        - IMGRCOVQ
        - INDXTYPE
        - INITQ
        - IPPROCS
        - LE
        - LIVE
        - LK
        - LT
        - MAXDEPTH
        - MAXFSIZE
        - MAXMSGL
        - MONQ
        - MSGDLVSQ
        - NE
        - NL
        - NONE
        - NPMCLASS
        - OPPROCS
        - OTELPCTL
        - OTELTRAC
        - PRIVATE
        - PROCESS
        - PROPCTL
        - PSID
        - PUT
        - QALIAS
        - QDEPTHHI
        - QDEPTHLO
        - QDPHIEV
        - QDPLOEV
        - QDPMAXEV
        - QLOCAL
        - QMGR
        - QMID
        - QMODEL
        - QREMOTE
        - QSGDISP
        - QSVCIEV
        - QSVCINT
        - QTYPE
        - RETINTVL
        - RNAME
        - RQMNAME
        - SCOPE
        - SHARE
        - SHARED
        - STATQ
        - STGCLASS
        - STREAMQ
        - STRMQOS
        - TARGET
        - TARGTYPE
        - TPIPE
        - TRIGDATA
        - TRIGDPTH
        - TRIGGER
        - TRIGMPRI
        - TRIGTYPE
        - TYPE
        - USAGE
        - WHERE
        - XMITQ
      section_sources:
        'Parameter descriptions for DISPLAY QUEUE':
          - ALL
          - CLUSINFO
          - CLUSNL
          - CLUSTER
          - CMDSCOPE
          - COPY
          - EQ
          - GE
          - GROUP
          - GT
          - LE
          - LIVE
          - LK
          - LT
          - NE
          - NL
          - PRIVATE
          - PSID
          - QALIAS
          - QLOCAL
          - QMGR
          - QMODEL
          - QREMOTE
          - QSGDISP
          - SHARED
          - STGCLASS
          - TARGTYPE
          - TYPE
          - WHERE
        'Requested parameters':
          - ACCTQ
          - ALL
          - ALTDATE
          - ALTTIME
          - BOQNAME
          - BOTHRESH
          - CAPEXPRY
          - CLCHNAME
          - CLUSDATE
          - CLUSNL
          - CLUSQMGR
          - CLUSQT
          - CLUSTER
          - CLUSTIME
          - CLWLPRTY
          - CLWLRANK
          - CLWLUSEQ
          - COMPAT
          - CRDATE
          - CRTIME
          - CURDEPTH
          - CUSTOM
          - DEFBIND
          - DEFPRESP
          - DEFPRTY
          - DEFPSIST
          - DEFREADA
          - DEFSOPT
          - DEFTYPE
          - DESCR
          - DISTL
          - FORCE
          - GET
          - HARDENBO
          - IMGRCOVQ
          - INDXTYPE
          - INITQ
          - IPPROCS
          - MAXDEPTH
          - MAXFSIZE
          - MAXMSGL
          - MONQ
          - MSGDLVSQ
          - NONE
          - NPMCLASS
          - OPPROCS
          - OTELPCTL
          - OTELTRAC
          - PROCESS
          - PROPCTL
          - PUT
          - QALIAS
          - QDEPTHHI
          - QDEPTHLO
          - QDPHIEV
          - QDPLOEV
          - QDPMAXEV
          - QLOCAL
          - QMGR
          - QMID
          - QREMOTE
          - QSVCIEV
          - QSVCINT
          - QTYPE
          - RETINTVL
          - RNAME
          - RQMNAME
          - SCOPE
          - SHARE
          - STATQ
          - STGCLASS
          - STREAMQ
          - STRMQOS
          - TARGET
          - TARGTYPE
          - TPIPE
          - TRIGDATA
          - TRIGDPTH
          - TRIGGER
          - TRIGMPRI
          - TRIGTYPE
          - USAGE
          - XMITQ
    pcf:
      command: MQCMD_INQUIRE_Q
      request_href: SSFKSJ_9.4.0/refadmin/q087810_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087810_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: BackoutRequeueName
          pcf_type: MQCFST
          type_hint: str
        - name: BackoutThreshold
          pcf_type: MQCFIN
          type_hint: int
        - name: BaseQName
          pcf_type: MQCFST
          type_hint: str
        - name: CapExpiry
          pcf_type: MQCFIN
          type_hint: int
        - name: CFStructure
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterDate
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterQType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCQT_LOCAL_Q
          pcf_type: null
          type_hint: null
        - name: MQCQT_ALIAS_Q
          pcf_type: null
          type_hint: null
        - name: MQCQT_REMOTE_Q
          pcf_type: null
          type_hint: null
        - name: MQCQT_Q_MGR_ALIAS
          pcf_type: null
          type_hint: null
        - name: ClusterTime
          pcf_type: MQCFST
          type_hint: str
        - name: CLWLQueuePriority
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLQueueRank
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLUseQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLWL_USEQ_AS_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCLWL_USEQ_ANY
          pcf_type: null
          type_hint: null
        - name: MQCLWL_USEQ_LOCAL
          pcf_type: null
          type_hint: null
        - name: CreationDate
          pcf_type: MQCFST
          type_hint: str
        - name: CreationTime
          pcf_type: MQCFST
          type_hint: str
        - name: CurrentQDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: DefaultPutResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPRT_SYNC_RESPONSE
          pcf_type: null
          type_hint: null
        - name: MQPRT_ASYNC_RESPONSE
          pcf_type: null
          type_hint: null
        - name: DefBind
          pcf_type: MQCFIN
          type_hint: int
        - name: MQBND_BIND_ON_OPEN
          pcf_type: null
          type_hint: null
        - name: MQBND_BIND_NOT_FIXED
          pcf_type: null
          type_hint: null
        - name: MQBND_BIND_ON_GROUP
          pcf_type: null
          type_hint: null
        - name: DefinitionType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQDT_PREDEFINED
          pcf_type: null
          type_hint: null
        - name: MQQDT_PERMANENT_DYNAMIC
          pcf_type: null
          type_hint: null
        - name: MQQDT_SHARED_DYNAMIC
          pcf_type: null
          type_hint: null
        - name: MQQDT_TEMPORARY_DYNAMIC
          pcf_type: null
          type_hint: null
        - name: DefInputOpenOption
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOO_INPUT_EXCLUSIVE
          pcf_type: null
          type_hint: null
        - name: MQOO_INPUT_SHARED
          pcf_type: null
          type_hint: null
        - name: DefPersistence
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPER_PERSISTENT
          pcf_type: null
          type_hint: null
        - name: MQPER_NOT_PERSISTENT
          pcf_type: null
          type_hint: null
        - name: DefPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: DefReadAhead
          pcf_type: MQCFIN
          type_hint: int
        - name: MQREADA_NO
          pcf_type: null
          type_hint: null
        - name: MQREADA_YES
          pcf_type: null
          type_hint: null
        - name: MQREADA_DISABLED
          pcf_type: null
          type_hint: null
        - name: DistLists
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDL_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQDL_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: HardenGetBackout
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQA_BACKOUT_HARDENED
          pcf_type: null
          type_hint: null
        - name: MQQA_BACKOUT_NOT_HARDENED
          pcf_type: null
          type_hint: null
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_AS_Q_MGR
          pcf_type: null
          type_hint: null
        - name: IndexType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIT_NONE
          pcf_type: null
          type_hint: null
        - name: MQIT_MSG_ID
          pcf_type: null
          type_hint: null
        - name: MQIT_CORREL_ID
          pcf_type: null
          type_hint: null
        - name: MQIT_MSG_TOKEN
          pcf_type: null
          type_hint: null
        - name: MQIT_GROUP_ID
          pcf_type: null
          type_hint: null
        - name: InhibitGet
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQA_GET_ALLOWED
          pcf_type: null
          type_hint: null
        - name: MQQA_GET_INHIBITED
          pcf_type: null
          type_hint: null
        - name: InhibitPut
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQA_PUT_ALLOWED
          pcf_type: null
          type_hint: null
        - name: MQQA_PUT_INHIBITED
          pcf_type: null
          type_hint: null
        - name: InitiationQName
          pcf_type: MQCFST
          type_hint: str
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxQDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgDeliverySequence
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMDS_PRIORITY
          pcf_type: null
          type_hint: null
        - name: MQMDS_FIFO
          pcf_type: null
          type_hint: null
        - name: NonPersistentMessageClass
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNPM_CLASS_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQNPM_CLASS_HIGH
          pcf_type: null
          type_hint: null
        - name: OpenInputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenOutputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_PCTL_QMGR
          pcf_type: null
          type_hint: null
        - name: MQOTEL_PCTL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQOTEL_PCTL_AUTO
          pcf_type: null
          type_hint: null
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_TRACE_QMGR
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_OFF
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_ON
          pcf_type: null
          type_hint: null
        - name: PageSetID
          pcf_type: MQCFIN
          type_hint: int
        - name: ProcessName
          pcf_type: MQCFST
          type_hint: str
        - name: PropertyControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPROP_COMPATIBILITY
          pcf_type: null
          type_hint: null
        - name: MQPROP_NONE
          pcf_type: null
          type_hint: null
        - name: MQPROP_ALL
          pcf_type: null
          type_hint: null
        - name: MQPROP_FORCE_
          pcf_type: null
          type_hint: null
        - name: QDepthHighEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: QDepthHighLimit
          pcf_type: MQCFIN
          type_hint: int
        - name: QDepthLowEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: QDepthLowLimit
          pcf_type: MQCFIN
          type_hint: int
        - name: QDepthMaxEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: QDesc
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: QServiceInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: QServiceIntervalEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSIE_HIGH
          pcf_type: null
          type_hint: null
        - name: MQQSIE_OK
          pcf_type: null
          type_hint: null
        - name: MQQSIE_NONE
          pcf_type: null
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQT_ALIAS
          pcf_type: null
          type_hint: null
        - name: MQQT_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQQT_LOCAL
          pcf_type: null
          type_hint: null
        - name: MQQT_REMOTE
          pcf_type: null
          type_hint: null
        - name: MQQT_MODEL
          pcf_type: null
          type_hint: null
        - name: QueueAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: RemoteQMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: RemoteQName
          pcf_type: MQCFST
          type_hint: str
        - name: RetentionInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: Scope
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCO_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSCO_CELL
          pcf_type: null
          type_hint: null
        - name: Shareability
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQA_SHAREABLE
          pcf_type: null
          type_hint: null
        - name: MQQA_NOT_SHAREABLE
          pcf_type: null
          type_hint: null
        - name: StorageClass
          pcf_type: MQCFST
          type_hint: str
        - name: StreamQ
          pcf_type: MQCFST
          type_hint: str
        - name: StreamQService
          pcf_type: MQCFIN
          type_hint: int
        - name: MQST_BEST_EFFORT
          pcf_type: null
          type_hint: null
        - name: MQST_MUST_DUP
          pcf_type: null
          type_hint: null
        - name: TpipeNames
          pcf_type: MQCFSL
          type_hint: str
        - name: TriggerControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTC_OFF
          pcf_type: null
          type_hint: null
        - name: MQTC_ON
          pcf_type: null
          type_hint: null
        - name: TriggerData
          pcf_type: MQCFST
          type_hint: str
        - name: TriggerDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerMsgPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTT_NONE
          pcf_type: null
          type_hint: null
        - name: MQTT_FIRST
          pcf_type: null
          type_hint: null
        - name: MQTT_EVERY
          pcf_type: null
          type_hint: null
        - name: MQTT_DEPTH
          pcf_type: null
          type_hint: null
        - name: Usage
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUS_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQUS_TRANSMISSION
          pcf_type: null
          type_hint: null
        - name: XmitQName
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: BackoutRequeueName
          pcf_type: MQCFST
          type_hint: str
        - name: BackoutThreshold
          pcf_type: MQCFIN
          type_hint: int
        - name: BaseQName
          pcf_type: MQCFST
          type_hint: str
        - name: CapExpiry
          pcf_type: MQCFIN
          type_hint: int
        - name: CFStructure
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterDate
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterQType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCQT_LOCAL_Q
          pcf_type: null
          type_hint: null
        - name: MQCQT_ALIAS_Q
          pcf_type: null
          type_hint: null
        - name: MQCQT_REMOTE_Q
          pcf_type: null
          type_hint: null
        - name: MQCQT_Q_MGR_ALIAS
          pcf_type: null
          type_hint: null
        - name: ClusterTime
          pcf_type: MQCFST
          type_hint: str
        - name: CLWLQueuePriority
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLQueueRank
          pcf_type: MQCFIN
          type_hint: int
        - name: CLWLUseQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLWL_USEQ_AS_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCLWL_USEQ_ANY
          pcf_type: null
          type_hint: null
        - name: MQCLWL_USEQ_LOCAL
          pcf_type: null
          type_hint: null
        - name: CreationDate
          pcf_type: MQCFST
          type_hint: str
        - name: CreationTime
          pcf_type: MQCFST
          type_hint: str
        - name: CurrentQDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: DefaultPutResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPRT_SYNC_RESPONSE
          pcf_type: null
          type_hint: null
        - name: MQPRT_ASYNC_RESPONSE
          pcf_type: null
          type_hint: null
        - name: DefBind
          pcf_type: MQCFIN
          type_hint: int
        - name: MQBND_BIND_ON_OPEN
          pcf_type: null
          type_hint: null
        - name: MQBND_BIND_NOT_FIXED
          pcf_type: null
          type_hint: null
        - name: MQBND_BIND_ON_GROUP
          pcf_type: null
          type_hint: null
        - name: DefinitionType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQDT_PREDEFINED
          pcf_type: null
          type_hint: null
        - name: MQQDT_PERMANENT_DYNAMIC
          pcf_type: null
          type_hint: null
        - name: MQQDT_SHARED_DYNAMIC
          pcf_type: null
          type_hint: null
        - name: MQQDT_TEMPORARY_DYNAMIC
          pcf_type: null
          type_hint: null
        - name: DefInputOpenOption
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOO_INPUT_EXCLUSIVE
          pcf_type: null
          type_hint: null
        - name: MQOO_INPUT_SHARED
          pcf_type: null
          type_hint: null
        - name: DefPersistence
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPER_PERSISTENT
          pcf_type: null
          type_hint: null
        - name: MQPER_NOT_PERSISTENT
          pcf_type: null
          type_hint: null
        - name: DefPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: DefReadAhead
          pcf_type: MQCFIN
          type_hint: int
        - name: MQREADA_NO
          pcf_type: null
          type_hint: null
        - name: MQREADA_YES
          pcf_type: null
          type_hint: null
        - name: MQREADA_DISABLED
          pcf_type: null
          type_hint: null
        - name: DistLists
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDL_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQDL_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: HardenGetBackout
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQA_BACKOUT_HARDENED
          pcf_type: null
          type_hint: null
        - name: MQQA_BACKOUT_NOT_HARDENED
          pcf_type: null
          type_hint: null
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: MQIMGRCOV_YES
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_NO
          pcf_type: null
          type_hint: null
        - name: MQIMGRCOV_AS_Q_MGR
          pcf_type: null
          type_hint: null
        - name: IndexType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIT_NONE
          pcf_type: null
          type_hint: null
        - name: MQIT_MSG_ID
          pcf_type: null
          type_hint: null
        - name: MQIT_CORREL_ID
          pcf_type: null
          type_hint: null
        - name: MQIT_MSG_TOKEN
          pcf_type: null
          type_hint: null
        - name: MQIT_GROUP_ID
          pcf_type: null
          type_hint: null
        - name: InhibitGet
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQA_GET_ALLOWED
          pcf_type: null
          type_hint: null
        - name: MQQA_GET_INHIBITED
          pcf_type: null
          type_hint: null
        - name: InhibitPut
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQA_PUT_ALLOWED
          pcf_type: null
          type_hint: null
        - name: MQQA_PUT_INHIBITED
          pcf_type: null
          type_hint: null
        - name: InitiationQName
          pcf_type: MQCFST
          type_hint: str
        - name: MaxMsgLength
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxQDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgDeliverySequence
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMDS_PRIORITY
          pcf_type: null
          type_hint: null
        - name: MQMDS_FIFO
          pcf_type: null
          type_hint: null
        - name: NonPersistentMessageClass
          pcf_type: MQCFIN
          type_hint: int
        - name: MQNPM_CLASS_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQNPM_CLASS_HIGH
          pcf_type: null
          type_hint: null
        - name: OpenInputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenOutputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_PCTL_QMGR
          pcf_type: null
          type_hint: null
        - name: MQOTEL_PCTL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQOTEL_PCTL_AUTO
          pcf_type: null
          type_hint: null
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOTEL_TRACE_QMGR
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_OFF
          pcf_type: null
          type_hint: null
        - name: MQOTEL_TRACE_ON
          pcf_type: null
          type_hint: null
        - name: PageSetID
          pcf_type: MQCFIN
          type_hint: int
        - name: ProcessName
          pcf_type: MQCFST
          type_hint: str
        - name: PropertyControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPROP_COMPATIBILITY
          pcf_type: null
          type_hint: null
        - name: MQPROP_NONE
          pcf_type: null
          type_hint: null
        - name: MQPROP_ALL
          pcf_type: null
          type_hint: null
        - name: MQPROP_FORCE_
          pcf_type: null
          type_hint: null
        - name: QDepthHighEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: QDepthHighLimit
          pcf_type: MQCFIN
          type_hint: int
        - name: QDepthLowEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: QDepthLowLimit
          pcf_type: MQCFIN
          type_hint: int
        - name: QDepthMaxEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQEVR_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQEVR_ENABLED
          pcf_type: null
          type_hint: null
        - name: QDesc
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: QServiceInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: QServiceIntervalEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSIE_HIGH
          pcf_type: null
          type_hint: null
        - name: MQQSIE_OK
          pcf_type: null
          type_hint: null
        - name: MQQSIE_NONE
          pcf_type: null
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQT_ALIAS
          pcf_type: null
          type_hint: null
        - name: MQQT_CLUSTER
          pcf_type: null
          type_hint: null
        - name: MQQT_LOCAL
          pcf_type: null
          type_hint: null
        - name: MQQT_REMOTE
          pcf_type: null
          type_hint: null
        - name: MQQT_MODEL
          pcf_type: null
          type_hint: null
        - name: QueueAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_LOW
          pcf_type: null
          type_hint: null
        - name: MQMON_MEDIUM
          pcf_type: null
          type_hint: null
        - name: MQMON_HIGH
          pcf_type: null
          type_hint: null
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMON_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQMON_OFF
          pcf_type: null
          type_hint: null
        - name: MQMON_ON
          pcf_type: null
          type_hint: null
        - name: RemoteQMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: RemoteQName
          pcf_type: MQCFST
          type_hint: str
        - name: RetentionInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: Scope
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCO_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSCO_CELL
          pcf_type: null
          type_hint: null
        - name: Shareability
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQA_SHAREABLE
          pcf_type: null
          type_hint: null
        - name: MQQA_NOT_SHAREABLE
          pcf_type: null
          type_hint: null
        - name: StorageClass
          pcf_type: MQCFST
          type_hint: str
        - name: StreamQ
          pcf_type: MQCFST
          type_hint: str
        - name: StreamQService
          pcf_type: MQCFIN
          type_hint: int
        - name: MQST_BEST_EFFORT
          pcf_type: null
          type_hint: null
        - name: MQST_MUST_DUP
          pcf_type: null
          type_hint: null
        - name: TpipeNames
          pcf_type: MQCFSL
          type_hint: str
        - name: TriggerControl
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTC_OFF
          pcf_type: null
          type_hint: null
        - name: MQTC_ON
          pcf_type: null
          type_hint: null
        - name: TriggerData
          pcf_type: MQCFST
          type_hint: str
        - name: TriggerDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerMsgPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTT_NONE
          pcf_type: null
          type_hint: null
        - name: MQTT_FIRST
          pcf_type: null
          type_hint: null
        - name: MQTT_EVERY
          pcf_type: null
          type_hint: null
        - name: MQTT_DEPTH
          pcf_type: null
          type_hint: null
        - name: Usage
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUS_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQUS_TRANSMISSION
          pcf_type: null
          type_hint: null
        - name: XmitQName
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - BackoutRequeueName
          - BackoutThreshold
          - BaseQName
          - CFStructure
          - CLWLQueuePriority
          - CLWLQueueRank
          - CLWLUseQ
          - CapExpiry
          - ClusterChannelName
          - ClusterDate
          - ClusterName
          - ClusterNamelist
          - ClusterQType
          - ClusterTime
          - CreationDate
          - CreationTime
          - CurrentQDepth
          - Custom
          - DefBind
          - DefInputOpenOption
          - DefPersistence
          - DefPriority
          - DefReadAhead
          - DefaultPutResponse
          - DefinitionType
          - DistLists
          - HardenGetBackout
          - ImageRecoverQueue
          - IndexType
          - InhibitGet
          - InhibitPut
          - InitiationQName
          - MQBND_BIND_NOT_FIXED
          - MQBND_BIND_ON_GROUP
          - MQBND_BIND_ON_OPEN
          - MQCLWL_USEQ_ANY
          - MQCLWL_USEQ_AS_Q_MGR
          - MQCLWL_USEQ_LOCAL
          - MQCQT_ALIAS_Q
          - MQCQT_LOCAL_Q
          - MQCQT_Q_MGR_ALIAS
          - MQCQT_REMOTE_Q
          - MQDL_NOT_SUPPORTED
          - MQDL_SUPPORTED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQIMGRCOV_AS_Q_MGR
          - MQIMGRCOV_NO
          - MQIMGRCOV_YES
          - MQIT_CORREL_ID
          - MQIT_GROUP_ID
          - MQIT_MSG_ID
          - MQIT_MSG_TOKEN
          - MQIT_NONE
          - MQMDS_FIFO
          - MQMDS_PRIORITY
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_ON
          - MQMON_ON
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQNPM_CLASS_HIGH
          - MQNPM_CLASS_NORMAL
          - MQOO_INPUT_EXCLUSIVE
          - MQOO_INPUT_SHARED
          - MQOTEL_PCTL_AUTO
          - MQOTEL_PCTL_MANUAL
          - MQOTEL_PCTL_QMGR
          - MQOTEL_TRACE_OFF
          - MQOTEL_TRACE_ON
          - MQOTEL_TRACE_QMGR
          - MQPER_NOT_PERSISTENT
          - MQPER_PERSISTENT
          - MQPROP_ALL
          - MQPROP_COMPATIBILITY
          - MQPROP_FORCE_
          - MQPROP_NONE
          - MQPRT_ASYNC_RESPONSE
          - MQPRT_SYNC_RESPONSE
          - MQQA_BACKOUT_HARDENED
          - MQQA_BACKOUT_NOT_HARDENED
          - MQQA_GET_ALLOWED
          - MQQA_GET_INHIBITED
          - MQQA_NOT_SHAREABLE
          - MQQA_PUT_ALLOWED
          - MQQA_PUT_INHIBITED
          - MQQA_SHAREABLE
          - MQQDT_PERMANENT_DYNAMIC
          - MQQDT_PREDEFINED
          - MQQDT_SHARED_DYNAMIC
          - MQQDT_TEMPORARY_DYNAMIC
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSIE_HIGH
          - MQQSIE_NONE
          - MQQSIE_OK
          - MQQT_ALIAS
          - MQQT_CLUSTER
          - MQQT_LOCAL
          - MQQT_MODEL
          - MQQT_REMOTE
          - MQREADA_DISABLED
          - MQREADA_NO
          - MQREADA_YES
          - MQSCO_CELL
          - MQSCO_Q_MGR
          - MQST_BEST_EFFORT
          - MQST_MUST_DUP
          - MQTC_OFF
          - MQTC_ON
          - MQTT_DEPTH
          - MQTT_EVERY
          - MQTT_FIRST
          - MQTT_NONE
          - MQUS_NORMAL
          - MQUS_TRANSMISSION
          - MaxMsgLength
          - MaxQDepth
          - MsgDeliverySequence
          - NonPersistentMessageClass
          - OTELPropagationControl
          - OTELTrace
          - OpenInputCount
          - OpenOutputCount
          - PageSetID
          - ProcessName
          - PropertyControl
          - QDepthHighEvent
          - QDepthHighLimit
          - QDepthLowEvent
          - QDepthLowLimit
          - QDepthMaxEvent
          - QDesc
          - QMgrIdentifier
          - QMgrName
          - QName
          - QSGDisposition
          - QServiceInterval
          - QServiceIntervalEvent
          - QType
          - QueueAccounting
          - QueueMonitoring
          - QueueStatistics
          - RemoteQMgrName
          - RemoteQName
          - RetentionInterval
          - Returned
          - Scope
          - Shareability
          - StorageClass
          - StreamQ
          - StreamQService
          - TpipeNames
          - TriggerControl
          - TriggerData
          - TriggerDepth
          - TriggerMsgPriority
          - TriggerType
          - Usage
          - XmitQName
      response:
        suggested:
          CAPEXPRY: CapExpiry
          CLWLUSEQ: CLWLUseQ
          CUSTOM: Custom
          DEFBIND: DefBind
          INDXTYPE: IndexType
          MAXDEPTH: MaxQDepth
          OTELTRAC: OTELTrace
          QTYPE: QType
          SCOPE: Scope
          STREAMQ: StreamQ
          USAGE: Usage
        ambiguous:
          BOQNAME:
            - QName
            - BaseQName
          CLUSDATE:
            - ClusterDate
          CLUSTIME:
            - ClusterTime
          QREMOTE:
            - MQQT_REMOTE
          RNAME:
            - QName
          RQMNAME:
            - QName
          TRIGDATA:
            - TriggerData
          TRIGTYPE:
            - TriggerType
          TYPE:
            - QType
        unmapped:
          - ACCTQ
          - ALL
          - ALTDATE
          - ALTTIME
          - BOTHRESH
          - CLCHNAME
          - CLUSINFO
          - CLUSNL
          - CLUSQMGR
          - CLUSQT
          - CLUSTER
          - CLWLPRTY
          - CLWLRANK
          - CMDSCOPE
          - COMPAT
          - COPY
          - CRDATE
          - CRTIME
          - CURDEPTH
          - DEFPRESP
          - DEFPRTY
          - DEFPSIST
          - DEFREADA
          - DEFSOPT
          - DEFTYPE
          - DESCR
          - DISTL
          - EQ
          - FORCE
          - GE
          - GET
          - GROUP
          - GT
          - HARDENBO
          - IMGRCOVQ
          - INITQ
          - IPPROCS
          - LE
          - LIVE
          - LK
          - LT
          - MAXFSIZE
          - MAXMSGL
          - MONQ
          - MSGDLVSQ
          - NE
          - NL
          - NONE
          - NPMCLASS
          - OPPROCS
          - OTELPCTL
          - PRIVATE
          - PROCESS
          - PROPCTL
          - PSID
          - PUT
          - QALIAS
          - QDEPTHHI
          - QDEPTHLO
          - QDPHIEV
          - QDPLOEV
          - QDPMAXEV
          - QLOCAL
          - QMGR
          - QMID
          - QMODEL
          - QSGDISP
          - QSVCIEV
          - QSVCINT
          - RETINTVL
          - SHARE
          - SHARED
          - STATQ
          - STGCLASS
          - STRMQOS
          - TARGET
          - TARGTYPE
          - TPIPE
          - TRIGDPTH
          - TRIGGER
          - TRIGMPRI
          - WHERE
          - XMITQ
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - BackoutRequeueName
          - BackoutThreshold
          - BaseQName
          - CFStructure
          - CLWLQueuePriority
          - CLWLQueueRank
          - ClusterChannelName
          - ClusterDate
          - ClusterName
          - ClusterNamelist
          - ClusterQType
          - ClusterTime
          - CreationDate
          - CreationTime
          - CurrentQDepth
          - DefInputOpenOption
          - DefPersistence
          - DefPriority
          - DefReadAhead
          - DefaultPutResponse
          - DefinitionType
          - DistLists
          - HardenGetBackout
          - ImageRecoverQueue
          - InhibitGet
          - InhibitPut
          - InitiationQName
          - MQBND_BIND_NOT_FIXED
          - MQBND_BIND_ON_GROUP
          - MQBND_BIND_ON_OPEN
          - MQCLWL_USEQ_ANY
          - MQCLWL_USEQ_AS_Q_MGR
          - MQCLWL_USEQ_LOCAL
          - MQCQT_ALIAS_Q
          - MQCQT_LOCAL_Q
          - MQCQT_Q_MGR_ALIAS
          - MQCQT_REMOTE_Q
          - MQDL_NOT_SUPPORTED
          - MQDL_SUPPORTED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_DISABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQEVR_ENABLED
          - MQIMGRCOV_AS_Q_MGR
          - MQIMGRCOV_NO
          - MQIMGRCOV_YES
          - MQIT_CORREL_ID
          - MQIT_GROUP_ID
          - MQIT_MSG_ID
          - MQIT_MSG_TOKEN
          - MQIT_NONE
          - MQMDS_FIFO
          - MQMDS_PRIORITY
          - MQMON_HIGH
          - MQMON_LOW
          - MQMON_MEDIUM
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_OFF
          - MQMON_ON
          - MQMON_ON
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQMON_Q_MGR
          - MQNPM_CLASS_HIGH
          - MQNPM_CLASS_NORMAL
          - MQOO_INPUT_EXCLUSIVE
          - MQOO_INPUT_SHARED
          - MQOTEL_PCTL_AUTO
          - MQOTEL_PCTL_MANUAL
          - MQOTEL_PCTL_QMGR
          - MQOTEL_TRACE_OFF
          - MQOTEL_TRACE_ON
          - MQOTEL_TRACE_QMGR
          - MQPER_NOT_PERSISTENT
          - MQPER_PERSISTENT
          - MQPROP_ALL
          - MQPROP_COMPATIBILITY
          - MQPROP_FORCE_
          - MQPROP_NONE
          - MQPRT_ASYNC_RESPONSE
          - MQPRT_SYNC_RESPONSE
          - MQQA_BACKOUT_HARDENED
          - MQQA_BACKOUT_NOT_HARDENED
          - MQQA_GET_ALLOWED
          - MQQA_GET_INHIBITED
          - MQQA_NOT_SHAREABLE
          - MQQA_PUT_ALLOWED
          - MQQA_PUT_INHIBITED
          - MQQA_SHAREABLE
          - MQQDT_PERMANENT_DYNAMIC
          - MQQDT_PREDEFINED
          - MQQDT_SHARED_DYNAMIC
          - MQQDT_TEMPORARY_DYNAMIC
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSIE_HIGH
          - MQQSIE_NONE
          - MQQSIE_OK
          - MQQT_ALIAS
          - MQQT_CLUSTER
          - MQQT_LOCAL
          - MQQT_MODEL
          - MQQT_REMOTE
          - MQREADA_DISABLED
          - MQREADA_NO
          - MQREADA_YES
          - MQSCO_CELL
          - MQSCO_Q_MGR
          - MQST_BEST_EFFORT
          - MQST_MUST_DUP
          - MQTC_OFF
          - MQTC_ON
          - MQTT_DEPTH
          - MQTT_EVERY
          - MQTT_FIRST
          - MQTT_NONE
          - MQUS_NORMAL
          - MQUS_TRANSMISSION
          - MaxMsgLength
          - MsgDeliverySequence
          - NonPersistentMessageClass
          - OTELPropagationControl
          - OpenInputCount
          - OpenOutputCount
          - PageSetID
          - ProcessName
          - PropertyControl
          - QDepthHighEvent
          - QDepthHighLimit
          - QDepthLowEvent
          - QDepthLowLimit
          - QDepthMaxEvent
          - QDesc
          - QMgrIdentifier
          - QMgrName
          - QName
          - QSGDisposition
          - QServiceInterval
          - QServiceIntervalEvent
          - QueueAccounting
          - QueueMonitoring
          - QueueStatistics
          - RemoteQMgrName
          - RemoteQName
          - RetentionInterval
          - Returned
          - Shareability
          - StorageClass
          - StreamQService
          - TpipeNames
          - TriggerControl
          - TriggerData
          - TriggerDepth
          - TriggerMsgPriority
          - TriggerType
          - XmitQName
    notes:
      - display-parameter-descriptions-treated-as-output
      - display-requested-parameters-treated-as-output
  - mqsc:
      name: DISPLAY SBSTATUS
      href: SSFKSJ_9.4.0/refadmin/q086280_.html
      positional_parameters:
        - (generic-name)
        - string
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_SB_STATUS
      request_href: SSFKSJ_9.4.0/refadmin/q087880_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: ByteStringFilterCommand
          pcf_type: MQCFBF
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: OpenType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSOT_ALL
          pcf_type: null
          type_hint: null
        - name: MQQSOT_INPUT
          pcf_type: null
          type_hint: null
        - name: MQQSOT_OUTPUT
          pcf_type: null
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: MQIACF_ALL
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_MEDIA_LOG_EXTENT_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_CURRENT_Q_DEPTH
          pcf_type: null
          type_hint: null
        - name: MQIA_MONITORING_Q
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_INPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_OUTPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIACF_HANDLE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_MONITORING
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_MAX_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_Q_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OLDEST_MSG_AGE
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_TIME_INDICATOR
          pcf_type: null
          type_hint: null
        - name: MQIACF_UNCOMMITTED_MSGS
          pcf_type: null
          type_hint: null
        - name: MQBACF_EXTERNAL_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_Q_MGR_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_APPL_TAG
          pcf_type: null
          type_hint: null
        - name: MQCACF_ASID
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSB_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSTID
          pcf_type: null
          type_hint: null
        - name: MQCACF_TASK_NUMBER
          pcf_type: null
          type_hint: null
        - name: MQCACF_TRANSACTION_ID
          pcf_type: null
          type_hint: null
        - name: MQCACF_USER_IDENTIFIER
          pcf_type: null
          type_hint: null
        - name: MQCACH_CHANNEL_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACH_CONNECTION_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_APPL_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INPUT_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OPTIONS
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_SET
          pcf_type: null
          type_hint: null
        - name: MQIACF_PROCESS_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_ASYNC_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_THREAD_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_UOW_TYPE
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_HANDLE
          pcf_type: null
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_Q_TYPE_ERROR
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ByteStringFilterCommand
          - CommandScope
          - IntegerFilterCommand
          - MQBACF_EXTERNAL_UOW_ID
          - MQBACF_Q_MGR_UOW_ID
          - MQCACF_APPL_TAG
          - MQCACF_ASID
          - MQCACF_LAST_GET_DATE
          - MQCACF_LAST_GET_TIME
          - MQCACF_LAST_PUT_DATE
          - MQCACF_LAST_PUT_TIME
          - MQCACF_MEDIA_LOG_EXTENT_NAME
          - MQCACF_PSB_NAME
          - MQCACF_PSTID
          - MQCACF_TASK_NUMBER
          - MQCACF_TRANSACTION_ID
          - MQCACF_USER_IDENTIFIER
          - MQCACH_CHANNEL_NAME
          - MQCACH_CONNECTION_NAME
          - MQCA_Q_NAME
          - MQCA_Q_NAME
          - MQIACF_ALL
          - MQIACF_ASYNC_STATE
          - MQIACF_CUR_MAX_FILE_SIZE
          - MQIACF_CUR_Q_FILE_SIZE
          - MQIACF_HANDLE_STATE
          - MQIACF_MONITORING
          - MQIACF_OLDEST_MSG_AGE
          - MQIACF_OPEN_BROWSE
          - MQIACF_OPEN_INPUT_TYPE
          - MQIACF_OPEN_INQUIRE
          - MQIACF_OPEN_OPTIONS
          - MQIACF_OPEN_OUTPUT
          - MQIACF_OPEN_SET
          - MQIACF_PROCESS_ID
          - MQIACF_Q_HANDLE
          - MQIACF_Q_STATUS
          - MQIACF_Q_TIME_INDICATOR
          - MQIACF_THREAD_ID
          - MQIACF_UNCOMMITTED_MSGS
          - MQIACF_UOW_TYPE
          - MQIA_APPL_TYPE
          - MQIA_CURRENT_Q_DEPTH
          - MQIA_MONITORING_Q
          - MQIA_OPEN_INPUT_COUNT
          - MQIA_OPEN_OUTPUT_COUNT
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSOT_ALL
          - MQQSOT_INPUT
          - MQQSOT_OUTPUT
          - MQRCCF_Q_TYPE_ERROR
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
          - Reason
          - StatusType
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY SECURITY
      href: SSFKSJ_9.4.0/refadmin/q086290_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_SECURITY
      request_href: SSFKSJ_9.4.0/refadmin/q087910_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087910_.html
      request_parameters:
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: SecurityInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SecuritySwitch
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSECSW_SUBSYSTEM
          pcf_type: null
          type_hint: null
        - name: MQSECSW_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSECSW_QSG
          pcf_type: null
          type_hint: null
        - name: MQSECSW_CONNECTION
          pcf_type: null
          type_hint: null
        - name: MQSECSW_COMMAND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQSECSW_ALTERNATE_USER
          pcf_type: null
          type_hint: null
        - name: MQSECSW_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQSECSW_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQSECSW_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQSECSW_Q
          pcf_type: null
          type_hint: null
        - name: MQSECSW_COMMAND_RESOURCES
          pcf_type: null
          type_hint: null
        - name: SecuritySwitchProfile
          pcf_type: MQCFST
          type_hint: str
        - name: SecuritySwitchSetting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSECSW_ON_FOUND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_OFF_FOUND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_ON_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_OFF_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_OFF_ERROR
          pcf_type: null
          type_hint: null
        - name: MQSECSW_ON_OVERRIDDEN
          pcf_type: null
          type_hint: null
        - name: SecurityTimeout
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: SecurityInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SecuritySwitch
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSECSW_SUBSYSTEM
          pcf_type: null
          type_hint: null
        - name: MQSECSW_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSECSW_QSG
          pcf_type: null
          type_hint: null
        - name: MQSECSW_CONNECTION
          pcf_type: null
          type_hint: null
        - name: MQSECSW_COMMAND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQSECSW_ALTERNATE_USER
          pcf_type: null
          type_hint: null
        - name: MQSECSW_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQSECSW_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQSECSW_TOPIC
          pcf_type: null
          type_hint: null
        - name: MQSECSW_Q
          pcf_type: null
          type_hint: null
        - name: MQSECSW_COMMAND_RESOURCES
          pcf_type: null
          type_hint: null
        - name: SecuritySwitchProfile
          pcf_type: MQCFST
          type_hint: str
        - name: SecuritySwitchSetting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSECSW_ON_FOUND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_OFF_FOUND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_ON_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_OFF_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQSECSW_OFF_ERROR
          pcf_type: null
          type_hint: null
        - name: MQSECSW_ON_OVERRIDDEN
          pcf_type: null
          type_hint: null
        - name: SecurityTimeout
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - MQSECSW_ALTERNATE_USER
          - MQSECSW_COMMAND
          - MQSECSW_COMMAND_RESOURCES
          - MQSECSW_CONNECTION
          - MQSECSW_CONTEXT
          - MQSECSW_NAMELIST
          - MQSECSW_OFF_ERROR
          - MQSECSW_OFF_FOUND
          - MQSECSW_OFF_NOT_FOUND
          - MQSECSW_ON_FOUND
          - MQSECSW_ON_NOT_FOUND
          - MQSECSW_ON_OVERRIDDEN
          - MQSECSW_PROCESS
          - MQSECSW_Q
          - MQSECSW_QSG
          - MQSECSW_Q_MGR
          - MQSECSW_SUBSYSTEM
          - MQSECSW_TOPIC
          - Returned
          - SecurityInterval
          - SecuritySwitch
          - SecuritySwitchProfile
          - SecuritySwitchSetting
          - SecurityTimeout
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - MQSECSW_ALTERNATE_USER
          - MQSECSW_COMMAND
          - MQSECSW_COMMAND_RESOURCES
          - MQSECSW_CONNECTION
          - MQSECSW_CONTEXT
          - MQSECSW_NAMELIST
          - MQSECSW_OFF_ERROR
          - MQSECSW_OFF_FOUND
          - MQSECSW_OFF_NOT_FOUND
          - MQSECSW_ON_FOUND
          - MQSECSW_ON_NOT_FOUND
          - MQSECSW_ON_OVERRIDDEN
          - MQSECSW_PROCESS
          - MQSECSW_Q
          - MQSECSW_QSG
          - MQSECSW_Q_MGR
          - MQSECSW_SUBSYSTEM
          - MQSECSW_TOPIC
          - Returned
          - SecurityInterval
          - SecuritySwitch
          - SecuritySwitchProfile
          - SecuritySwitchSetting
          - SecurityTimeout
    notes: []
  - mqsc:
      name: DISPLAY SERVICE
      href: SSFKSJ_9.4.0/refadmin/q086300_.html
      positional_parameters:
        - filter-keyword
        - filter-value
        - generic-service-name
        - operator
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_SERVICE
      request_href: SSFKSJ_9.4.0/refadmin/q087930_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087930_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_TYPE_SERVER
          pcf_type: null
          type_hint: null
        - name: MQSVC_TYPE_COMMAND
          pcf_type: null
          type_hint: null
        - name: StartArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StartCommand
          pcf_type: MQCFST
          type_hint: str
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR_START
          pcf_type: null
          type_hint: null
        - name: StderrDestination
          pcf_type: MQCFST
          type_hint: str
        - name: StdoutDestination
          pcf_type: MQCFST
          type_hint: str
        - name: StopArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StopCommand
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_TYPE_SERVER
          pcf_type: null
          type_hint: null
        - name: MQSVC_TYPE_COMMAND
          pcf_type: null
          type_hint: null
        - name: StartArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StartCommand
          pcf_type: MQCFST
          type_hint: str
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSVC_CONTROL_MANUAL
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQSVC_CONTROL_Q_MGR_START
          pcf_type: null
          type_hint: null
        - name: StderrDestination
          pcf_type: MQCFST
          type_hint: str
        - name: StdoutDestination
          pcf_type: MQCFST
          type_hint: str
        - name: StopArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StopCommand
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR_START
          - MQSVC_TYPE_COMMAND
          - MQSVC_TYPE_SERVER
          - Returned
          - ServiceDesc
          - ServiceName
          - ServiceType
          - StartArguments
          - StartCommand
          - StartMode
          - StderrDestination
          - StdoutDestination
          - StopArguments
          - StopCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - MQSVC_CONTROL_MANUAL
          - MQSVC_CONTROL_Q_MGR
          - MQSVC_CONTROL_Q_MGR_START
          - MQSVC_TYPE_COMMAND
          - MQSVC_TYPE_SERVER
          - Returned
          - ServiceDesc
          - ServiceName
          - ServiceType
          - StartArguments
          - StartCommand
          - StartMode
          - StderrDestination
          - StdoutDestination
          - StopArguments
          - StopCommand
    notes: []
  - mqsc:
      name: DISPLAY SMDS
      href: SSFKSJ_9.4.0/refadmin/q086310_.html
      positional_parameters:
        - filter-keyword
        - filter-value
        - operator
        - qmgr-name
        - structure-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_SMDS
      request_href: SSFKSJ_9.4.0/refadmin/q087970_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087970_.html
      request_parameters:
        - name: SMDS
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: DSBUFS
          pcf_type: MQCFIN
          type_hint: int
        - name: DSEXPAND
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDSE_YES
          pcf_type: null
          type_hint: null
        - name: MQDSE_NO
          pcf_type: null
          type_hint: null
        - name: MQDSE_DEFAULT
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: SMDS
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: DSBUFS
          pcf_type: MQCFIN
          type_hint: int
        - name: DSEXPAND
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDSE_YES
          pcf_type: null
          type_hint: null
        - name: MQDSE_NO
          pcf_type: null
          type_hint: null
        - name: MQDSE_DEFAULT
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFStrucName
          - DSBUFS
          - DSEXPAND
          - MQDSE_DEFAULT
          - MQDSE_NO
          - MQDSE_YES
          - SMDS
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFStrucName
          - DSBUFS
          - DSEXPAND
          - MQDSE_DEFAULT
          - MQDSE_NO
          - MQDSE_YES
          - SMDS
    notes: []
  - mqsc:
      name: DISPLAY SMDSCONN
      href: SSFKSJ_9.4.0/refadmin/q086320_.html
      positional_parameters:
        - qmgr-name
        - structure-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_SMDSCONN
      request_href: SSFKSJ_9.4.0/refadmin/q087990_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087990_.html
      request_parameters:
        - name: SMDSCONN
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: Avail
          pcf_type: MQCFIN
          type_hint: int
        - name: MQS_AVAIL_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQS_AVAIL_ERROR
          pcf_type: null
          type_hint: null
        - name: MQS_AVAIL_STOPPED
          pcf_type: null
          type_hint: null
        - name: ExpandST
          pcf_type: MQCFIN
          type_hint: int
        - name: MQS_EXPANDST_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQS_EXPANDST_FAILED
          pcf_type: null
          type_hint: null
        - name: MQS_EXPANDST_MAXIMUM
          pcf_type: null
          type_hint: null
        - name: OpenMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQS_OPENMODE_NONE
          pcf_type: null
          type_hint: null
        - name: MQS_OPENMODE_READONLY
          pcf_type: null
          type_hint: null
        - name: MQS_OPENMODE_UPDATE
          pcf_type: null
          type_hint: null
        - name: MQS_OPENMODE_RECOVERY
          pcf_type: null
          type_hint: null
        - name: Status
          pcf_type: MQCFIN
          type_hint: int
        - name: MQS_STATUS_CLOSED
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_CLOSING
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_OPENING
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_OPEN
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_NOTENABLED
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_ALLOCFAIL
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_OPENFAIL
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_STGFAIL
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_DATAFAIL
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: SMDSCONN
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: Avail
          pcf_type: MQCFIN
          type_hint: int
        - name: MQS_AVAIL_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQS_AVAIL_ERROR
          pcf_type: null
          type_hint: null
        - name: MQS_AVAIL_STOPPED
          pcf_type: null
          type_hint: null
        - name: ExpandST
          pcf_type: MQCFIN
          type_hint: int
        - name: MQS_EXPANDST_NORMAL
          pcf_type: null
          type_hint: null
        - name: MQS_EXPANDST_FAILED
          pcf_type: null
          type_hint: null
        - name: MQS_EXPANDST_MAXIMUM
          pcf_type: null
          type_hint: null
        - name: OpenMode
          pcf_type: MQCFIN
          type_hint: int
        - name: MQS_OPENMODE_NONE
          pcf_type: null
          type_hint: null
        - name: MQS_OPENMODE_READONLY
          pcf_type: null
          type_hint: null
        - name: MQS_OPENMODE_UPDATE
          pcf_type: null
          type_hint: null
        - name: MQS_OPENMODE_RECOVERY
          pcf_type: null
          type_hint: null
        - name: Status
          pcf_type: MQCFIN
          type_hint: int
        - name: MQS_STATUS_CLOSED
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_CLOSING
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_OPENING
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_OPEN
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_NOTENABLED
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_ALLOCFAIL
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_OPENFAIL
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_STGFAIL
          pcf_type: null
          type_hint: null
        - name: MQS_STATUS_DATAFAIL
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Avail
          - CFStrucName
          - ExpandST
          - MQS_AVAIL_ERROR
          - MQS_AVAIL_NORMAL
          - MQS_AVAIL_STOPPED
          - MQS_EXPANDST_FAILED
          - MQS_EXPANDST_MAXIMUM
          - MQS_EXPANDST_NORMAL
          - MQS_OPENMODE_NONE
          - MQS_OPENMODE_READONLY
          - MQS_OPENMODE_RECOVERY
          - MQS_OPENMODE_UPDATE
          - MQS_STATUS_ALLOCFAIL
          - MQS_STATUS_CLOSED
          - MQS_STATUS_CLOSING
          - MQS_STATUS_DATAFAIL
          - MQS_STATUS_NOTENABLED
          - MQS_STATUS_OPEN
          - MQS_STATUS_OPENFAIL
          - MQS_STATUS_OPENING
          - MQS_STATUS_STGFAIL
          - OpenMode
          - SMDSCONN
          - Status
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Avail
          - CFStrucName
          - ExpandST
          - MQS_AVAIL_ERROR
          - MQS_AVAIL_NORMAL
          - MQS_AVAIL_STOPPED
          - MQS_EXPANDST_FAILED
          - MQS_EXPANDST_MAXIMUM
          - MQS_EXPANDST_NORMAL
          - MQS_OPENMODE_NONE
          - MQS_OPENMODE_READONLY
          - MQS_OPENMODE_RECOVERY
          - MQS_OPENMODE_UPDATE
          - MQS_STATUS_ALLOCFAIL
          - MQS_STATUS_CLOSED
          - MQS_STATUS_CLOSING
          - MQS_STATUS_DATAFAIL
          - MQS_STATUS_NOTENABLED
          - MQS_STATUS_OPEN
          - MQS_STATUS_OPENFAIL
          - MQS_STATUS_OPENING
          - MQS_STATUS_STGFAIL
          - OpenMode
          - SMDSCONN
          - Status
    notes: []
  - mqsc:
      name: DISPLAY STGCLASS
      href: SSFKSJ_9.4.0/refadmin/q086330_.html
      positional_parameters:
        - (generic-class)
        - filter-keyword
        - filter-value
        - integer
        - operator
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_STGCLASS
      request_href: SSFKSJ_9.4.0/refadmin/q088010_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: PageSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: PassTicketApplication
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_GROUP
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: StorageClassDesc
          pcf_type: MQCFST
          type_hint: str
        - name: StgClassName
          pcf_type: MQCFST
          type_hint: str
        - name: XCFGroupName
          pcf_type: MQCFST
          type_hint: str
        - name: XCFMemberName
          pcf_type: MQCFST
          type_hint: str
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - MQQSGD_COPY
          - MQQSGD_GROUP
          - MQQSGD_Q_MGR
          - PageSetId
          - PassTicketApplication
          - QSGDisposition
          - Returned
          - StgClassName
          - StorageClassDesc
          - XCFGroupName
          - XCFMemberName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY SUB
      href: SSFKSJ_9.4.0/refadmin/q086340_.html
      positional_parameters:
        - (generic-name)
        - filter-keyword
        - filter-value
        - integer
        - operator
        - qmgr-name
        - string
      input_parameters: []
      output_parameters:
        - CMDSCOPE
        - DEST
        - DESTCLAS
        - DESTCORL
        - EXPIRY
        - PSPROP
        - PUBACCT
        - PUBAPPID
        - PUBPRTY
        - REQONLY
        - SELECTOR
        - SUBLEVEL
        - SUBSCOPE
        - SUBUSER
        - TOPICOBJ
        - USERDATA
        - VARUSER
        - WSCHEMA
      section_sources:
        'Parameter descriptions for DISPLAY SUB':
          - CMDSCOPE
          - DEST
          - DESTCLAS
          - DESTCORL
          - EXPIRY
          - PSPROP
          - PUBACCT
          - PUBAPPID
          - PUBPRTY
          - REQONLY
          - SELECTOR
          - SUBLEVEL
          - SUBSCOPE
          - SUBUSER
          - TOPICOBJ
          - USERDATA
          - VARUSER
          - WSCHEMA
    pcf:
      command: MQCMD_INQUIRE_SUB
      request_href: SSFKSJ_9.4.0/refadmin/q088040_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: SubName
          pcf_type: MQCFST
          type_hint: str
        - name: SubId
          pcf_type: MQCFBS
          type_hint: bytes
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: Durable
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSUB_DURABLE_YES
          pcf_type: null
          type_hint: null
        - name: MQSUB_DURABLE_NO
          pcf_type: null
          type_hint: null
        - name: MQSUB_DURABLE_ALL
          pcf_type: null
          type_hint: null
        - name: SubscriptionAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: MQIACF_ALL
          pcf_type: null
          type_hint: null
        - name: MQIACF_SUMMARY
          pcf_type: null
          type_hint: null
        - name: MQBACF_ACCOUNTING_TOKEN
          pcf_type: null
          type_hint: null
        - name: MQBACF_DESTINATION_CORREL_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_SUB_ID
          pcf_type: null
          type_hint: null
        - name: MQCA_ALTERATION_DATE
          pcf_type: null
          type_hint: null
        - name: MQCA_ALTERATION_TIME
          pcf_type: null
          type_hint: null
        - name: MQCA_CREATION_DATE
          pcf_type: null
          type_hint: null
        - name: MQCA_CREATION_TIME
          pcf_type: null
          type_hint: null
        - name: MQCA_TOPIC_STRING
          pcf_type: null
          type_hint: null
        - name: MQCACF_APPL_IDENTITY_DATA
          pcf_type: null
          type_hint: null
        - name: MQCACF_DESTINATION
          pcf_type: null
          type_hint: null
        - name: MQCACF_DESTINATION_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQCACF_SUB_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_SUB_SELECTOR
          pcf_type: null
          type_hint: null
        - name: MQCACF_SUB_USER_DATA
          pcf_type: null
          type_hint: null
        - name: MQCACF_SUB_USER_ID
          pcf_type: null
          type_hint: null
        - name: MQCA_TOPIC_NAME
          pcf_type: null
          type_hint: null
        - name: MQIACF_DESTINATION_CLASS
          pcf_type: null
          type_hint: null
        - name: MQIACF_DURABLE_SUBSCRIPTION
          pcf_type: null
          type_hint: null
        - name: MQIACF_EXPIRY
          pcf_type: null
          type_hint: null
        - name: MQIACF_PUB_PRIORITY
          pcf_type: null
          type_hint: null
        - name: MQIACF_PUBSUB_PROPERTIES
          pcf_type: null
          type_hint: null
        - name: MQIACF_REQUEST_ONLY
          pcf_type: null
          type_hint: null
        - name: MQIACF_SUB_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_SUBSCRIPTION_SCOPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_SUB_LEVEL
          pcf_type: null
          type_hint: null
        - name: MQIACF_VARIABLE_USER_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_WILDCARD_SCHEMA
          pcf_type: null
          type_hint: null
        - name: MQIA_DISPLAY_TYPE
          pcf_type: null
          type_hint: null
        - name: SubscriptionType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSUBTYPE_ADMIN
          pcf_type: null
          type_hint: null
        - name: MQSUBTYPE_ALL
          pcf_type: null
          type_hint: null
        - name: MQSUBTYPE_API
          pcf_type: null
          type_hint: null
        - name: MQSUBTYPE_PROXY
          pcf_type: null
          type_hint: null
        - name: MQSUBTYPE_USER
          pcf_type: null
          type_hint: null
        - name: DisplayType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDOPT_RESOLVED
          pcf_type: null
          type_hint: null
        - name: MQDOPT_DEFINED
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - DisplayType
          - Durable
          - MQBACF_ACCOUNTING_TOKEN
          - MQBACF_DESTINATION_CORREL_ID
          - MQBACF_SUB_ID
          - MQCACF_APPL_IDENTITY_DATA
          - MQCACF_DESTINATION
          - MQCACF_DESTINATION_Q_MGR
          - MQCACF_SUB_NAME
          - MQCACF_SUB_SELECTOR
          - MQCACF_SUB_USER_DATA
          - MQCACF_SUB_USER_ID
          - MQCA_ALTERATION_DATE
          - MQCA_ALTERATION_TIME
          - MQCA_CREATION_DATE
          - MQCA_CREATION_TIME
          - MQCA_TOPIC_NAME
          - MQCA_TOPIC_STRING
          - MQDOPT_DEFINED
          - MQDOPT_RESOLVED
          - MQIACF_ALL
          - MQIACF_DESTINATION_CLASS
          - MQIACF_DURABLE_SUBSCRIPTION
          - MQIACF_EXPIRY
          - MQIACF_PUBSUB_PROPERTIES
          - MQIACF_PUB_PRIORITY
          - MQIACF_REQUEST_ONLY
          - MQIACF_SUBSCRIPTION_SCOPE
          - MQIACF_SUB_LEVEL
          - MQIACF_SUB_TYPE
          - MQIACF_SUMMARY
          - MQIACF_VARIABLE_USER_ID
          - MQIACF_WILDCARD_SCHEMA
          - MQIA_DISPLAY_TYPE
          - MQSUBTYPE_ADMIN
          - MQSUBTYPE_ALL
          - MQSUBTYPE_API
          - MQSUBTYPE_PROXY
          - MQSUBTYPE_USER
          - MQSUB_DURABLE_ALL
          - MQSUB_DURABLE_NO
          - MQSUB_DURABLE_YES
          - SubId
          - SubName
          - SubscriptionAttrs
          - SubscriptionType
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped:
          - CMDSCOPE
          - DEST
          - DESTCLAS
          - DESTCORL
          - EXPIRY
          - PSPROP
          - PUBACCT
          - PUBAPPID
          - PUBPRTY
          - REQONLY
          - SELECTOR
          - SUBLEVEL
          - SUBSCOPE
          - SUBUSER
          - TOPICOBJ
          - USERDATA
          - VARUSER
          - WSCHEMA
        pcf_unmapped: []
    notes:
      - display-parameter-descriptions-treated-as-output
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY SVSTATUS
      href: SSFKSJ_9.4.0/refadmin/q086350_.html
      positional_parameters:
        - filter-keyword
        - filter-value
        - generic-service-name
        - operator
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_SV_STATUS
      request_href: SSFKSJ_9.4.0/refadmin/q087880_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: ByteStringFilterCommand
          pcf_type: MQCFBF
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: OpenType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSOT_ALL
          pcf_type: null
          type_hint: null
        - name: MQQSOT_INPUT
          pcf_type: null
          type_hint: null
        - name: MQQSOT_OUTPUT
          pcf_type: null
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: MQIACF_ALL
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_MEDIA_LOG_EXTENT_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_CURRENT_Q_DEPTH
          pcf_type: null
          type_hint: null
        - name: MQIA_MONITORING_Q
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_INPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_OUTPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIACF_HANDLE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_MONITORING
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_MAX_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_Q_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OLDEST_MSG_AGE
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_TIME_INDICATOR
          pcf_type: null
          type_hint: null
        - name: MQIACF_UNCOMMITTED_MSGS
          pcf_type: null
          type_hint: null
        - name: MQBACF_EXTERNAL_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_Q_MGR_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_APPL_TAG
          pcf_type: null
          type_hint: null
        - name: MQCACF_ASID
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSB_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSTID
          pcf_type: null
          type_hint: null
        - name: MQCACF_TASK_NUMBER
          pcf_type: null
          type_hint: null
        - name: MQCACF_TRANSACTION_ID
          pcf_type: null
          type_hint: null
        - name: MQCACF_USER_IDENTIFIER
          pcf_type: null
          type_hint: null
        - name: MQCACH_CHANNEL_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACH_CONNECTION_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_APPL_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INPUT_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OPTIONS
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_SET
          pcf_type: null
          type_hint: null
        - name: MQIACF_PROCESS_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_ASYNC_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_THREAD_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_UOW_TYPE
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_HANDLE
          pcf_type: null
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_Q_TYPE_ERROR
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ByteStringFilterCommand
          - CommandScope
          - IntegerFilterCommand
          - MQBACF_EXTERNAL_UOW_ID
          - MQBACF_Q_MGR_UOW_ID
          - MQCACF_APPL_TAG
          - MQCACF_ASID
          - MQCACF_LAST_GET_DATE
          - MQCACF_LAST_GET_TIME
          - MQCACF_LAST_PUT_DATE
          - MQCACF_LAST_PUT_TIME
          - MQCACF_MEDIA_LOG_EXTENT_NAME
          - MQCACF_PSB_NAME
          - MQCACF_PSTID
          - MQCACF_TASK_NUMBER
          - MQCACF_TRANSACTION_ID
          - MQCACF_USER_IDENTIFIER
          - MQCACH_CHANNEL_NAME
          - MQCACH_CONNECTION_NAME
          - MQCA_Q_NAME
          - MQCA_Q_NAME
          - MQIACF_ALL
          - MQIACF_ASYNC_STATE
          - MQIACF_CUR_MAX_FILE_SIZE
          - MQIACF_CUR_Q_FILE_SIZE
          - MQIACF_HANDLE_STATE
          - MQIACF_MONITORING
          - MQIACF_OLDEST_MSG_AGE
          - MQIACF_OPEN_BROWSE
          - MQIACF_OPEN_INPUT_TYPE
          - MQIACF_OPEN_INQUIRE
          - MQIACF_OPEN_OPTIONS
          - MQIACF_OPEN_OUTPUT
          - MQIACF_OPEN_SET
          - MQIACF_PROCESS_ID
          - MQIACF_Q_HANDLE
          - MQIACF_Q_STATUS
          - MQIACF_Q_TIME_INDICATOR
          - MQIACF_THREAD_ID
          - MQIACF_UNCOMMITTED_MSGS
          - MQIACF_UOW_TYPE
          - MQIA_APPL_TYPE
          - MQIA_CURRENT_Q_DEPTH
          - MQIA_MONITORING_Q
          - MQIA_OPEN_INPUT_COUNT
          - MQIA_OPEN_OUTPUT_COUNT
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSOT_ALL
          - MQQSOT_INPUT
          - MQQSOT_OUTPUT
          - MQRCCF_Q_TYPE_ERROR
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
          - Reason
          - StatusType
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY SYSTEM
      href: SSFKSJ_9.4.0/refadmin/q086360_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_SYSTEM
      request_href: SSFKSJ_9.4.0/refadmin/q088090_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088090_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: CheckpointCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterCacheType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLCT_STATIC
          pcf_type: null
          type_hint: null
        - name: MQCLCT_DYNAMIC
          pcf_type: null
          type_hint: null
        - name: CodedCharSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandUserId
          pcf_type: MQCFST
          type_hint: str
        - name: DB2BlobTasks
          pcf_type: MQCFIN
          type_hint: int
        - name: DB2Name
          pcf_type: MQCFST
          type_hint: str
        - name: DB2Tasks
          pcf_type: MQCFIN
          type_hint: int
        - name: DSGName
          pcf_type: MQCFST
          type_hint: str
        - name: Exclmsg
          pcf_type: MQCFSL
          type_hint: str
        - name: ExitInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ExitTasks
          pcf_type: MQCFIN
          type_hint: int
        - name: MaximumAcePool
          pcf_type: MQCFIN
          type_hint: int
        - name: MULCCapture
          pcf_type: MQCFIN
          type_hint: int
        - name: OTMADruExit
          pcf_type: MQCFST
          type_hint: str
        - name: OTMAGroup
          pcf_type: MQCFST
          type_hint: str
        - name: OTMAInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: OTMAMember
          pcf_type: MQCFST
          type_hint: str
        - name: OTMSTpipePrefix
          pcf_type: MQCFST
          type_hint: str
        - name: QIndexDefer
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: QSGName
          pcf_type: MQCFST
          type_hint: str
        - name: RESLEVELAudit
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: RoutingCode
          pcf_type: MQCFIL
          type_hint: int
        - name: Service
          pcf_type: MQCFST
          type_hint: str
        - name: SMFAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: SMFAcctIntervalMins
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFAcctIntervalSecs
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: SMFStatsIntervalMins
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFStatsIntervalSecs
          pcf_type: MQCFIN
          type_hint: int
        - name: Splcap
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAP_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQCAP_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: TraceClass
          pcf_type: MQCFIL
          type_hint: int
        - name: TraceSize
          pcf_type: MQCFIN
          type_hint: int
        - name: WLMInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: WLMIntervalUnits
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTIME_UNITS_SEC
          pcf_type: null
          type_hint: null
        - name: MQTIME_UNITS_MINS
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: CheckpointCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterCacheType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLCT_STATIC
          pcf_type: null
          type_hint: null
        - name: MQCLCT_DYNAMIC
          pcf_type: null
          type_hint: null
        - name: CodedCharSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandUserId
          pcf_type: MQCFST
          type_hint: str
        - name: DB2BlobTasks
          pcf_type: MQCFIN
          type_hint: int
        - name: DB2Name
          pcf_type: MQCFST
          type_hint: str
        - name: DB2Tasks
          pcf_type: MQCFIN
          type_hint: int
        - name: DSGName
          pcf_type: MQCFST
          type_hint: str
        - name: Exclmsg
          pcf_type: MQCFSL
          type_hint: str
        - name: ExitInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ExitTasks
          pcf_type: MQCFIN
          type_hint: int
        - name: MaximumAcePool
          pcf_type: MQCFIN
          type_hint: int
        - name: MULCCapture
          pcf_type: MQCFIN
          type_hint: int
        - name: OTMADruExit
          pcf_type: MQCFST
          type_hint: str
        - name: OTMAGroup
          pcf_type: MQCFST
          type_hint: str
        - name: OTMAInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: OTMAMember
          pcf_type: MQCFST
          type_hint: str
        - name: OTMSTpipePrefix
          pcf_type: MQCFST
          type_hint: str
        - name: QIndexDefer
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: QSGName
          pcf_type: MQCFST
          type_hint: str
        - name: RESLEVELAudit
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: RoutingCode
          pcf_type: MQCFIL
          type_hint: int
        - name: Service
          pcf_type: MQCFST
          type_hint: str
        - name: SMFAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: SMFAcctIntervalMins
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFAcctIntervalSecs
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: SMFStatsIntervalMins
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFStatsIntervalSecs
          pcf_type: MQCFIN
          type_hint: int
        - name: Splcap
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAP_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: MQCAP_NOT_SUPPORTED
          pcf_type: null
          type_hint: null
        - name: TraceClass
          pcf_type: MQCFIL
          type_hint: int
        - name: TraceSize
          pcf_type: MQCFIN
          type_hint: int
        - name: WLMInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: WLMIntervalUnits
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTIME_UNITS_SEC
          pcf_type: null
          type_hint: null
        - name: MQTIME_UNITS_MINS
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - CheckpointCount
          - ClusterCacheType
          - CodedCharSetId
          - CommandUserId
          - DB2BlobTasks
          - DB2Name
          - DB2Tasks
          - DSGName
          - Exclmsg
          - ExitInterval
          - ExitTasks
          - MQCAP_NOT_SUPPORTED
          - MQCAP_SUPPORTED
          - MQCLCT_DYNAMIC
          - MQCLCT_STATIC
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_SET
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQTIME_UNITS_MINS
          - MQTIME_UNITS_SEC
          - MULCCapture
          - MaximumAcePool
          - OTMADruExit
          - OTMAGroup
          - OTMAInterval
          - OTMAMember
          - OTMSTpipePrefix
          - QIndexDefer
          - QSGName
          - RESLEVELAudit
          - Returned
          - RoutingCode
          - SMFAccounting
          - SMFAcctIntervalMins
          - SMFAcctIntervalSecs
          - SMFInterval
          - SMFStatistics
          - SMFStatsIntervalMins
          - SMFStatsIntervalSecs
          - Service
          - Splcap
          - TraceClass
          - TraceSize
          - WLMInterval
          - WLMIntervalUnits
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - CheckpointCount
          - ClusterCacheType
          - CodedCharSetId
          - CommandUserId
          - DB2BlobTasks
          - DB2Name
          - DB2Tasks
          - DSGName
          - Exclmsg
          - ExitInterval
          - ExitTasks
          - MQCAP_NOT_SUPPORTED
          - MQCAP_SUPPORTED
          - MQCLCT_DYNAMIC
          - MQCLCT_STATIC
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_SET
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQTIME_UNITS_MINS
          - MQTIME_UNITS_SEC
          - MULCCapture
          - MaximumAcePool
          - OTMADruExit
          - OTMAGroup
          - OTMAInterval
          - OTMAMember
          - OTMSTpipePrefix
          - QIndexDefer
          - QSGName
          - RESLEVELAudit
          - Returned
          - RoutingCode
          - SMFAccounting
          - SMFAcctIntervalMins
          - SMFAcctIntervalSecs
          - SMFInterval
          - SMFStatistics
          - SMFStatsIntervalMins
          - SMFStatsIntervalSecs
          - Service
          - Splcap
          - TraceClass
          - TraceSize
          - WLMInterval
          - WLMIntervalUnits
    notes: []
  - mqsc:
      name: DISPLAY TCLUSTER
      href: SSFKSJ_9.4.0/refadmin/q114320_.html
      positional_parameters:
        - (generic-topic-name)
        - filter-keyword
        - filter-value
        - operator
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_TCLUSTER
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY THREAD
      href: SSFKSJ_9.4.0/refadmin/q086370_.html
      positional_parameters:
        - (*)
        - (connection-name)
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_THREAD
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY TOPIC
      href: SSFKSJ_9.4.0/refadmin/q086380_.html
      positional_parameters:
        - (generic-topic-name)
        - filter-keyword
        - filter-value
        - integer
        - operator
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_TOPIC
      request_href: SSFKSJ_9.4.0/refadmin/q088110_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088110_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: CapExpiry
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: Blank
          pcf_type: null
          type_hint: null
        - name: String
          pcf_type: null
          type_hint: null
        - name: ClusterObjectState
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLST_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQCLST_PENDING
          pcf_type: null
          type_hint: null
        - name: MQCLST_INVALID
          pcf_type: null
          type_hint: null
        - name: MQCLST_ERROR
          pcf_type: null
          type_hint: null
        - name: ClusterPubRoute
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLROUTE_DIRECT
          pcf_type: null
          type_hint: null
        - name: MQCLROUTE_TOPIC_HOST
          pcf_type: null
          type_hint: null
        - name: CommInfo
          pcf_type: MQCFST
          type_hint: str
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: DefPersistence
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPER_PERSISTENCE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQPER_PERSISTENT
          pcf_type: null
          type_hint: null
        - name: MQPER_NOT_PERSISTENT
          pcf_type: null
          type_hint: null
        - name: DefPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: DefPutResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPRT_ASYNC_RESPONSE
          pcf_type: null
          type_hint: null
        - name: MQPRT_RESPONSE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQPRT_SYNC_RESPONSE
          pcf_type: null
          type_hint: null
        - name: DurableModelQName
          pcf_type: MQCFST
          type_hint: str
        - name: DurableSubscriptions
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSUB_DURABLE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQSUB_DURABLE_ALLOWED
          pcf_type: null
          type_hint: null
        - name: MQSUB_DURABLE_INHIBITED
          pcf_type: null
          type_hint: null
        - name: InhibitPublications
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTA_PUB_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQTA_PUB_INHIBITED
          pcf_type: null
          type_hint: null
        - name: MQTA_PUB_ALLOWED
          pcf_type: null
          type_hint: null
        - name: InhibitSubscriptions
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTA_SUB_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQTA_SUB_INHIBITED
          pcf_type: null
          type_hint: null
        - name: MQTA_SUB_ALLOWED
          pcf_type: null
          type_hint: null
        - name: Multicast
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMC_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQMC_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMC_ONLY
          pcf_type: null
          type_hint: null
        - name: NonDurableModelQName
          pcf_type: MQCFST
          type_hint: str
        - name: NonPersistentMsgDelivery
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDLV_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL_DUR
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL_AVAIL
          pcf_type: null
          type_hint: null
        - name: PersistentMsgDelivery
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDLV_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL_DUR
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL_AVAIL
          pcf_type: null
          type_hint: null
        - name: ProxySubscriptions
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTA_PROXY_SUB_FORCE
          pcf_type: null
          type_hint: null
        - name: MQTA_PROXY_SUB_FIRSTUSE
          pcf_type: null
          type_hint: null
        - name: PublicationScope
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCOPE_ALL
          pcf_type: null
          type_hint: null
        - name: MQSCOPE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQSCOPE_QMGR
          pcf_type: null
          type_hint: null
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: SubscriptionScope
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCOPE_ALL
          pcf_type: null
          type_hint: null
        - name: MQSCOPE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQSCOPE_QMGR
          pcf_type: null
          type_hint: null
        - name: TopicDesc
          pcf_type: MQCFST
          type_hint: str
        - name: TopicName
          pcf_type: MQCFST
          type_hint: str
        - name: TopicString
          pcf_type: MQCFST
          type_hint: str
        - name: TopicType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTOPT_LOCAL
          pcf_type: null
          type_hint: null
        - name: MQTOPT_CLUSTER
          pcf_type: null
          type_hint: null
        - name: UseDLQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSEDLQ_NO
          pcf_type: null
          type_hint: null
        - name: MQUSEDLQ_YES
          pcf_type: null
          type_hint: null
        - name: MQUSEDLQ_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: WildcardOperation
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTA_PASSTHRU
          pcf_type: null
          type_hint: null
        - name: MQTA_BLOCK
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: CapExpiry
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: Blank
          pcf_type: null
          type_hint: null
        - name: String
          pcf_type: null
          type_hint: null
        - name: ClusterObjectState
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLST_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQCLST_PENDING
          pcf_type: null
          type_hint: null
        - name: MQCLST_INVALID
          pcf_type: null
          type_hint: null
        - name: MQCLST_ERROR
          pcf_type: null
          type_hint: null
        - name: ClusterPubRoute
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCLROUTE_DIRECT
          pcf_type: null
          type_hint: null
        - name: MQCLROUTE_TOPIC_HOST
          pcf_type: null
          type_hint: null
        - name: CommInfo
          pcf_type: MQCFST
          type_hint: str
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: DefPersistence
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPER_PERSISTENCE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQPER_PERSISTENT
          pcf_type: null
          type_hint: null
        - name: MQPER_NOT_PERSISTENT
          pcf_type: null
          type_hint: null
        - name: DefPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: DefPutResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPRT_ASYNC_RESPONSE
          pcf_type: null
          type_hint: null
        - name: MQPRT_RESPONSE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQPRT_SYNC_RESPONSE
          pcf_type: null
          type_hint: null
        - name: DurableModelQName
          pcf_type: MQCFST
          type_hint: str
        - name: DurableSubscriptions
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSUB_DURABLE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQSUB_DURABLE_ALLOWED
          pcf_type: null
          type_hint: null
        - name: MQSUB_DURABLE_INHIBITED
          pcf_type: null
          type_hint: null
        - name: InhibitPublications
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTA_PUB_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQTA_PUB_INHIBITED
          pcf_type: null
          type_hint: null
        - name: MQTA_PUB_ALLOWED
          pcf_type: null
          type_hint: null
        - name: InhibitSubscriptions
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTA_SUB_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQTA_SUB_INHIBITED
          pcf_type: null
          type_hint: null
        - name: MQTA_SUB_ALLOWED
          pcf_type: null
          type_hint: null
        - name: Multicast
          pcf_type: MQCFIN
          type_hint: int
        - name: MQMC_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQMC_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQMC_ONLY
          pcf_type: null
          type_hint: null
        - name: NonDurableModelQName
          pcf_type: MQCFST
          type_hint: str
        - name: NonPersistentMsgDelivery
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDLV_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL_DUR
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL_AVAIL
          pcf_type: null
          type_hint: null
        - name: PersistentMsgDelivery
          pcf_type: MQCFIN
          type_hint: int
        - name: MQDLV_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL_DUR
          pcf_type: null
          type_hint: null
        - name: MQDLV_ALL_AVAIL
          pcf_type: null
          type_hint: null
        - name: ProxySubscriptions
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTA_PROXY_SUB_FORCE
          pcf_type: null
          type_hint: null
        - name: MQTA_PROXY_SUB_FIRSTUSE
          pcf_type: null
          type_hint: null
        - name: PublicationScope
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCOPE_ALL
          pcf_type: null
          type_hint: null
        - name: MQSCOPE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQSCOPE_QMGR
          pcf_type: null
          type_hint: null
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: SubscriptionScope
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSCOPE_ALL
          pcf_type: null
          type_hint: null
        - name: MQSCOPE_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: MQSCOPE_QMGR
          pcf_type: null
          type_hint: null
        - name: TopicDesc
          pcf_type: MQCFST
          type_hint: str
        - name: TopicName
          pcf_type: MQCFST
          type_hint: str
        - name: TopicString
          pcf_type: MQCFST
          type_hint: str
        - name: TopicType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTOPT_LOCAL
          pcf_type: null
          type_hint: null
        - name: MQTOPT_CLUSTER
          pcf_type: null
          type_hint: null
        - name: UseDLQ
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSEDLQ_NO
          pcf_type: null
          type_hint: null
        - name: MQUSEDLQ_YES
          pcf_type: null
          type_hint: null
        - name: MQUSEDLQ_AS_PARENT
          pcf_type: null
          type_hint: null
        - name: WildcardOperation
          pcf_type: MQCFIN
          type_hint: int
        - name: MQTA_PASSTHRU
          pcf_type: null
          type_hint: null
        - name: MQTA_BLOCK
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - Blank
          - CapExpiry
          - ClusterName
          - ClusterObjectState
          - ClusterPubRoute
          - CommInfo
          - Custom
          - DefPersistence
          - DefPriority
          - DefPutResponse
          - DurableModelQName
          - DurableSubscriptions
          - InhibitPublications
          - InhibitSubscriptions
          - MQCLROUTE_DIRECT
          - MQCLROUTE_TOPIC_HOST
          - MQCLST_ACTIVE
          - MQCLST_ERROR
          - MQCLST_INVALID
          - MQCLST_PENDING
          - MQDLV_ALL
          - MQDLV_ALL
          - MQDLV_ALL_AVAIL
          - MQDLV_ALL_AVAIL
          - MQDLV_ALL_DUR
          - MQDLV_ALL_DUR
          - MQDLV_AS_PARENT
          - MQDLV_AS_PARENT
          - MQMC_DISABLED
          - MQMC_ENABLED
          - MQMC_ONLY
          - MQPER_NOT_PERSISTENT
          - MQPER_PERSISTENCE_AS_PARENT
          - MQPER_PERSISTENT
          - MQPRT_ASYNC_RESPONSE
          - MQPRT_RESPONSE_AS_PARENT
          - MQPRT_SYNC_RESPONSE
          - MQSCOPE_ALL
          - MQSCOPE_ALL
          - MQSCOPE_AS_PARENT
          - MQSCOPE_AS_PARENT
          - MQSCOPE_QMGR
          - MQSCOPE_QMGR
          - MQSUB_DURABLE_ALLOWED
          - MQSUB_DURABLE_AS_PARENT
          - MQSUB_DURABLE_INHIBITED
          - MQTA_BLOCK
          - MQTA_PASSTHRU
          - MQTA_PROXY_SUB_FIRSTUSE
          - MQTA_PROXY_SUB_FORCE
          - MQTA_PUB_ALLOWED
          - MQTA_PUB_AS_PARENT
          - MQTA_PUB_INHIBITED
          - MQTA_SUB_ALLOWED
          - MQTA_SUB_AS_PARENT
          - MQTA_SUB_INHIBITED
          - MQTOPT_CLUSTER
          - MQTOPT_LOCAL
          - MQUSEDLQ_AS_PARENT
          - MQUSEDLQ_NO
          - MQUSEDLQ_YES
          - Multicast
          - NonDurableModelQName
          - NonPersistentMsgDelivery
          - PersistentMsgDelivery
          - ProxySubscriptions
          - PublicationScope
          - QMgrName
          - Returned
          - String
          - SubscriptionScope
          - TopicDesc
          - TopicName
          - TopicString
          - TopicType
          - UseDLQ
          - WildcardOperation
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Always
          - Blank
          - CapExpiry
          - ClusterName
          - ClusterObjectState
          - ClusterPubRoute
          - CommInfo
          - Custom
          - DefPersistence
          - DefPriority
          - DefPutResponse
          - DurableModelQName
          - DurableSubscriptions
          - InhibitPublications
          - InhibitSubscriptions
          - MQCLROUTE_DIRECT
          - MQCLROUTE_TOPIC_HOST
          - MQCLST_ACTIVE
          - MQCLST_ERROR
          - MQCLST_INVALID
          - MQCLST_PENDING
          - MQDLV_ALL
          - MQDLV_ALL
          - MQDLV_ALL_AVAIL
          - MQDLV_ALL_AVAIL
          - MQDLV_ALL_DUR
          - MQDLV_ALL_DUR
          - MQDLV_AS_PARENT
          - MQDLV_AS_PARENT
          - MQMC_DISABLED
          - MQMC_ENABLED
          - MQMC_ONLY
          - MQPER_NOT_PERSISTENT
          - MQPER_PERSISTENCE_AS_PARENT
          - MQPER_PERSISTENT
          - MQPRT_ASYNC_RESPONSE
          - MQPRT_RESPONSE_AS_PARENT
          - MQPRT_SYNC_RESPONSE
          - MQSCOPE_ALL
          - MQSCOPE_ALL
          - MQSCOPE_AS_PARENT
          - MQSCOPE_AS_PARENT
          - MQSCOPE_QMGR
          - MQSCOPE_QMGR
          - MQSUB_DURABLE_ALLOWED
          - MQSUB_DURABLE_AS_PARENT
          - MQSUB_DURABLE_INHIBITED
          - MQTA_BLOCK
          - MQTA_PASSTHRU
          - MQTA_PROXY_SUB_FIRSTUSE
          - MQTA_PROXY_SUB_FORCE
          - MQTA_PUB_ALLOWED
          - MQTA_PUB_AS_PARENT
          - MQTA_PUB_INHIBITED
          - MQTA_SUB_ALLOWED
          - MQTA_SUB_AS_PARENT
          - MQTA_SUB_INHIBITED
          - MQTOPT_CLUSTER
          - MQTOPT_LOCAL
          - MQUSEDLQ_AS_PARENT
          - MQUSEDLQ_NO
          - MQUSEDLQ_YES
          - Multicast
          - NonDurableModelQName
          - NonPersistentMsgDelivery
          - PersistentMsgDelivery
          - ProxySubscriptions
          - PublicationScope
          - QMgrName
          - Returned
          - String
          - SubscriptionScope
          - TopicDesc
          - TopicName
          - TopicString
          - TopicType
          - UseDLQ
          - WildcardOperation
    notes: []
  - mqsc:
      name: DISPLAY TPSTATUS
      href: SSFKSJ_9.4.0/refadmin/q086390_.html
      positional_parameters:
        - ' '
        - *
        - filter-keyword
        - filter-value
        - integer
        - operator
        - qmgr-name
        - topicstr)
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_TP_STATUS
      request_href: SSFKSJ_9.4.0/refadmin/q087880_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: ByteStringFilterCommand
          pcf_type: MQCFBF
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: OpenType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSOT_ALL
          pcf_type: null
          type_hint: null
        - name: MQQSOT_INPUT
          pcf_type: null
          type_hint: null
        - name: MQQSOT_OUTPUT
          pcf_type: null
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: MQIACF_ALL
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_GET_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_DATE
          pcf_type: null
          type_hint: null
        - name: MQCACF_LAST_PUT_TIME
          pcf_type: null
          type_hint: null
        - name: MQCACF_MEDIA_LOG_EXTENT_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_CURRENT_Q_DEPTH
          pcf_type: null
          type_hint: null
        - name: MQIA_MONITORING_Q
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_INPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIA_OPEN_OUTPUT_COUNT
          pcf_type: null
          type_hint: null
        - name: MQIACF_HANDLE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_MONITORING
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_MAX_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_CUR_Q_FILE_SIZE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OLDEST_MSG_AGE
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_TIME_INDICATOR
          pcf_type: null
          type_hint: null
        - name: MQIACF_UNCOMMITTED_MSGS
          pcf_type: null
          type_hint: null
        - name: MQBACF_EXTERNAL_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQBACF_Q_MGR_UOW_ID
          pcf_type: null
          type_hint: null
        - name: MQCA_Q_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_APPL_TAG
          pcf_type: null
          type_hint: null
        - name: MQCACF_ASID
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSB_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACF_PSTID
          pcf_type: null
          type_hint: null
        - name: MQCACF_TASK_NUMBER
          pcf_type: null
          type_hint: null
        - name: MQCACF_TRANSACTION_ID
          pcf_type: null
          type_hint: null
        - name: MQCACF_USER_IDENTIFIER
          pcf_type: null
          type_hint: null
        - name: MQCACH_CHANNEL_NAME
          pcf_type: null
          type_hint: null
        - name: MQCACH_CONNECTION_NAME
          pcf_type: null
          type_hint: null
        - name: MQIA_APPL_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INPUT_TYPE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OPTIONS
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQIACF_OPEN_SET
          pcf_type: null
          type_hint: null
        - name: MQIACF_PROCESS_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_ASYNC_STATE
          pcf_type: null
          type_hint: null
        - name: MQIACF_THREAD_ID
          pcf_type: null
          type_hint: null
        - name: MQIACF_UOW_TYPE
          pcf_type: null
          type_hint: null
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_Q_STATUS
          pcf_type: null
          type_hint: null
        - name: MQIACF_Q_HANDLE
          pcf_type: null
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_Q_TYPE_ERROR
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ByteStringFilterCommand
          - CommandScope
          - IntegerFilterCommand
          - MQBACF_EXTERNAL_UOW_ID
          - MQBACF_Q_MGR_UOW_ID
          - MQCACF_APPL_TAG
          - MQCACF_ASID
          - MQCACF_LAST_GET_DATE
          - MQCACF_LAST_GET_TIME
          - MQCACF_LAST_PUT_DATE
          - MQCACF_LAST_PUT_TIME
          - MQCACF_MEDIA_LOG_EXTENT_NAME
          - MQCACF_PSB_NAME
          - MQCACF_PSTID
          - MQCACF_TASK_NUMBER
          - MQCACF_TRANSACTION_ID
          - MQCACF_USER_IDENTIFIER
          - MQCACH_CHANNEL_NAME
          - MQCACH_CONNECTION_NAME
          - MQCA_Q_NAME
          - MQCA_Q_NAME
          - MQIACF_ALL
          - MQIACF_ASYNC_STATE
          - MQIACF_CUR_MAX_FILE_SIZE
          - MQIACF_CUR_Q_FILE_SIZE
          - MQIACF_HANDLE_STATE
          - MQIACF_MONITORING
          - MQIACF_OLDEST_MSG_AGE
          - MQIACF_OPEN_BROWSE
          - MQIACF_OPEN_INPUT_TYPE
          - MQIACF_OPEN_INQUIRE
          - MQIACF_OPEN_OPTIONS
          - MQIACF_OPEN_OUTPUT
          - MQIACF_OPEN_SET
          - MQIACF_PROCESS_ID
          - MQIACF_Q_HANDLE
          - MQIACF_Q_STATUS
          - MQIACF_Q_TIME_INDICATOR
          - MQIACF_THREAD_ID
          - MQIACF_UNCOMMITTED_MSGS
          - MQIACF_UOW_TYPE
          - MQIA_APPL_TYPE
          - MQIA_CURRENT_Q_DEPTH
          - MQIA_MONITORING_Q
          - MQIA_OPEN_INPUT_COUNT
          - MQIA_OPEN_OUTPUT_COUNT
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MQQSOT_ALL
          - MQQSOT_INPUT
          - MQQSOT_OUTPUT
          - MQRCCF_Q_TYPE_ERROR
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
          - Reason
          - StatusType
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY TRACE
      href: SSFKSJ_9.4.0/refadmin/q086400_.html
      positional_parameters:
        - integer
        - output-type
        - qmgr-name
        - string
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_TRACE
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: DISPLAY USAGE
      href: SSFKSJ_9.4.0/refadmin/q086410_.html
      positional_parameters:
        - integer
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_INQUIRE_USAGE
      request_href: SSFKSJ_9.4.0/refadmin/q088170_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088170_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQIACF_USAGE_PAGESET
          pcf_type: null
          type_hint: null
        - name: MQIACF_USAGE_BUFFER_POOL
          pcf_type: null
          type_hint: null
        - name: MQIACF_USAGE_DATA_SET
          pcf_type: null
          type_hint: null
        - name: MQIACF_USAGE_SMDS
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: BufferPoolId
          pcf_type: MQCFIN
          type_hint: int
        - name: Encrypted
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: ExpandCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ExpandType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSAGE_EXPAND_NONE
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_EXPAND_USER
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_EXPAND_SYSTEM
          pcf_type: null
          type_hint: null
        - name: NonPersistentDataPages
          pcf_type: MQCFIN
          type_hint: int
        - name: PageSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: PageSetStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSAGE_PS_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_PS_DEFINED
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_PS_OFFLINE
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_PS_NOT_DEFINED
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_PS_SUSPENDED
          pcf_type: null
          type_hint: null
        - name: PersistentDataPages
          pcf_type: MQCFIN
          type_hint: int
        - name: TotalPages
          pcf_type: MQCFIN
          type_hint: int
        - name: UnusedPages
          pcf_type: MQCFIN
          type_hint: int
        - name: LogRBA
          pcf_type: MQCFST
          type_hint: str
        - name: BufferPoolId
          pcf_type: MQCFIN
          type_hint: int
        - name: FreeBuffers
          pcf_type: MQCFIN
          type_hint: int
        - name: FreeBuffersPercentage
          pcf_type: MQCFIN
          type_hint: int
        - name: TotalBuffers
          pcf_type: MQCFIN
          type_hint: int
        - name: BufferPoolLocation
          pcf_type: MQCFIN
          type_hint: int
        - name: MQBPLOCATION_ABOVE
          pcf_type: null
          type_hint: null
        - name: MQBPLOCATION_BELOW
          pcf_type: null
          type_hint: null
        - name: MQBPLOCATION_SWITCHING_ABOVE
          pcf_type: null
          type_hint: null
        - name: MQBPLOCATION_SWITCHING_BELOW
          pcf_type: null
          type_hint: null
        - name: PageClass
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPAGECLAS_4KB
          pcf_type: null
          type_hint: null
        - name: MQPAGECLAS_FIXED4KB
          pcf_type: null
          type_hint: null
        - name: DataSetName
          pcf_type: MQCFST
          type_hint: str
        - name: DataSetType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSAGE_DS_OLDEST_ACTIVE_UOW
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_DS_OLDEST_PS_RECOVERY
          pcf_type: null
          type_hint: null
        - name: MQUSAGE__DS_OLDEST_CF_RECOVERY
          pcf_type: null
          type_hint: null
        - name: LogRBA
          pcf_type: MQCFST
          type_hint: str
        - name: LogLRSN
          pcf_type: MQCFST
          type_hint: str
        - name: Encrypted
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: SMDSStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSAGE_SMDS_NO_DATA
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_SMDS_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: A
          pcf_type: null
          type_hint: null
        - name: CFStrucNames
          pcf_type: MQCFSL
          type_hint: str
        - name: MQIACF_USAGE_OFFLOAD_MSGS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_TOTAL_BLOCKS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_DATA_BLOCKS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_USED_BLOCKS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_USED_RATE
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_SMDS_STATUS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_TYPE
          pcf_type: MQCFIN
          type_hint: int
        - name: B
          pcf_type: null
          type_hint: null
        - name: CFStrucNames
          pcf_type: MQCFSL
          type_hint: str
        - name: MQIACF_USAGE_BLOCK_SIZE
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_TOTAL_BUFFERS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_INUSE_BUFFERS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_SAVED_BUFFERS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_EMPTY_BUFFERS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_READS_SAVED
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_LOWEST_FREE
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_WAIT_RATE
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_SMDS_STATUS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_TYPE
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: MQIACF_USAGE_PAGESET
          pcf_type: null
          type_hint: null
        - name: MQIACF_USAGE_BUFFER_POOL
          pcf_type: null
          type_hint: null
        - name: MQIACF_USAGE_DATA_SET
          pcf_type: null
          type_hint: null
        - name: MQIACF_USAGE_SMDS
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: Returned
          pcf_type: null
          type_hint: null
        - name: BufferPoolId
          pcf_type: MQCFIN
          type_hint: int
        - name: Encrypted
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: ExpandCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ExpandType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSAGE_EXPAND_NONE
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_EXPAND_USER
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_EXPAND_SYSTEM
          pcf_type: null
          type_hint: null
        - name: NonPersistentDataPages
          pcf_type: MQCFIN
          type_hint: int
        - name: PageSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: PageSetStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSAGE_PS_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_PS_DEFINED
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_PS_OFFLINE
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_PS_NOT_DEFINED
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_PS_SUSPENDED
          pcf_type: null
          type_hint: null
        - name: PersistentDataPages
          pcf_type: MQCFIN
          type_hint: int
        - name: TotalPages
          pcf_type: MQCFIN
          type_hint: int
        - name: UnusedPages
          pcf_type: MQCFIN
          type_hint: int
        - name: LogRBA
          pcf_type: MQCFST
          type_hint: str
        - name: BufferPoolId
          pcf_type: MQCFIN
          type_hint: int
        - name: FreeBuffers
          pcf_type: MQCFIN
          type_hint: int
        - name: FreeBuffersPercentage
          pcf_type: MQCFIN
          type_hint: int
        - name: TotalBuffers
          pcf_type: MQCFIN
          type_hint: int
        - name: BufferPoolLocation
          pcf_type: MQCFIN
          type_hint: int
        - name: MQBPLOCATION_ABOVE
          pcf_type: null
          type_hint: null
        - name: MQBPLOCATION_BELOW
          pcf_type: null
          type_hint: null
        - name: MQBPLOCATION_SWITCHING_ABOVE
          pcf_type: null
          type_hint: null
        - name: MQBPLOCATION_SWITCHING_BELOW
          pcf_type: null
          type_hint: null
        - name: PageClass
          pcf_type: MQCFIN
          type_hint: int
        - name: MQPAGECLAS_4KB
          pcf_type: null
          type_hint: null
        - name: MQPAGECLAS_FIXED4KB
          pcf_type: null
          type_hint: null
        - name: DataSetName
          pcf_type: MQCFST
          type_hint: str
        - name: DataSetType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSAGE_DS_OLDEST_ACTIVE_UOW
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_DS_OLDEST_PS_RECOVERY
          pcf_type: null
          type_hint: null
        - name: MQUSAGE__DS_OLDEST_CF_RECOVERY
          pcf_type: null
          type_hint: null
        - name: LogRBA
          pcf_type: MQCFST
          type_hint: str
        - name: LogLRSN
          pcf_type: MQCFST
          type_hint: str
        - name: Encrypted
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: SMDSStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSAGE_SMDS_NO_DATA
          pcf_type: null
          type_hint: null
        - name: MQUSAGE_SMDS_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: A
          pcf_type: null
          type_hint: null
        - name: CFStrucNames
          pcf_type: MQCFSL
          type_hint: str
        - name: MQIACF_USAGE_OFFLOAD_MSGS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_TOTAL_BLOCKS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_DATA_BLOCKS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_USED_BLOCKS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_USED_RATE
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_SMDS_STATUS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_TYPE
          pcf_type: MQCFIN
          type_hint: int
        - name: B
          pcf_type: null
          type_hint: null
        - name: CFStrucNames
          pcf_type: MQCFSL
          type_hint: str
        - name: MQIACF_USAGE_BLOCK_SIZE
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_TOTAL_BUFFERS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_INUSE_BUFFERS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_SAVED_BUFFERS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_EMPTY_BUFFERS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_READS_SAVED
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_LOWEST_FREE
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_WAIT_RATE
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_SMDS_STATUS
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIACF_USAGE_TYPE
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - A
          - Always
          - B
          - BufferPoolId
          - BufferPoolId
          - BufferPoolLocation
          - CFStrucNames
          - CFStrucNames
          - DataSetName
          - DataSetType
          - Encrypted
          - Encrypted
          - ExpandCount
          - ExpandType
          - FreeBuffers
          - FreeBuffersPercentage
          - LogLRSN
          - LogRBA
          - LogRBA
          - MQBPLOCATION_ABOVE
          - MQBPLOCATION_BELOW
          - MQBPLOCATION_SWITCHING_ABOVE
          - MQBPLOCATION_SWITCHING_BELOW
          - MQIACF_SMDS_STATUS
          - MQIACF_SMDS_STATUS
          - MQIACF_USAGE_BLOCK_SIZE
          - MQIACF_USAGE_BUFFER_POOL
          - MQIACF_USAGE_DATA_BLOCKS
          - MQIACF_USAGE_DATA_SET
          - MQIACF_USAGE_EMPTY_BUFFERS
          - MQIACF_USAGE_INUSE_BUFFERS
          - MQIACF_USAGE_LOWEST_FREE
          - MQIACF_USAGE_OFFLOAD_MSGS
          - MQIACF_USAGE_PAGESET
          - MQIACF_USAGE_READS_SAVED
          - MQIACF_USAGE_SAVED_BUFFERS
          - MQIACF_USAGE_SMDS
          - MQIACF_USAGE_TOTAL_BLOCKS
          - MQIACF_USAGE_TOTAL_BUFFERS
          - MQIACF_USAGE_TYPE
          - MQIACF_USAGE_TYPE
          - MQIACF_USAGE_USED_BLOCKS
          - MQIACF_USAGE_USED_RATE
          - MQIACF_USAGE_WAIT_RATE
          - MQPAGECLAS_4KB
          - MQPAGECLAS_FIXED4KB
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_YES
          - MQSYSP_YES
          - MQUSAGE_DS_OLDEST_ACTIVE_UOW
          - MQUSAGE_DS_OLDEST_PS_RECOVERY
          - MQUSAGE_EXPAND_NONE
          - MQUSAGE_EXPAND_SYSTEM
          - MQUSAGE_EXPAND_USER
          - MQUSAGE_PS_AVAILABLE
          - MQUSAGE_PS_DEFINED
          - MQUSAGE_PS_NOT_DEFINED
          - MQUSAGE_PS_OFFLINE
          - MQUSAGE_PS_SUSPENDED
          - MQUSAGE_SMDS_AVAILABLE
          - MQUSAGE_SMDS_NO_DATA
          - MQUSAGE__DS_OLDEST_CF_RECOVERY
          - NonPersistentDataPages
          - PageClass
          - PageSetId
          - PageSetStatus
          - PersistentDataPages
          - Returned
          - Returned
          - Returned
          - Returned
          - SMDSStatus
          - TotalBuffers
          - TotalPages
          - UnusedPages
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - A
          - Always
          - B
          - BufferPoolId
          - BufferPoolId
          - BufferPoolLocation
          - CFStrucNames
          - CFStrucNames
          - DataSetName
          - DataSetType
          - Encrypted
          - Encrypted
          - ExpandCount
          - ExpandType
          - FreeBuffers
          - FreeBuffersPercentage
          - LogLRSN
          - LogRBA
          - LogRBA
          - MQBPLOCATION_ABOVE
          - MQBPLOCATION_BELOW
          - MQBPLOCATION_SWITCHING_ABOVE
          - MQBPLOCATION_SWITCHING_BELOW
          - MQIACF_SMDS_STATUS
          - MQIACF_SMDS_STATUS
          - MQIACF_USAGE_BLOCK_SIZE
          - MQIACF_USAGE_BUFFER_POOL
          - MQIACF_USAGE_DATA_BLOCKS
          - MQIACF_USAGE_DATA_SET
          - MQIACF_USAGE_EMPTY_BUFFERS
          - MQIACF_USAGE_INUSE_BUFFERS
          - MQIACF_USAGE_LOWEST_FREE
          - MQIACF_USAGE_OFFLOAD_MSGS
          - MQIACF_USAGE_PAGESET
          - MQIACF_USAGE_READS_SAVED
          - MQIACF_USAGE_SAVED_BUFFERS
          - MQIACF_USAGE_SMDS
          - MQIACF_USAGE_TOTAL_BLOCKS
          - MQIACF_USAGE_TOTAL_BUFFERS
          - MQIACF_USAGE_TYPE
          - MQIACF_USAGE_TYPE
          - MQIACF_USAGE_USED_BLOCKS
          - MQIACF_USAGE_USED_RATE
          - MQIACF_USAGE_WAIT_RATE
          - MQPAGECLAS_4KB
          - MQPAGECLAS_FIXED4KB
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_YES
          - MQSYSP_YES
          - MQUSAGE_DS_OLDEST_ACTIVE_UOW
          - MQUSAGE_DS_OLDEST_PS_RECOVERY
          - MQUSAGE_EXPAND_NONE
          - MQUSAGE_EXPAND_SYSTEM
          - MQUSAGE_EXPAND_USER
          - MQUSAGE_PS_AVAILABLE
          - MQUSAGE_PS_DEFINED
          - MQUSAGE_PS_NOT_DEFINED
          - MQUSAGE_PS_OFFLINE
          - MQUSAGE_PS_SUSPENDED
          - MQUSAGE_SMDS_AVAILABLE
          - MQUSAGE_SMDS_NO_DATA
          - MQUSAGE__DS_OLDEST_CF_RECOVERY
          - NonPersistentDataPages
          - PageClass
          - PageSetId
          - PageSetStatus
          - PersistentDataPages
          - Returned
          - Returned
          - Returned
          - Returned
          - SMDSStatus
          - TotalBuffers
          - TotalPages
          - UnusedPages
    notes: []
  - mqsc:
      name: MOVE QLOCAL
      href: SSFKSJ_9.4.0/refadmin/q086420_.html
      positional_parameters:
        - qmgr-name
        - source
        - target
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: null
      request_href: null
      response_href: null
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes: []
  - mqsc:
      name: PING CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q086430_.html
      positional_parameters:
        - (channel-name)
        - integer
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_PING_CHANNEL
      request_href: SSFKSJ_9.4.0/refadmin/q088190_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088190_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: DataCount
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQCHLD_SHARED
          pcf_type: null
          type_hint: null
        - name: MQCHLD_FIXSHARED
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_ALLOCATE_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_BIND_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CCSID_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_CLOSED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_IN_USE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_TYPE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CONFIGURATION_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CONNECTION_CLOSED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CONNECTION_REFUSED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_DATA_TOO_LARGE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_ENTRY_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_HOST_NOT_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_NO_COMMS_MANAGER
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PING_DATA_COMPARE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PING_DATA_COUNT_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PING_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_RECEIVE_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_RECEIVED_DATA_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_REMOTE_QM_TERMINATING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_REMOTE_QM_UNAVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_SEND_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_STRUCTURE_TYPE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_TERMINATED_BY_SEC_EXIT
          pcf_type: null
          type_hint: null
        - name: MQRCCF_UNKNOWN_REMOTE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQRCCF_USER_EXIT_NOT_AVAILABLE
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: DataCount
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQCHLD_SHARED
          pcf_type: null
          type_hint: null
        - name: MQCHLD_FIXSHARED
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_ALLOCATE_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_BIND_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CCSID_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_CLOSED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_IN_USE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_TYPE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CONFIGURATION_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CONNECTION_CLOSED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CONNECTION_REFUSED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_DATA_TOO_LARGE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_ENTRY_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_HOST_NOT_AVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_NO_COMMS_MANAGER
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PING_DATA_COMPARE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PING_DATA_COUNT_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PING_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_RECEIVE_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_RECEIVED_DATA_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_REMOTE_QM_TERMINATING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_REMOTE_QM_UNAVAILABLE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_SEND_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_STRUCTURE_TYPE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_TERMINATED_BY_SEC_EXIT
          pcf_type: null
          type_hint: null
        - name: MQRCCF_UNKNOWN_REMOTE_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQRCCF_USER_EXIT_NOT_AVAILABLE
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelDisposition
          - ChannelName
          - CommandScope
          - DataCount
          - MQCHLD_FIXSHARED
          - MQCHLD_PRIVATE
          - MQCHLD_SHARED
          - MQRCCF_ALLOCATE_FAILED
          - MQRCCF_BIND_FAILED
          - MQRCCF_CCSID_ERROR
          - MQRCCF_CHANNEL_CLOSED
          - MQRCCF_CHANNEL_IN_USE
          - MQRCCF_CHANNEL_NOT_FOUND
          - MQRCCF_CHANNEL_TYPE_ERROR
          - MQRCCF_CONFIGURATION_ERROR
          - MQRCCF_CONNECTION_CLOSED
          - MQRCCF_CONNECTION_REFUSED
          - MQRCCF_DATA_TOO_LARGE
          - MQRCCF_ENTRY_ERROR
          - MQRCCF_HOST_NOT_AVAILABLE
          - MQRCCF_NO_COMMS_MANAGER
          - MQRCCF_PING_DATA_COMPARE_ERROR
          - MQRCCF_PING_DATA_COUNT_ERROR
          - MQRCCF_PING_ERROR
          - MQRCCF_RECEIVED_DATA_ERROR
          - MQRCCF_RECEIVE_FAILED
          - MQRCCF_REMOTE_QM_TERMINATING
          - MQRCCF_REMOTE_QM_UNAVAILABLE
          - MQRCCF_SEND_FAILED
          - MQRCCF_STRUCTURE_TYPE_ERROR
          - MQRCCF_TERMINATED_BY_SEC_EXIT
          - MQRCCF_UNKNOWN_REMOTE_CHANNEL
          - MQRCCF_USER_EXIT_NOT_AVAILABLE
          - Reason
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelDisposition
          - ChannelName
          - CommandScope
          - DataCount
          - MQCHLD_FIXSHARED
          - MQCHLD_PRIVATE
          - MQCHLD_SHARED
          - MQRCCF_ALLOCATE_FAILED
          - MQRCCF_BIND_FAILED
          - MQRCCF_CCSID_ERROR
          - MQRCCF_CHANNEL_CLOSED
          - MQRCCF_CHANNEL_IN_USE
          - MQRCCF_CHANNEL_NOT_FOUND
          - MQRCCF_CHANNEL_TYPE_ERROR
          - MQRCCF_CONFIGURATION_ERROR
          - MQRCCF_CONNECTION_CLOSED
          - MQRCCF_CONNECTION_REFUSED
          - MQRCCF_DATA_TOO_LARGE
          - MQRCCF_ENTRY_ERROR
          - MQRCCF_HOST_NOT_AVAILABLE
          - MQRCCF_NO_COMMS_MANAGER
          - MQRCCF_PING_DATA_COMPARE_ERROR
          - MQRCCF_PING_DATA_COUNT_ERROR
          - MQRCCF_PING_ERROR
          - MQRCCF_RECEIVED_DATA_ERROR
          - MQRCCF_RECEIVE_FAILED
          - MQRCCF_REMOTE_QM_TERMINATING
          - MQRCCF_REMOTE_QM_UNAVAILABLE
          - MQRCCF_SEND_FAILED
          - MQRCCF_STRUCTURE_TYPE_ERROR
          - MQRCCF_TERMINATED_BY_SEC_EXIT
          - MQRCCF_UNKNOWN_REMOTE_CHANNEL
          - MQRCCF_USER_EXIT_NOT_AVAILABLE
          - Reason
    notes: []
  - mqsc:
      name: PING QMGR
      href: SSFKSJ_9.4.0/refadmin/q086440_.html
      positional_parameters: []
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_PING_Q_MGR
      request_href: SSFKSJ_9.4.0/refadmin/q088200_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088200_.html
      request_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: Optional
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: Optional
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Optional
          - Required
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Optional
          - Required
    notes: []
  - mqsc:
      name: PURGE CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q086450_.html
      positional_parameters:
        - channel name
        - string
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: null
      request_href: null
      response_href: null
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes: []
  - mqsc:
      name: RECOVER BSDS
      href: SSFKSJ_9.4.0/refadmin/q086455_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: null
      request_href: null
      response_href: null
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes: []
  - mqsc:
      name: RECOVER CFSTRUCT
      href: SSFKSJ_9.4.0/refadmin/q086460_.html
      positional_parameters:
        - qmgr-name
        - structure-names ...
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: null
      request_href: null
      response_href: null
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes: []
  - mqsc:
      name: REFRESH CLUSTER
      href: SSFKSJ_9.4.0/refadmin/q086470_.html
      positional_parameters:
        - generic-clustername
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_REFRESH_CLUSTER
      request_href: SSFKSJ_9.4.0/refadmin/q088230_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088230_.html
      request_parameters:
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: RefreshRepository
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFO_REFRESH_REPOSITORY_YES
          pcf_type: null
          type_hint: null
        - name: MQCFO_REFRESH_REPOSITORY
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: RefreshRepository
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFO_REFRESH_REPOSITORY_YES
          pcf_type: null
          type_hint: null
        - name: MQCFO_REFRESH_REPOSITORY
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ClusterName
          - CommandScope
          - MQCFO_REFRESH_REPOSITORY
          - MQCFO_REFRESH_REPOSITORY_YES
          - RefreshRepository
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ClusterName
          - CommandScope
          - MQCFO_REFRESH_REPOSITORY
          - MQCFO_REFRESH_REPOSITORY_YES
          - RefreshRepository
    notes: []
  - mqsc:
      name: REFRESH QMGR
      href: SSFKSJ_9.4.0/refadmin/q086480_.html
      positional_parameters:
        - (generic-object-name)
        - (integer)
        - (objtype)
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_REFRESH_Q_MGR
      request_href: SSFKSJ_9.4.0/refadmin/q088240_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088240_.html
      request_parameters:
        - name: RefreshType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRT_CONFIGURATION
          pcf_type: null
          type_hint: null
        - name: MQRT_EXPIRY
          pcf_type: null
          type_hint: null
        - name: MQRT_EARLY
          pcf_type: null
          type_hint: null
        - name: MQRT_PROXYSUB
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectName
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQOT_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_CHLAUTH
          pcf_type: null
          type_hint: null
        - name: MQOT_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQOT_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQOT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQOT_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_LOCAL_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_MODEL_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_ALIAS_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_REMOTE_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQOT_CFSTRUC
          pcf_type: null
          type_hint: null
        - name: MQOT_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQOT_STORAGE_CLASS
          pcf_type: null
          type_hint: null
        - name: MQOT_TOPIC
          pcf_type: null
          type_hint: null
        - name: RefreshInterval
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: RefreshType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQRT_CONFIGURATION
          pcf_type: null
          type_hint: null
        - name: MQRT_EXPIRY
          pcf_type: null
          type_hint: null
        - name: MQRT_EARLY
          pcf_type: null
          type_hint: null
        - name: MQRT_PROXYSUB
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectName
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_CF_STRUC
          pcf_type: null
          type_hint: null
        - name: MQOT_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_CHLAUTH
          pcf_type: null
          type_hint: null
        - name: MQOT_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQOT_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQOT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQOT_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_LOCAL_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_MODEL_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_ALIAS_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_REMOTE_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQOT_CFSTRUC
          pcf_type: null
          type_hint: null
        - name: MQOT_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQOT_STORAGE_CLASS
          pcf_type: null
          type_hint: null
        - name: MQOT_TOPIC
          pcf_type: null
          type_hint: null
        - name: RefreshInterval
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - MQOT_ALIAS_Q
          - MQOT_AUTH_INFO
          - MQOT_CFSTRUC
          - MQOT_CF_STRUC
          - MQOT_CHANNEL
          - MQOT_CHLAUTH
          - MQOT_LISTENER
          - MQOT_LOCAL_Q
          - MQOT_MODEL_Q
          - MQOT_NAMELIST
          - MQOT_PROCESS
          - MQOT_Q
          - MQOT_Q_MGR
          - MQOT_REMOTE_Q
          - MQOT_SERVICE
          - MQOT_STORAGE_CLASS
          - MQOT_TOPIC
          - MQRT_CONFIGURATION
          - MQRT_EARLY
          - MQRT_EXPIRY
          - MQRT_PROXYSUB
          - ObjectName
          - ObjectType
          - RefreshInterval
          - RefreshType
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - MQOT_ALIAS_Q
          - MQOT_AUTH_INFO
          - MQOT_CFSTRUC
          - MQOT_CF_STRUC
          - MQOT_CHANNEL
          - MQOT_CHLAUTH
          - MQOT_LISTENER
          - MQOT_LOCAL_Q
          - MQOT_MODEL_Q
          - MQOT_NAMELIST
          - MQOT_PROCESS
          - MQOT_Q
          - MQOT_Q_MGR
          - MQOT_REMOTE_Q
          - MQOT_SERVICE
          - MQOT_STORAGE_CLASS
          - MQOT_TOPIC
          - MQRT_CONFIGURATION
          - MQRT_EARLY
          - MQRT_EXPIRY
          - MQRT_PROXYSUB
          - ObjectName
          - ObjectType
          - RefreshInterval
          - RefreshType
    notes: []
  - mqsc:
      name: REFRESH SECURITY
      href: SSFKSJ_9.4.0/refadmin/q086490_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_REFRESH_SECURITY
      request_href: SSFKSJ_9.4.0/refadmin/q088250_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088250_.html
      request_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityItem
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSECITEM_ALL
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MQADMIN
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MQNLIST
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MQPROC
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MQQUEUE
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXADMIN
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXNLIST
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXPROC
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXQUEUE
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXTOPIC
          pcf_type: null
          type_hint: null
        - name: SecurityType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSECTYPE_AUTHSERV
          pcf_type: null
          type_hint: null
        - name: MQSECTYPE_CLASSES
          pcf_type: null
          type_hint: null
        - name: MQSECTYPE_CONNAUTH
          pcf_type: null
          type_hint: null
        - name: MQSECTYPE_SSL
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityItem
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSECITEM_ALL
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MQADMIN
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MQNLIST
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MQPROC
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MQQUEUE
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXADMIN
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXNLIST
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXPROC
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXQUEUE
          pcf_type: null
          type_hint: null
        - name: MQSECITEM_MXTOPIC
          pcf_type: null
          type_hint: null
        - name: SecurityType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSECTYPE_AUTHSERV
          pcf_type: null
          type_hint: null
        - name: MQSECTYPE_CLASSES
          pcf_type: null
          type_hint: null
        - name: MQSECTYPE_CONNAUTH
          pcf_type: null
          type_hint: null
        - name: MQSECTYPE_SSL
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - MQSECITEM_ALL
          - MQSECITEM_MQADMIN
          - MQSECITEM_MQNLIST
          - MQSECITEM_MQPROC
          - MQSECITEM_MQQUEUE
          - MQSECITEM_MXADMIN
          - MQSECITEM_MXNLIST
          - MQSECITEM_MXPROC
          - MQSECITEM_MXQUEUE
          - MQSECITEM_MXTOPIC
          - MQSECTYPE_AUTHSERV
          - MQSECTYPE_CLASSES
          - MQSECTYPE_CONNAUTH
          - MQSECTYPE_SSL
          - SecurityItem
          - SecurityType
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - MQSECITEM_ALL
          - MQSECITEM_MQADMIN
          - MQSECITEM_MQNLIST
          - MQSECITEM_MQPROC
          - MQSECITEM_MQQUEUE
          - MQSECITEM_MXADMIN
          - MQSECITEM_MXNLIST
          - MQSECITEM_MXPROC
          - MQSECITEM_MXQUEUE
          - MQSECITEM_MXTOPIC
          - MQSECTYPE_AUTHSERV
          - MQSECTYPE_CLASSES
          - MQSECTYPE_CONNAUTH
          - MQSECTYPE_SSL
          - SecurityItem
          - SecurityType
    notes: []
  - mqsc:
      name: RESET CFSTRUCT
      href: SSFKSJ_9.4.0/refadmin/q086500_.html
      positional_parameters:
        - structure-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESET_CF_STRUC
      request_href: SSFKSJ_9.4.0/refadmin/q088260_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088260_.html
      request_parameters:
        - name: CFStructName
          pcf_type: MQCFST
          type_hint: str
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: MQACT_FAIL
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: CFStructName
          pcf_type: MQCFST
          type_hint: str
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: MQACT_FAIL
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Action
          - CFStructName
          - MQACT_FAIL
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Action
          - CFStructName
          - MQACT_FAIL
    notes: []
  - mqsc:
      name: RESET CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q086510_.html
      positional_parameters:
        - (channel-name)
        - integer
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESET_CHANNEL
      request_href: SSFKSJ_9.4.0/refadmin/q088270_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088270_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQCHLD_SHARED
          pcf_type: null
          type_hint: null
        - name: MsgSeqNumber
          pcf_type: MQCFIN
          type_hint: int
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQCHLD_SHARED
          pcf_type: null
          type_hint: null
        - name: MsgSeqNumber
          pcf_type: MQCFIN
          type_hint: int
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelDisposition
          - ChannelName
          - CommandScope
          - MQCHLD_PRIVATE
          - MQCHLD_SHARED
          - MQRCCF_CHANNEL_NOT_FOUND
          - MsgSeqNumber
          - Reason
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelDisposition
          - ChannelName
          - CommandScope
          - MQCHLD_PRIVATE
          - MQCHLD_SHARED
          - MQRCCF_CHANNEL_NOT_FOUND
          - MsgSeqNumber
          - Reason
    notes: []
  - mqsc:
      name: RESET CLUSTER
      href: SSFKSJ_9.4.0/refadmin/q086520_.html
      positional_parameters:
        - (clustername)
        - qmgr-name
        - qmid
        - qmname
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESET_CLUSTER
      request_href: SSFKSJ_9.4.0/refadmin/q088280_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088280_.html
      request_parameters:
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: MQACT_FORCE_REMOVE
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: RemoveQueues
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFO_REMOVE_QUEUES_YES
          pcf_type: null
          type_hint: null
        - name: MQCFO_REMOVE_QUEUES_NO
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_ACTION_VALUE_ERROR
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: MQACT_FORCE_REMOVE
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: RemoveQueues
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFO_REMOVE_QUEUES_YES
          pcf_type: null
          type_hint: null
        - name: MQCFO_REMOVE_QUEUES_NO
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_ACTION_VALUE_ERROR
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Action
          - ClusterName
          - CommandScope
          - MQACT_FORCE_REMOVE
          - MQCFO_REMOVE_QUEUES_NO
          - MQCFO_REMOVE_QUEUES_YES
          - MQRCCF_ACTION_VALUE_ERROR
          - QMgrIdentifier
          - QMgrName
          - Reason
          - RemoveQueues
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Action
          - ClusterName
          - CommandScope
          - MQACT_FORCE_REMOVE
          - MQCFO_REMOVE_QUEUES_NO
          - MQCFO_REMOVE_QUEUES_YES
          - MQRCCF_ACTION_VALUE_ERROR
          - QMgrIdentifier
          - QMgrName
          - Reason
          - RemoveQueues
    notes: []
  - mqsc:
      name: RESET QMGR
      href: SSFKSJ_9.4.0/refadmin/q086530_.html
      positional_parameters:
        - name
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESET_Q_MGR
      request_href: SSFKSJ_9.4.0/refadmin/q088290_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088290_.html
      request_parameters:
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: MQACT_ADVANCE_LOG
          pcf_type: null
          type_hint: null
        - name: MQACT_COLLECT_STATISTICS
          pcf_type: null
          type_hint: null
        - name: MQACT_PUBSUB
          pcf_type: null
          type_hint: null
        - name: MQACT_ARCHIVE_LOG
          pcf_type: 11
          type_hint: null
        - name: MQACT_REDUCE_LOG
          pcf_type: 10
          type_hint: null
        - name: ArchivedLog
          pcf_type: MQCFST
          type_hint: str
        - name: ChildName
          pcf_type: MQCFST
          type_hint: str
        - name: ParentName
          pcf_type: MQCFST
          type_hint: str
        - name: LogReduction
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLR_AUTO
          pcf_type: null
          type_hint: null
        - name: MQLR_ONE
          pcf_type: null
          type_hint: null
        - name: MQLR_MAX
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CURRENT_LOG_EXTENT
          pcf_type: null
          type_hint: null
        - name: MQRCCF_LOG_EXTENT_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_LOG_NOT_REDUCED
          pcf_type: null
          type_hint: null
        - name: MQRC_RESOURCE_PROBLEM
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: MQACT_ADVANCE_LOG
          pcf_type: null
          type_hint: null
        - name: MQACT_COLLECT_STATISTICS
          pcf_type: null
          type_hint: null
        - name: MQACT_PUBSUB
          pcf_type: null
          type_hint: null
        - name: MQACT_ARCHIVE_LOG
          pcf_type: 11
          type_hint: null
        - name: MQACT_REDUCE_LOG
          pcf_type: 10
          type_hint: null
        - name: ArchivedLog
          pcf_type: MQCFST
          type_hint: str
        - name: ChildName
          pcf_type: MQCFST
          type_hint: str
        - name: ParentName
          pcf_type: MQCFST
          type_hint: str
        - name: LogReduction
          pcf_type: MQCFIN
          type_hint: int
        - name: MQLR_AUTO
          pcf_type: null
          type_hint: null
        - name: MQLR_ONE
          pcf_type: null
          type_hint: null
        - name: MQLR_MAX
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CURRENT_LOG_EXTENT
          pcf_type: null
          type_hint: null
        - name: MQRCCF_LOG_EXTENT_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_LOG_NOT_REDUCED
          pcf_type: null
          type_hint: null
        - name: MQRC_RESOURCE_PROBLEM
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Action
          - ArchivedLog
          - ChildName
          - LogReduction
          - MQACT_ADVANCE_LOG
          - MQACT_ARCHIVE_LOG
          - MQACT_COLLECT_STATISTICS
          - MQACT_PUBSUB
          - MQACT_REDUCE_LOG
          - MQLR_AUTO
          - MQLR_MAX
          - MQLR_ONE
          - MQRCCF_CURRENT_LOG_EXTENT
          - MQRCCF_LOG_EXTENT_NOT_FOUND
          - MQRCCF_LOG_NOT_REDUCED
          - MQRC_RESOURCE_PROBLEM
          - ParentName
          - Reason
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Action
          - ArchivedLog
          - ChildName
          - LogReduction
          - MQACT_ADVANCE_LOG
          - MQACT_ARCHIVE_LOG
          - MQACT_COLLECT_STATISTICS
          - MQACT_PUBSUB
          - MQACT_REDUCE_LOG
          - MQLR_AUTO
          - MQLR_MAX
          - MQLR_ONE
          - MQRCCF_CURRENT_LOG_EXTENT
          - MQRCCF_LOG_EXTENT_NOT_FOUND
          - MQRCCF_LOG_NOT_REDUCED
          - MQRC_RESOURCE_PROBLEM
          - ParentName
          - Reason
    notes: []
  - mqsc:
      name: RESET QSTATS
      href: SSFKSJ_9.4.0/refadmin/q086540_.html
      positional_parameters:
        - generic-qname
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESET_Q_STATS
      request_href: SSFKSJ_9.4.0/refadmin/q088310_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088310_.html
      request_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: HighQDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgDeqCount
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgEnqCount
          pcf_type: MQCFIN
          type_hint: int
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: TimeSinceReset
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: Always
          pcf_type: null
          type_hint: null
        - name: HighQDepth
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgDeqCount
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgEnqCount
          pcf_type: MQCFIN
          type_hint: int
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQSGD_COPY
          pcf_type: null
          type_hint: null
        - name: MQQSGD_SHARED
          pcf_type: null
          type_hint: null
        - name: MQQSGD_Q_MGR
          pcf_type: null
          type_hint: null
        - name: TimeSinceReset
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - HighQDepth
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MsgDeqCount
          - MsgEnqCount
          - QName
          - QSGDisposition
          - TimeSinceReset
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Always
          - HighQDepth
          - MQQSGD_COPY
          - MQQSGD_Q_MGR
          - MQQSGD_SHARED
          - MsgDeqCount
          - MsgEnqCount
          - QName
          - QSGDisposition
          - TimeSinceReset
    notes: []
  - mqsc:
      name: RESET SMDS
      href: SSFKSJ_9.4.0/refadmin/q086550_.html
      positional_parameters:
        - qmgr-name
        - structure-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESET_SMDS
      request_href: SSFKSJ_9.4.0/refadmin/q088320_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088320_.html
      request_parameters:
        - name: SMDS
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: Access
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFACCESS_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQCFACCESS_DISABLED
          pcf_type: null
          type_hint: null
        - name: Status
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFSTATUS_FAILED
          pcf_type: null
          type_hint: null
        - name: MQCFSTATUS_RECOVERED
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: SMDS
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: Access
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFACCESS_ENABLED
          pcf_type: null
          type_hint: null
        - name: MQCFACCESS_DISABLED
          pcf_type: null
          type_hint: null
        - name: Status
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCFSTATUS_FAILED
          pcf_type: null
          type_hint: null
        - name: MQCFSTATUS_RECOVERED
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Access
          - CFStrucName
          - MQCFACCESS_DISABLED
          - MQCFACCESS_ENABLED
          - MQCFSTATUS_FAILED
          - MQCFSTATUS_RECOVERED
          - SMDS
          - Status
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Access
          - CFStrucName
          - MQCFACCESS_DISABLED
          - MQCFACCESS_ENABLED
          - MQCFSTATUS_FAILED
          - MQCFSTATUS_RECOVERED
          - SMDS
          - Status
    notes: []
  - mqsc:
      name: RESET TPIPE
      href: SSFKSJ_9.4.0/refadmin/q086560_.html
      positional_parameters:
        - group-name
        - integer
        - member-name
        - qmgr-name
        - tpipe-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESET_TPIPE
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: RESOLVE CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q086570_.html
      positional_parameters:
        - (channel-name)
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESOLVE_CHANNEL
      request_href: SSFKSJ_9.4.0/refadmin/q088330_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088330_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: InDoubt
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIDO_COMMIT
          pcf_type: null
          type_hint: null
        - name: MQIDO_BACKOUT
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQCHLD_SHARED
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_INDOUBT_VALUE_ERROR
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: InDoubt
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIDO_COMMIT
          pcf_type: null
          type_hint: null
        - name: MQIDO_BACKOUT
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHLD_PRIVATE
          pcf_type: null
          type_hint: null
        - name: MQCHLD_SHARED
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_INDOUBT_VALUE_ERROR
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelDisposition
          - ChannelName
          - CommandScope
          - InDoubt
          - MQCHLD_PRIVATE
          - MQCHLD_SHARED
          - MQIDO_BACKOUT
          - MQIDO_COMMIT
          - MQRCCF_CHANNEL_NOT_FOUND
          - MQRCCF_INDOUBT_VALUE_ERROR
          - Reason
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelDisposition
          - ChannelName
          - CommandScope
          - InDoubt
          - MQCHLD_PRIVATE
          - MQCHLD_SHARED
          - MQIDO_BACKOUT
          - MQIDO_COMMIT
          - MQRCCF_CHANNEL_NOT_FOUND
          - MQRCCF_INDOUBT_VALUE_ERROR
          - Reason
    notes: []
  - mqsc:
      name: RESOLVE INDOUBT
      href: SSFKSJ_9.4.0/refadmin/q086580_.html
      positional_parameters:
        - (connection-name)
        - origin-id
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESOLVE_INDOUBT
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: RESUME QMGR
      href: SSFKSJ_9.4.0/refadmin/q086590_.html
      positional_parameters:
        - (clustername)
        - (nlname)
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_RESUME_Q_MGR
      request_href: SSFKSJ_9.4.0/refadmin/q088340_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088340_.html
      request_parameters:
        - name: Facility
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMFAC_DB2
          pcf_type: null
          type_hint: null
        - name: MQQMFAC_IMS_BRIDGE
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Facility
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMFAC_DB2
          pcf_type: null
          type_hint: null
        - name: MQQMFAC_IMS_BRIDGE
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - Facility
          - MQQMFAC_DB2
          - MQQMFAC_IMS_BRIDGE
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - Facility
          - MQQMFAC_DB2
          - MQQMFAC_IMS_BRIDGE
    notes: []
  - mqsc:
      name: RVERIFY SECURITY
      href: SSFKSJ_9.4.0/refadmin/q086600_.html
      positional_parameters:
        - (userids...)
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: null
      request_href: null
      response_href: null
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes: []
  - mqsc:
      name: SET ARCHIVE
      href: SSFKSJ_9.4.0/refadmin/q086610_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_SET_ARCHIVE
      request_href: SSFKSJ_9.4.0/refadmin/q088370_.html
      response_href: SSFKSJ_9.4.0/refadmin/q086890_.html
      request_parameters:
        - name: ParameterType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: AllocPrimary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocSecondary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocUnits
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_ALLOC_BLK
          pcf_type: null
          type_hint: null
        - name: MQSYSP_ALLOC_TRK
          pcf_type: null
          type_hint: null
        - name: MQSYSP_ALLOC_CYL
          pcf_type: null
          type_hint: null
        - name: ArchivePrefix1
          pcf_type: MQCFST
          type_hint: str
        - name: ArchivePrefix2
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveRetention
          pcf_type: MQCFIN
          type_hint: int
        - name: ArchiveUnit1
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveUnit2
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveWTOR
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: BlockSize
          pcf_type: MQCFIN
          type_hint: int
        - name: Catalog
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: Compact
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: Protect
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: QuiesceInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: RoutingCode
          pcf_type: MQCFIL
          type_hint: int
        - name: TimeStampFormat
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: MQSYSP_EXTENDED
          pcf_type: null
          type_hint: null
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AllocPrimary
          - AllocSecondary
          - AllocUnits
          - ArchivePrefix1
          - ArchivePrefix2
          - ArchiveRetention
          - ArchiveUnit1
          - ArchiveUnit2
          - ArchiveWTOR
          - BlockSize
          - Catalog
          - CommandScope
          - Compact
          - MQSYSP_ALLOC_BLK
          - MQSYSP_ALLOC_CYL
          - MQSYSP_ALLOC_TRK
          - MQSYSP_EXTENDED
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_SET
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - MQSYSP_YES
          - ParameterType
          - Protect
          - QuiesceInterval
          - RoutingCode
          - TimeStampFormat
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes: []
  - mqsc:
      name: SET AUTHREC
      href: SSFKSJ_9.4.0/refadmin/q086620_.html
      positional_parameters:
        - group-name
        - principal-name
        - profile-name
        - service-component
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_SET_AUTH_REC
      request_href: SSFKSJ_9.4.0/refadmin/q088380_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088380_.html
      request_parameters:
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_CLNTCONN_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQOT_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQOT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQOT_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQOT_REMOTE_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQOT_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQOT_TOPIC
          pcf_type: null
          type_hint: null
        - name: AuthorityAdd
          pcf_type: MQCFIL
          type_hint: int
        - name: MQAUTH_NONE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALT_USER_AUTHORITY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CHANGE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CLEAR
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONNECT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CREATE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DELETE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DISPLAY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL_EXTENDED
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PUBLISH
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SUBSCRIBE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_RESUME
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_ADMIN
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_MQI
          pcf_type: null
          type_hint: null
        - name: AuthorityRemove
          pcf_type: MQCFIL
          type_hint: int
        - name: MQAUTH_NONE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALT_USER_AUTHORITY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CHANGE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CLEAR
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONNECT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CREATE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DELETE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DISPLAY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL_EXTENDED
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PUBLISH
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SUBSCRIBE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_RESUME
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_ADMIN
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_MQI
          pcf_type: null
          type_hint: null
        - name: GroupNames
          pcf_type: MQCFSL
          type_hint: str
        - name: PrincipalNames
          pcf_type: MQCFSL
          type_hint: str
        - name: ServiceComponent
          pcf_type: MQCFST
          type_hint: str
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRC_UNKNOWN_ENTITY
          pcf_type: null
          type_hint: null
        - name: MQRCCF_AUTH_VALUE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_AUTH_VALUE_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_ENTITY_NAME_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_OBJECT_TYPE_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PROFILE_NAME_ERROR
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQOT_AUTH_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_CLNTCONN_CHANNEL
          pcf_type: null
          type_hint: null
        - name: MQOT_COMM_INFO
          pcf_type: null
          type_hint: null
        - name: MQOT_LISTENER
          pcf_type: null
          type_hint: null
        - name: MQOT_NAMELIST
          pcf_type: null
          type_hint: null
        - name: MQOT_PROCESS
          pcf_type: null
          type_hint: null
        - name: MQOT_Q
          pcf_type: null
          type_hint: null
        - name: MQOT_Q_MGR
          pcf_type: null
          type_hint: null
        - name: MQOT_REMOTE_Q_MGR_NAME
          pcf_type: null
          type_hint: null
        - name: MQOT_SERVICE
          pcf_type: null
          type_hint: null
        - name: MQOT_TOPIC
          pcf_type: null
          type_hint: null
        - name: AuthorityAdd
          pcf_type: MQCFIL
          type_hint: int
        - name: MQAUTH_NONE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALT_USER_AUTHORITY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CHANGE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CLEAR
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONNECT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CREATE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DELETE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DISPLAY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL_EXTENDED
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PUBLISH
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SUBSCRIBE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_RESUME
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_ADMIN
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_MQI
          pcf_type: null
          type_hint: null
        - name: AuthorityRemove
          pcf_type: MQCFIL
          type_hint: int
        - name: MQAUTH_NONE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALT_USER_AUTHORITY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_BROWSE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CHANGE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CLEAR
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONNECT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CREATE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DELETE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_DISPLAY
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_INQUIRE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_OUTPUT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PASS_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_ALL_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SET_IDENTITY_CONTEXT
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_CONTROL_EXTENDED
          pcf_type: null
          type_hint: null
        - name: MQAUTH_PUBLISH
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SUBSCRIBE
          pcf_type: null
          type_hint: null
        - name: MQAUTH_RESUME
          pcf_type: null
          type_hint: null
        - name: MQAUTH_SYSTEM
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_ADMIN
          pcf_type: null
          type_hint: null
        - name: MQAUTH_ALL_MQI
          pcf_type: null
          type_hint: null
        - name: GroupNames
          pcf_type: MQCFSL
          type_hint: str
        - name: PrincipalNames
          pcf_type: MQCFSL
          type_hint: str
        - name: ServiceComponent
          pcf_type: MQCFST
          type_hint: str
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRC_UNKNOWN_ENTITY
          pcf_type: null
          type_hint: null
        - name: MQRCCF_AUTH_VALUE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_AUTH_VALUE_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_ENTITY_NAME_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_OBJECT_TYPE_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PROFILE_NAME_ERROR
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AuthorityAdd
          - AuthorityRemove
          - GroupNames
          - MQAUTH_ALL
          - MQAUTH_ALL
          - MQAUTH_ALL_ADMIN
          - MQAUTH_ALL_ADMIN
          - MQAUTH_ALL_MQI
          - MQAUTH_ALL_MQI
          - MQAUTH_ALT_USER_AUTHORITY
          - MQAUTH_ALT_USER_AUTHORITY
          - MQAUTH_BROWSE
          - MQAUTH_BROWSE
          - MQAUTH_CHANGE
          - MQAUTH_CHANGE
          - MQAUTH_CLEAR
          - MQAUTH_CLEAR
          - MQAUTH_CONNECT
          - MQAUTH_CONNECT
          - MQAUTH_CONTROL
          - MQAUTH_CONTROL
          - MQAUTH_CONTROL_EXTENDED
          - MQAUTH_CONTROL_EXTENDED
          - MQAUTH_CREATE
          - MQAUTH_CREATE
          - MQAUTH_DELETE
          - MQAUTH_DELETE
          - MQAUTH_DISPLAY
          - MQAUTH_DISPLAY
          - MQAUTH_INPUT
          - MQAUTH_INPUT
          - MQAUTH_INQUIRE
          - MQAUTH_INQUIRE
          - MQAUTH_NONE
          - MQAUTH_NONE
          - MQAUTH_OUTPUT
          - MQAUTH_OUTPUT
          - MQAUTH_PASS_ALL_CONTEXT
          - MQAUTH_PASS_ALL_CONTEXT
          - MQAUTH_PASS_IDENTITY_CONTEXT
          - MQAUTH_PASS_IDENTITY_CONTEXT
          - MQAUTH_PUBLISH
          - MQAUTH_PUBLISH
          - MQAUTH_RESUME
          - MQAUTH_RESUME
          - MQAUTH_SET
          - MQAUTH_SET
          - MQAUTH_SET_ALL_CONTEXT
          - MQAUTH_SET_ALL_CONTEXT
          - MQAUTH_SET_IDENTITY_CONTEXT
          - MQAUTH_SET_IDENTITY_CONTEXT
          - MQAUTH_SUBSCRIBE
          - MQAUTH_SUBSCRIBE
          - MQAUTH_SYSTEM
          - MQAUTH_SYSTEM
          - MQOT_AUTH_INFO
          - MQOT_CHANNEL
          - MQOT_CLNTCONN_CHANNEL
          - MQOT_COMM_INFO
          - MQOT_LISTENER
          - MQOT_NAMELIST
          - MQOT_PROCESS
          - MQOT_Q
          - MQOT_Q_MGR
          - MQOT_REMOTE_Q_MGR_NAME
          - MQOT_SERVICE
          - MQOT_TOPIC
          - MQRCCF_AUTH_VALUE_ERROR
          - MQRCCF_AUTH_VALUE_MISSING
          - MQRCCF_ENTITY_NAME_MISSING
          - MQRCCF_OBJECT_TYPE_MISSING
          - MQRCCF_PROFILE_NAME_ERROR
          - MQRC_UNKNOWN_ENTITY
          - ObjectType
          - PrincipalNames
          - ProfileName
          - Reason
          - ServiceComponent
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AuthorityAdd
          - AuthorityRemove
          - GroupNames
          - MQAUTH_ALL
          - MQAUTH_ALL
          - MQAUTH_ALL_ADMIN
          - MQAUTH_ALL_ADMIN
          - MQAUTH_ALL_MQI
          - MQAUTH_ALL_MQI
          - MQAUTH_ALT_USER_AUTHORITY
          - MQAUTH_ALT_USER_AUTHORITY
          - MQAUTH_BROWSE
          - MQAUTH_BROWSE
          - MQAUTH_CHANGE
          - MQAUTH_CHANGE
          - MQAUTH_CLEAR
          - MQAUTH_CLEAR
          - MQAUTH_CONNECT
          - MQAUTH_CONNECT
          - MQAUTH_CONTROL
          - MQAUTH_CONTROL
          - MQAUTH_CONTROL_EXTENDED
          - MQAUTH_CONTROL_EXTENDED
          - MQAUTH_CREATE
          - MQAUTH_CREATE
          - MQAUTH_DELETE
          - MQAUTH_DELETE
          - MQAUTH_DISPLAY
          - MQAUTH_DISPLAY
          - MQAUTH_INPUT
          - MQAUTH_INPUT
          - MQAUTH_INQUIRE
          - MQAUTH_INQUIRE
          - MQAUTH_NONE
          - MQAUTH_NONE
          - MQAUTH_OUTPUT
          - MQAUTH_OUTPUT
          - MQAUTH_PASS_ALL_CONTEXT
          - MQAUTH_PASS_ALL_CONTEXT
          - MQAUTH_PASS_IDENTITY_CONTEXT
          - MQAUTH_PASS_IDENTITY_CONTEXT
          - MQAUTH_PUBLISH
          - MQAUTH_PUBLISH
          - MQAUTH_RESUME
          - MQAUTH_RESUME
          - MQAUTH_SET
          - MQAUTH_SET
          - MQAUTH_SET_ALL_CONTEXT
          - MQAUTH_SET_ALL_CONTEXT
          - MQAUTH_SET_IDENTITY_CONTEXT
          - MQAUTH_SET_IDENTITY_CONTEXT
          - MQAUTH_SUBSCRIBE
          - MQAUTH_SUBSCRIBE
          - MQAUTH_SYSTEM
          - MQAUTH_SYSTEM
          - MQOT_AUTH_INFO
          - MQOT_CHANNEL
          - MQOT_CLNTCONN_CHANNEL
          - MQOT_COMM_INFO
          - MQOT_LISTENER
          - MQOT_NAMELIST
          - MQOT_PROCESS
          - MQOT_Q
          - MQOT_Q_MGR
          - MQOT_REMOTE_Q_MGR_NAME
          - MQOT_SERVICE
          - MQOT_TOPIC
          - MQRCCF_AUTH_VALUE_ERROR
          - MQRCCF_AUTH_VALUE_MISSING
          - MQRCCF_ENTITY_NAME_MISSING
          - MQRCCF_OBJECT_TYPE_MISSING
          - MQRCCF_PROFILE_NAME_ERROR
          - MQRC_UNKNOWN_ENTITY
          - ObjectType
          - PrincipalNames
          - ProfileName
          - Reason
          - ServiceComponent
    notes: []
  - mqsc:
      name: SET CHLAUTH
      href: SSFKSJ_9.4.0/refadmin/q086630_.html
      positional_parameters:
        - channel-profile-name
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_SET_CHLAUTH_REC
      request_href: SSFKSJ_9.4.0/refadmin/q088390_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088390_.html
      request_parameters:
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAUT_BLOCKUSER
          pcf_type: null
          type_hint: null
        - name: MQCAUT_BLOCKADDR
          pcf_type: null
          type_hint: null
        - name: MQCAUT_SSLPEERMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_ADDRESSMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_USERMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_QMGRMAP
          pcf_type: null
          type_hint: null
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: MQACT_ADD
          pcf_type: null
          type_hint: null
        - name: MQACT_REPLACE
          pcf_type: null
          type_hint: null
        - name: MQACT_REMOVE
          pcf_type: null
          type_hint: null
        - name: MQACT_REMOVEALL
          pcf_type: null
          type_hint: null
        - name: Address
          pcf_type: MQCFST
          type_hint: str
        - name: AddrList
          pcf_type: MQCFSL
          type_hint: str
        - name: CheckClient
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHK_REQUIRED_ADMIN
          pcf_type: null
          type_hint: null
        - name: MQCHK_REQUIRED
          pcf_type: null
          type_hint: null
        - name: MQCHK_AS_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ClntUser
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: MCAUser
          pcf_type: MQCFST
          type_hint: str
        - name: QMName
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCertIssuer
          pcf_type: MQCFST
          type_hint: str
        - name: SSLPeer
          pcf_type: MQCFST
          type_hint: str
        - name: UserList
          pcf_type: MQCFSL
          type_hint: str
        - name: UserSrc
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSRC_MAP
          pcf_type: null
          type_hint: null
        - name: MQUSRC_NOACCESS
          pcf_type: null
          type_hint: null
        - name: MQUSRC_CHANNEL
          pcf_type: null
          type_hint: null
        - name: Warn
          pcf_type: MQCFIN
          type_hint: int
        - name: MQWARN_NO
          pcf_type: null
          type_hint: null
        - name: MQWARN_YES
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHLAUTH_TYPE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHLAUTH_ACTION_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHLAUTH_USERSRC_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_WRONG_CHLAUTH_TYPE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHLAUTH_ALREADY_EXISTS
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCAUT_BLOCKUSER
          pcf_type: null
          type_hint: null
        - name: MQCAUT_BLOCKADDR
          pcf_type: null
          type_hint: null
        - name: MQCAUT_SSLPEERMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_ADDRESSMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_USERMAP
          pcf_type: null
          type_hint: null
        - name: MQCAUT_QMGRMAP
          pcf_type: null
          type_hint: null
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: MQACT_ADD
          pcf_type: null
          type_hint: null
        - name: MQACT_REPLACE
          pcf_type: null
          type_hint: null
        - name: MQACT_REMOVE
          pcf_type: null
          type_hint: null
        - name: MQACT_REMOVEALL
          pcf_type: null
          type_hint: null
        - name: Address
          pcf_type: MQCFST
          type_hint: str
        - name: AddrList
          pcf_type: MQCFSL
          type_hint: str
        - name: CheckClient
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCHK_REQUIRED_ADMIN
          pcf_type: null
          type_hint: null
        - name: MQCHK_REQUIRED
          pcf_type: null
          type_hint: null
        - name: MQCHK_AS_Q_MGR
          pcf_type: null
          type_hint: null
        - name: ClntUser
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: MCAUser
          pcf_type: MQCFST
          type_hint: str
        - name: QMName
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCertIssuer
          pcf_type: MQCFST
          type_hint: str
        - name: SSLPeer
          pcf_type: MQCFST
          type_hint: str
        - name: UserList
          pcf_type: MQCFSL
          type_hint: str
        - name: UserSrc
          pcf_type: MQCFIN
          type_hint: int
        - name: MQUSRC_MAP
          pcf_type: null
          type_hint: null
        - name: MQUSRC_NOACCESS
          pcf_type: null
          type_hint: null
        - name: MQUSRC_CHANNEL
          pcf_type: null
          type_hint: null
        - name: Warn
          pcf_type: MQCFIN
          type_hint: int
        - name: MQWARN_NO
          pcf_type: null
          type_hint: null
        - name: MQWARN_YES
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHLAUTH_TYPE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHLAUTH_ACTION_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHLAUTH_USERSRC_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_WRONG_CHLAUTH_TYPE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHLAUTH_ALREADY_EXISTS
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Action
          - AddrList
          - Address
          - CheckClient
          - ClntUser
          - CommandScope
          - Custom
          - Description
          - MCAUser
          - MQACT_ADD
          - MQACT_REMOVE
          - MQACT_REMOVEALL
          - MQACT_REPLACE
          - MQCAUT_ADDRESSMAP
          - MQCAUT_BLOCKADDR
          - MQCAUT_BLOCKUSER
          - MQCAUT_QMGRMAP
          - MQCAUT_SSLPEERMAP
          - MQCAUT_USERMAP
          - MQCHK_AS_Q_MGR
          - MQCHK_REQUIRED
          - MQCHK_REQUIRED_ADMIN
          - MQRCCF_CHLAUTH_ACTION_ERROR
          - MQRCCF_CHLAUTH_ALREADY_EXISTS
          - MQRCCF_CHLAUTH_TYPE_ERROR
          - MQRCCF_CHLAUTH_USERSRC_ERROR
          - MQRCCF_WRONG_CHLAUTH_TYPE
          - MQUSRC_CHANNEL
          - MQUSRC_MAP
          - MQUSRC_NOACCESS
          - MQWARN_NO
          - MQWARN_YES
          - ProfileName
          - QMName
          - Reason
          - SSLCertIssuer
          - SSLPeer
          - Type
          - UserList
          - UserSrc
          - Warn
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Action
          - AddrList
          - Address
          - CheckClient
          - ClntUser
          - CommandScope
          - Custom
          - Description
          - MCAUser
          - MQACT_ADD
          - MQACT_REMOVE
          - MQACT_REMOVEALL
          - MQACT_REPLACE
          - MQCAUT_ADDRESSMAP
          - MQCAUT_BLOCKADDR
          - MQCAUT_BLOCKUSER
          - MQCAUT_QMGRMAP
          - MQCAUT_SSLPEERMAP
          - MQCAUT_USERMAP
          - MQCHK_AS_Q_MGR
          - MQCHK_REQUIRED
          - MQCHK_REQUIRED_ADMIN
          - MQRCCF_CHLAUTH_ACTION_ERROR
          - MQRCCF_CHLAUTH_ALREADY_EXISTS
          - MQRCCF_CHLAUTH_TYPE_ERROR
          - MQRCCF_CHLAUTH_USERSRC_ERROR
          - MQRCCF_WRONG_CHLAUTH_TYPE
          - MQUSRC_CHANNEL
          - MQUSRC_MAP
          - MQUSRC_NOACCESS
          - MQWARN_NO
          - MQWARN_YES
          - ProfileName
          - QMName
          - Reason
          - SSLCertIssuer
          - SSLPeer
          - Type
          - UserList
          - UserSrc
          - Warn
    notes: []
  - mqsc:
      name: SET LOG
      href: SSFKSJ_9.4.0/refadmin/q129100_.html
      positional_parameters:
        - name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_SET_LOG
      request_href: SSFKSJ_9.4.0/refadmin/q088400_.html
      response_href: SSFKSJ_9.4.0/refadmin/q129110_.html
      request_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: Optional
          pcf_type: null
          type_hint: null
        - name: Optional
          pcf_type: null
          type_hint: null
        - name: ParameterType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: DeallocateInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: LogCompression
          pcf_type: MQCFIN
          type_hint: int
        - name: MQCOMPRESS_NONE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_RLE
          pcf_type: null
          type_hint: null
        - name: MQCOMPRESS_ANY
          pcf_type: null
          type_hint: null
        - name: MaxArchiveLog
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxConcurrentOffloads
          pcf_type: MQCFIN
          type_hint: int
        - name: MaxReadTapeUnits
          pcf_type: MQCFIN
          type_hint: int
        - name: OutputBufferCount
          pcf_type: MQCFIN
          type_hint: int
        - name: zHyperWrite
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
        - name: zHyperLink
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_NO
          pcf_type: null
          type_hint: null
        - name: MQSYSP_YES
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: Optional
          pcf_type: null
          type_hint: null
        - name: ParameterType
          pcf_type: MQCFIN
          type_hint: int
        - name: Archive
          pcf_type: MQCFST
          type_hint: str
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_LOG_EXTENT_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CURRENT_LOG_EXTENT
          pcf_type: null
          type_hint: null
        - name: MQRCCF_LOG_TYPE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_LOG_EXTENT_ERROR
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - DeallocateInterval
          - LogCompression
          - MQCOMPRESS_ANY
          - MQCOMPRESS_NONE
          - MQCOMPRESS_RLE
          - MQSYSP_NO
          - MQSYSP_NO
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_SET
          - MQSYSP_YES
          - MQSYSP_YES
          - MaxArchiveLog
          - MaxConcurrentOffloads
          - MaxReadTapeUnits
          - Optional
          - Optional
          - OutputBufferCount
          - ParameterType
          - Required
          - zHyperLink
          - zHyperWrite
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Archive
          - MQRCCF_CURRENT_LOG_EXTENT
          - MQRCCF_LOG_EXTENT_ERROR
          - MQRCCF_LOG_EXTENT_NOT_FOUND
          - MQRCCF_LOG_TYPE_ERROR
          - Optional
          - ParameterType
          - Reason
          - Required
    notes: []
  - mqsc:
      name: SET POLICY
      href: SSFKSJ_9.4.0/refadmin/q120800_.html
      positional_parameters:
        - (distinguished-name)
        - (policy-name)
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_SET_POLICY
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: SET SYSTEM
      href: SSFKSJ_9.4.0/refadmin/q086650_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_SET_SYSTEM
      request_href: SSFKSJ_9.4.0/refadmin/q088410_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088410_.html
      request_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: Optional
          pcf_type: null
          type_hint: null
        - name: Optional
          pcf_type: null
          type_hint: null
        - name: ParameterType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: CheckpointCount
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: Exclmsg
          pcf_type: MQCFSL
          type_hint: str
        - name: Service
          pcf_type: MQCFST
          type_hint: str
        - name: SMFAcctIntervalMins
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFAcctIntervalSecs
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFStatsIntervalMins
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFStatsIntervalSecs
          pcf_type: MQCFIN
          type_hint: int
        - name: TraceSize
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: Required
          pcf_type: null
          type_hint: null
        - name: Optional
          pcf_type: null
          type_hint: null
        - name: Optional
          pcf_type: null
          type_hint: null
        - name: ParameterType
          pcf_type: MQCFIN
          type_hint: int
        - name: MQSYSP_TYPE_INITIAL
          pcf_type: null
          type_hint: null
        - name: MQSYSP_TYPE_SET
          pcf_type: null
          type_hint: null
        - name: CheckpointCount
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: Exclmsg
          pcf_type: MQCFSL
          type_hint: str
        - name: Service
          pcf_type: MQCFST
          type_hint: str
        - name: SMFAcctIntervalMins
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFAcctIntervalSecs
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFStatsIntervalMins
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFStatsIntervalSecs
          pcf_type: MQCFIN
          type_hint: int
        - name: TraceSize
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CheckpointCount
          - CommandScope
          - Exclmsg
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_SET
          - Optional
          - Optional
          - ParameterType
          - Required
          - SMFAcctIntervalMins
          - SMFAcctIntervalSecs
          - SMFStatsIntervalMins
          - SMFStatsIntervalSecs
          - Service
          - TraceSize
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CheckpointCount
          - CommandScope
          - Exclmsg
          - MQSYSP_TYPE_INITIAL
          - MQSYSP_TYPE_SET
          - Optional
          - Optional
          - ParameterType
          - Required
          - SMFAcctIntervalMins
          - SMFAcctIntervalSecs
          - SMFStatsIntervalMins
          - SMFStatsIntervalSecs
          - Service
          - TraceSize
    notes: []
  - mqsc:
      name: START CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q086660_.html
      positional_parameters:
        - (channel-name)
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_START_CHANNEL
      request_href: SSFKSJ_9.4.0/refadmin/q088430_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088430_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_PARM_SYNTAX_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PARM_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_IN_USE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_NO_STORAGE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_COMMAND_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PORT_IN_USE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_BIND_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_SOCKET_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_HOST_NOT_AVAILABLE
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_PARM_SYNTAX_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PARM_MISSING
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_IN_USE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_NO_STORAGE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_COMMAND_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_PORT_IN_USE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_BIND_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_SOCKET_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_HOST_NOT_AVAILABLE
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelName
          - ChannelType
          - MQRCCF_BIND_FAILED
          - MQRCCF_CHANNEL_IN_USE
          - MQRCCF_CHANNEL_NOT_FOUND
          - MQRCCF_COMMAND_FAILED
          - MQRCCF_HOST_NOT_AVAILABLE
          - MQRCCF_NO_STORAGE
          - MQRCCF_PARM_MISSING
          - MQRCCF_PARM_SYNTAX_ERROR
          - MQRCCF_PORT_IN_USE
          - MQRCCF_SOCKET_ERROR
          - Reason
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelName
          - ChannelType
          - MQRCCF_BIND_FAILED
          - MQRCCF_CHANNEL_IN_USE
          - MQRCCF_CHANNEL_NOT_FOUND
          - MQRCCF_COMMAND_FAILED
          - MQRCCF_HOST_NOT_AVAILABLE
          - MQRCCF_NO_STORAGE
          - MQRCCF_PARM_MISSING
          - MQRCCF_PARM_SYNTAX_ERROR
          - MQRCCF_PORT_IN_USE
          - MQRCCF_SOCKET_ERROR
          - Reason
    notes: []
  - mqsc:
      name: START CHINIT
      href: SSFKSJ_9.4.0/refadmin/q086680_.html
      positional_parameters:
        - jcl-substitution
        - qmgr-name
        - string
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_START_CHINIT
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: START CMDSERV
      href: SSFKSJ_9.4.0/refadmin/q086690_.html
      positional_parameters: []
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_START_CMDSERV
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: START LISTENER
      href: SSFKSJ_9.4.0/refadmin/q086700_.html
      positional_parameters:
        - name
        - port-number
        - qmgr-name
        - string
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_START_LISTENER
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: START QMGR
      href: SSFKSJ_9.4.0/refadmin/q086710_.html
      positional_parameters:
        - backward-migration-target-vrm
        - jcl-substitution
        - member-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_START_Q_MGR
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: START SERVICE
      href: SSFKSJ_9.4.0/refadmin/q086720_.html
      positional_parameters:
        - service-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_START_SERVICE
      request_href: SSFKSJ_9.4.0/refadmin/q088460_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088460_.html
      request_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: MQIACF_IGNORE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_NO_START_CMD
          pcf_type: null
          type_hint: null
        - name: MQRCCF_SERVICE_RUNNING
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: MQIACF_IGNORE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_NO_START_CMD
          pcf_type: null
          type_hint: null
        - name: MQRCCF_SERVICE_RUNNING
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - MQIACF_IGNORE_STATE
          - MQIS_NO
          - MQIS_YES
          - MQRCCF_NO_START_CMD
          - MQRCCF_SERVICE_RUNNING
          - Reason
          - ServiceName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - MQIACF_IGNORE_STATE
          - MQIS_NO
          - MQIS_YES
          - MQRCCF_NO_START_CMD
          - MQRCCF_SERVICE_RUNNING
          - Reason
          - ServiceName
    notes: []
  - mqsc:
      name: START SMDSCONN
      href: SSFKSJ_9.4.0/refadmin/q086730_.html
      positional_parameters:
        - qmgr-name
        - structure-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_START_SMDSCONN
      request_href: SSFKSJ_9.4.0/refadmin/q088470_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088470_.html
      request_parameters:
        - name: SMDSConn
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: SMDSConn
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFStrucName
          - CommandScope
          - SMDSConn
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFStrucName
          - CommandScope
          - SMDSConn
    notes: []
  - mqsc:
      name: START TRACE
      href: SSFKSJ_9.4.0/refadmin/q086740_.html
      positional_parameters:
        - integer
        - qmgr-name
        - string
        - userid
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_START_TRACE
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: STOP CHANNEL
      href: SSFKSJ_9.4.0/refadmin/q086750_.html
      positional_parameters:
        - (channel-name)
        - (connection-name)
        - (qmname)
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_STOP_CHANNEL
      request_href: SSFKSJ_9.4.0/refadmin/q088490_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088490_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: ClientIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHANNEL_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_MODE_VALUE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_MQCONN_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_MQOPEN_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_MQSET_FAILED
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: ClientIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_CHANNEL_DISABLED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_ACTIVE
          pcf_type: null
          type_hint: null
        - name: MQRCCF_CHANNEL_NOT_FOUND
          pcf_type: null
          type_hint: null
        - name: MQRCCF_MODE_VALUE_ERROR
          pcf_type: null
          type_hint: null
        - name: MQRCCF_MQCONN_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_MQOPEN_FAILED
          pcf_type: null
          type_hint: null
        - name: MQRCCF_MQSET_FAILED
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelName
          - ChannelType
          - ClientIdentifier
          - MQRCCF_CHANNEL_DISABLED
          - MQRCCF_CHANNEL_NOT_ACTIVE
          - MQRCCF_CHANNEL_NOT_FOUND
          - MQRCCF_MODE_VALUE_ERROR
          - MQRCCF_MQCONN_FAILED
          - MQRCCF_MQOPEN_FAILED
          - MQRCCF_MQSET_FAILED
          - Reason
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelName
          - ChannelType
          - ClientIdentifier
          - MQRCCF_CHANNEL_DISABLED
          - MQRCCF_CHANNEL_NOT_ACTIVE
          - MQRCCF_CHANNEL_NOT_FOUND
          - MQRCCF_MODE_VALUE_ERROR
          - MQRCCF_MQCONN_FAILED
          - MQRCCF_MQOPEN_FAILED
          - MQRCCF_MQSET_FAILED
          - Reason
    notes: []
  - mqsc:
      name: STOP CHINIT
      href: SSFKSJ_9.4.0/refadmin/q086770_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_STOP_CHINIT
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: STOP CMDSERV
      href: SSFKSJ_9.4.0/refadmin/q086780_.html
      positional_parameters: []
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_STOP_CMDSERV
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: STOP CONN
      href: SSFKSJ_9.4.0/refadmin/q086790_.html
      positional_parameters:
        - connection-identifier
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_STOP_CONN
      request_href: SSFKSJ_9.4.0/refadmin/q088520_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters:
        - name: ConnectionId
          pcf_type: MQCFBS
          type_hint: bytes
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ConnectionId
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: STOP LISTENER
      href: SSFKSJ_9.4.0/refadmin/q086800_.html
      positional_parameters:
        - name
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_STOP_LISTENER
      request_href: null
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-request-doc-not-found
      - pcf-response-doc-not-found
  - mqsc:
      name: STOP QMGR
      href: SSFKSJ_9.4.0/refadmin/q086810_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_STOP_Q_MGR
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: STOP SERVICE
      href: SSFKSJ_9.4.0/refadmin/q086820_.html
      positional_parameters:
        - service-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_STOP_SERVICE
      request_href: SSFKSJ_9.4.0/refadmin/q088530_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088530_.html
      request_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: MQIACF_IGNORE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_NO_STOP_CMD
          pcf_type: null
          type_hint: null
        - name: MQRCCF_SERVICE_STOPPED
          pcf_type: null
          type_hint: null
      response_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: MQIACF_IGNORE_STATE
          pcf_type: null
          type_hint: null
        - name: MQIS_NO
          pcf_type: null
          type_hint: null
        - name: MQIS_YES
          pcf_type: null
          type_hint: null
        - name: Reason
          pcf_type: MQLONG
          type_hint: null
        - name: MQRCCF_NO_STOP_CMD
          pcf_type: null
          type_hint: null
        - name: MQRCCF_SERVICE_STOPPED
          pcf_type: null
          type_hint: null
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - MQIACF_IGNORE_STATE
          - MQIS_NO
          - MQIS_YES
          - MQRCCF_NO_STOP_CMD
          - MQRCCF_SERVICE_STOPPED
          - Reason
          - ServiceName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - MQIACF_IGNORE_STATE
          - MQIS_NO
          - MQIS_YES
          - MQRCCF_NO_STOP_CMD
          - MQRCCF_SERVICE_STOPPED
          - Reason
          - ServiceName
    notes: []
  - mqsc:
      name: STOP SMDSCONN
      href: SSFKSJ_9.4.0/refadmin/q086830_.html
      positional_parameters:
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_STOP_SMDSCONN
      request_href: SSFKSJ_9.4.0/refadmin/q088540_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088540_.html
      request_parameters:
        - name: SMDSConn
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: SMDSConn
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFStrucName
          - CommandScope
          - SMDSConn
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFStrucName
          - CommandScope
          - SMDSConn
    notes: []
  - mqsc:
      name: STOP TRACE
      href: SSFKSJ_9.4.0/refadmin/q086840_.html
      positional_parameters:
        - integer
        - qmgr-name
        - string
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_STOP_TRACE
      request_href: SSFKSJ_9.4.0/refdev/q091020_.html
      response_href: SSFKSJ_9.4.0/refadmin/STXNRM_3.19.5/managerapi402p.html
      request_parameters: []
      response_parameters: []
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped: []
    notes:
      - pcf-response-doc-not-found
  - mqsc:
      name: SUSPEND QMGR
      href: SSFKSJ_9.4.0/refadmin/q086850_.html
      positional_parameters:
        - (clustername)
        - (nlname)
        - qmgr-name
      input_parameters: []
      output_parameters: []
      section_sources:
        {}
    pcf:
      command: MQCMD_SUSPEND_Q_MGR
      request_href: SSFKSJ_9.4.0/refadmin/q088550_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088550_.html
      request_parameters:
        - name: Facility
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMFAC_DB2
          pcf_type: null
          type_hint: null
        - name: MQQMFAC_IMS_BRIDGE
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Facility
          pcf_type: MQCFIN
          type_hint: int
        - name: MQQMFAC_DB2
          pcf_type: null
          type_hint: null
        - name: MQQMFAC_IMS_BRIDGE
          pcf_type: null
          type_hint: null
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - Facility
          - MQQMFAC_DB2
          - MQQMFAC_IMS_BRIDGE
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - Facility
          - MQQMFAC_DB2
          - MQQMFAC_IMS_BRIDGE
    notes: []
```

## Notes and gaps
- Display commands mix filter keywords and attributes; parameter descriptions are treated as output attributes for this first pass and need manual separation.
- MQSC parameter types are not extracted; only PCF parameter types are captured and type hints are inferred from the PCF C-structure names.
- Response pages are discovered via IBM Docs search and may be missing or misclassified for some commands.
- Section parsing ignores syntax diagram content, which means parameters only documented in diagrams may be missing.
- Mapping suggestions are name-based heuristics and will need refinement for conflicts and mixed-type responses.
