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
generated_at: 2026-01-11T23:14:37Z
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
      request_parameters: []
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
        - name: CCSID
          pcf_type: MQCFIN
          type_hint: int
        - name: CommEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: Encoding
          pcf_type: MQCFIN
          type_hint: int
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
        - name: NewSubHistory
          pcf_type: MQCFIN
          type_hint: int
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
        pcf_unmapped: []
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
        - name: Sessions
          pcf_type: MQCFIN
          type_hint: int
        - name: Socket
          pcf_type: MQCFIN
          type_hint: int
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
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
        - name: AccountingConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: AccountingInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ActivityRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: AdoptNewMCACheck
          pcf_type: MQCFIN
          type_hint: int
        - name: AdoptNewMCAType
          pcf_type: MQCFIN
          type_hint: int
        - name: AuthorityEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: AuthorityEventScope
          pcf_type: MQCFIN
          type_hint: int
        - name: BridgeEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: CertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: CertificateValPolicy
          pcf_type: MQCFIN
          type_hint: int
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAutoDef
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAutoDefEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAutoDefExit
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAuthenticationRecords
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelInitiatorControl
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
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
        - name: ChinitTraceTableSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderMonitoringDefault
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderStatistics
          pcf_type: MQCFIN
          type_hint: int
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
        - name: CodedCharSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandServerControl
          pcf_type: MQCFIN
          type_hint: int
        - name: ConfigurationEvent
          pcf_type: MQCFIN
          type_hint: int
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
        - name: DefXmitQName
          pcf_type: MQCFST
          type_hint: str
        - name: DNSGroup
          pcf_type: MQCFST
          type_hint: str
        - name: DNSWLM
          pcf_type: MQCFIN
          type_hint: int
        - name: ExpiryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: EncryptionPolicySuiteB
          pcf_type: MQCFIL
          type_hint: int
        - name: Force
          pcf_type: MQCFIN
          type_hint: int
        - name: GroupUR
          pcf_type: MQCFIN
          type_hint: int
        - name: IGQPutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: IGQUserId
          pcf_type: MQCFST
          type_hint: str
        - name: ImageInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ImageLogLength
          pcf_type: MQCFIN
          type_hint: int
        - name: ImageRecoverObject
          pcf_type: MQCFST
          type_hint: str
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: ImageSchedule
          pcf_type: MQCFST
          type_hint: str
        - name: InhibitEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: InitialKey
          pcf_type: MQCFST
          type_hint: str
        - name: IntraGroupQueuing
          pcf_type: MQCFIN
          type_hint: int
        - name: IPAddressVersion
          pcf_type: MQCFIN
          type_hint: int
        - name: ListenerTimer
          pcf_type: MQCFIN
          type_hint: int
        - name: LocalEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: LoggerEvent
          pcf_type: MQCFIN
          type_hint: int
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
        - name: MaxUncommittedMsgs
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgMarkBrowseInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
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
        - name: PubSubClus
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubMaxMsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubMode
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubNPInputMsg
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubNPResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubSyncPoint
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrDesc
          pcf_type: MQCFST
          type_hint: str
        - name: QSGCertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: QueueAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeout
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutMin
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutType
          pcf_type: MQCFIN
          type_hint: int
        - name: RemoteEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: RepositoryName
          pcf_type: MQCFST
          type_hint: str
        - name: RepositoryNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: RevDns
          pcf_type: MQCFIN
          type_hint: int
        - name: SecurityCase
          pcf_type: MQCFIN
          type_hint: int
        - name: SharedQQmgrName
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLCRLNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCryptoHardware
          pcf_type: MQCFST
          type_hint: str
        - name: SSLEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLFipsRequired
          pcf_type: MQCFIN
          type_hint: int
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
        - name: StatisticsInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPKeepAlive
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPName
          pcf_type: MQCFST
          type_hint: str
        - name: TCPStackType
          pcf_type: MQCFIN
          type_hint: int
        - name: TraceRouteRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: TreeLifeTime
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerInterval
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: AccountingConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: AccountingInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ActivityRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: AdoptNewMCACheck
          pcf_type: MQCFIN
          type_hint: int
        - name: AdoptNewMCAType
          pcf_type: MQCFIN
          type_hint: int
        - name: AuthorityEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: AuthorityEventScope
          pcf_type: MQCFIN
          type_hint: int
        - name: BridgeEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: CertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: CertificateValPolicy
          pcf_type: MQCFIN
          type_hint: int
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAutoDef
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAutoDefEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAutoDefExit
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAuthenticationRecords
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelInitiatorControl
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
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
        - name: ChinitTraceTableSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderMonitoringDefault
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderStatistics
          pcf_type: MQCFIN
          type_hint: int
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
        - name: CodedCharSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandServerControl
          pcf_type: MQCFIN
          type_hint: int
        - name: ConfigurationEvent
          pcf_type: MQCFIN
          type_hint: int
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
        - name: DefXmitQName
          pcf_type: MQCFST
          type_hint: str
        - name: DNSGroup
          pcf_type: MQCFST
          type_hint: str
        - name: DNSWLM
          pcf_type: MQCFIN
          type_hint: int
        - name: ExpiryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: EncryptionPolicySuiteB
          pcf_type: MQCFIL
          type_hint: int
        - name: Force
          pcf_type: MQCFIN
          type_hint: int
        - name: GroupUR
          pcf_type: MQCFIN
          type_hint: int
        - name: IGQPutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: IGQUserId
          pcf_type: MQCFST
          type_hint: str
        - name: ImageInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ImageLogLength
          pcf_type: MQCFIN
          type_hint: int
        - name: ImageRecoverObject
          pcf_type: MQCFST
          type_hint: str
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: ImageSchedule
          pcf_type: MQCFST
          type_hint: str
        - name: InhibitEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: InitialKey
          pcf_type: MQCFST
          type_hint: str
        - name: IntraGroupQueuing
          pcf_type: MQCFIN
          type_hint: int
        - name: IPAddressVersion
          pcf_type: MQCFIN
          type_hint: int
        - name: ListenerTimer
          pcf_type: MQCFIN
          type_hint: int
        - name: LocalEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: LoggerEvent
          pcf_type: MQCFIN
          type_hint: int
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
        - name: MaxUncommittedMsgs
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: MQIStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgMarkBrowseInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
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
        - name: PubSubClus
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubMaxMsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubMode
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubNPInputMsg
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubNPResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubSyncPoint
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrDesc
          pcf_type: MQCFST
          type_hint: str
        - name: QSGCertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: QueueAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeout
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutMin
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutType
          pcf_type: MQCFIN
          type_hint: int
        - name: RemoteEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: RepositoryName
          pcf_type: MQCFST
          type_hint: str
        - name: RepositoryNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: RevDns
          pcf_type: MQCFIN
          type_hint: int
        - name: SecurityCase
          pcf_type: MQCFIN
          type_hint: int
        - name: SharedQQmgrName
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLCRLNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCryptoHardware
          pcf_type: MQCFST
          type_hint: str
        - name: SSLEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLFipsRequired
          pcf_type: MQCFIN
          type_hint: int
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
        - name: StatisticsInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPKeepAlive
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPName
          pcf_type: MQCFST
          type_hint: str
        - name: TCPStackType
          pcf_type: MQCFIN
          type_hint: int
        - name: TraceRouteRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: TreeLifeTime
          pcf_type: MQCFIN
          type_hint: int
        - name: TriggerInterval
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          FORCE: Force
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
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
          - MQIAccounting
          - MQIStatistics
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
          - ReceiveTimeout
          - ReceiveTimeoutMin
          - ReceiveTimeoutType
          - RemoteEvent
          - RepositoryName
          - RepositoryNamelist
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
          - MQIAccounting
          - MQIStatistics
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
          - ReceiveTimeout
          - ReceiveTimeoutMin
          - ReceiveTimeoutType
          - RemoteEvent
          - RepositoryName
          - RepositoryNamelist
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
        - name: ServiceDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceType
          pcf_type: MQCFIN
          type_hint: int
        - name: StartArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StartCommand
          pcf_type: MQCFST
          type_hint: str
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
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
          - QName
          - QSGDisposition
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - QName
          - QSGDisposition
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
      request_parameters: []
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
        - name: CCSID
          pcf_type: MQCFIN
          type_hint: int
        - name: CommEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: Encoding
          pcf_type: MQCFIN
          type_hint: int
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
        - name: NewSubHistory
          pcf_type: MQCFIN
          type_hint: int
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
        pcf_unmapped: []
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
        - name: Sessions
          pcf_type: MQCFIN
          type_hint: int
        - name: Socket
          pcf_type: MQCFIN
          type_hint: int
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
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
        - name: ServiceDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ServiceType
          pcf_type: MQCFIN
          type_hint: int
        - name: StartArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StartCommand
          pcf_type: MQCFST
          type_hint: str
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
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
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
      response_parameters:
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
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
          - ObjectType
          - PrincipalNames
          - ProfileName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - GroupNames
          - IgnoreState
          - ObjectType
          - PrincipalNames
          - ProfileName
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
      request_href: SSFKSJ_9.4.0/refadmin/q087120_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087130_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelTable
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          IGNSTATE:
            - IgnoreState
        unmapped:
          - CHLTABLE
          - CMDSCOPE
          - QSGDISP
        pcf_unmapped:
          - ChannelName
          - ChannelTable
          - ChannelType
          - CommandScope
          - IgnoreState
          - QSGDisposition
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelName
          - ChannelType
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
      response_parameters:
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ComminfoName
          - IgnoreState
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
      response_parameters:
        - name: ListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - IgnoreState
          - ListenerName
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
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
      response_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
          - ServiceName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - IgnoreState
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
        - name: Authrec
          pcf_type: MQCFIN
          type_hint: int
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
        - name: Authrec
          pcf_type: MQCFIN
          type_hint: int
        - name: IgnoreState
          pcf_type: MQCFST
          type_hint: str
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
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
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
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
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
      request_href: SSFKSJ_9.4.0/refadmin/q087250_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087260_.html
      request_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: AllocPrimary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocSecondary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocUnits
          pcf_type: MQCFIN
          type_hint: int
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
        - name: BlockSize
          pcf_type: MQCFIN
          type_hint: int
        - name: Catalog
          pcf_type: MQCFIN
          type_hint: int
        - name: Compact
          pcf_type: MQCFIN
          type_hint: int
        - name: Protect
          pcf_type: MQCFIN
          type_hint: int
        - name: QuiesceInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: RoutingCode
          pcf_type: MQCFIL
          type_hint: int
        - name: TimeStampFormat
          pcf_type: MQCFIN
          type_hint: int
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
          - CommandScope
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
          - Protect
          - QuiesceInterval
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
      request_href: SSFKSJ_9.4.0/refadmin/q087270_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087280_.html
      request_parameters:
        - name: AuthInfoName
          pcf_type: MQCFST
          type_hint: str
        - name: AuthInfoAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: AuthInfoType
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
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
        - name: AuthenticationMethod
          pcf_type: MQCFIN
          type_hint: int
        - name: AuthorizationMethod
          pcf_type: MQCFIN
          type_hint: int
        - name: BaseDNGroup
          pcf_type: MQCFST
          type_hint: str
        - name: BaseDNUser
          pcf_type: MQCFST
          type_hint: str
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
          - AuthInfoAttrs
          - AuthInfoName
          - AuthInfoType
          - CommandScope
          - IntegerFilterCommand
          - QSGDisposition
          - StringFilterCommand
      response:
        suggested:
          CLASSUSR: Classuser
          SHORTUSR: ShortUser
          USRFIELD: UserField
        ambiguous:
          BASEDNU:
            - BaseDNUser
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
          - CHCKLOCL
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
          - AlterationDate
          - AlterationTime
          - AuthInfoConnName
          - AuthInfoDesc
          - AuthInfoName
          - AuthInfoType
          - AuthenticationMethod
          - AuthorizationMethod
          - BaseDNGroup
          - BaseDNUser
          - ClassGroup
          - FailureDelay
          - FindGroup
          - GroupField
          - GroupNesting
          - LDAPPassword
          - LDAPUserName
          - OCSPResponderURL
          - QSGDisposition
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
      request_href: SSFKSJ_9.4.0/refadmin/q087310_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087320_.html
      request_parameters:
        - name: Options
          pcf_type: MQCFIN
          type_hint: int
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: EntityName
          pcf_type: MQCFST
          type_hint: str
        - name: EntityType
          pcf_type: MQCFIN
          type_hint: int
        - name: ProfileAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: ServiceComponent
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: AuthorizationList
          pcf_type: MQCFIL
          type_hint: int
        - name: EntityName
          pcf_type: MQCFST
          type_hint: str
        - name: EntityType
          pcf_type: MQCFIN
          type_hint: int
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
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
          - EntityName
          - EntityType
          - ObjectType
          - Options
          - ProfileAttrs
          - ProfileName
          - ServiceComponent
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AuthorizationList
          - EntityName
          - EntityType
          - ObjectType
          - Options
          - ProfileName
          - QMgrName
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
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
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
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
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
      request_href: SSFKSJ_9.4.0/refadmin/q087350_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087360_.html
      request_parameters:
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
        - name: AlterationDate
          pcf_type: MQCFST
          type_hint: str
        - name: AlterationTime
          pcf_type: MQCFST
          type_hint: str
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: CFLevel
          pcf_type: MQCFIN
          type_hint: int
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
        - name: RCVDATE
          pcf_type: MQCFST
          type_hint: str
        - name: RCVTIME
          pcf_type: MQCFST
          type_hint: str
        - name: Recauto
          pcf_type: MQCFIN
          type_hint: int
        - name: Recovery
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
          - CFStrucAttrs
          - CFStrucName
          - IntegerFilterCommand
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - CFConlos
          - CFLevel
          - CFStrucDesc
          - CFStrucName
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
          - Offload
          - RCVDATE
          - RCVTIME
          - Recauto
          - Recovery
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
      request_href: SSFKSJ_9.4.0/refadmin/q087410_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087430_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
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
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
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
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: DataConversion
          pcf_type: MQCFIN
          type_hint: int
        - name: DefaultChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: DiscInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: DefReconnect
          pcf_type: MQCFIN
          type_hint: int
        - name: HeaderCompression
          pcf_type: MQCFIL
          type_hint: int
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
        - name: MCAUserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: MessageCompression
          pcf_type: MQCFIL
          type_hint: int
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
        - name: Password
          pcf_type: MQCFST
          type_hint: str
        - name: PropertyControl
          pcf_type: MQCFIN
          type_hint: int
        - name: PutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
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
        - name: SSLCipherSpec
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCipherSuite
          pcf_type: MQCFST
          type_hint: str
        - name: SSLClientAuth
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLPeerName
          pcf_type: MQCFST
          type_hint: str
        - name: TpName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
        - name: UseDLQ
          pcf_type: MQCFIN
          type_hint: int
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
          - ChannelAttrs
          - ChannelName
          - ChannelType
          - CommandScope
          - IntegerFilterCommand
          - QSGDisposition
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
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
      request_href: SSFKSJ_9.4.0/refadmin/q087440_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087450_.html
      request_parameters:
        - name: Address
          pcf_type: MQCFST
          type_hint: str
        - name: ByteStringFilterCommand
          pcf_type: MQCFBF
          type_hint: null
        - name: ChannelAuthAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: CheckClient
          pcf_type: MQCFIN
          type_hint: int
        - name: ClntUser
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: Match
          pcf_type: MQCFIN
          type_hint: int
        - name: QMName
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCertIssuer
          pcf_type: MQCFST
          type_hint: str
        - name: SSLPeer
          pcf_type: MQCFST
          type_hint: str
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
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
        - name: UserList
          pcf_type: MQCFSL
          type_hint: str
        - name: UserSrc
          pcf_type: MQCFIN
          type_hint: int
        - name: Warn
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
          - Address
          - ByteStringFilterCommand
          - ChannelAuthAttrs
          - CheckClient
          - ClntUser
          - CommandScope
          - IntegerFilterCommand
          - Match
          - QMName
          - SSLCertIssuer
          - SSLPeer
          - StringFilterCommand
          - Type
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
          - CheckClient
          - Chlauth
          - ClntUser
          - Description
          - MCAUser
          - QMName
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
      request_href: SSFKSJ_9.4.0/refadmin/q087540_.html
      response_href: SSFKSJ_9.4.0/refadmin/q125035_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelInstanceAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: ChannelInstanceType
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: XmitQName
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
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
        - name: ChannelType
          pcf_type: MQCFIN
          type_hint: int
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
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelDisposition
          - ChannelInstanceAttrs
          - ChannelInstanceType
          - ChannelName
          - CommandScope
          - ConnectionName
          - IntegerFilterCommand
          - StringFilterCommand
          - XmitQName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
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
          - MsgsReceived
          - MsgsSent
          - Protocol
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
      request_href: SSFKSJ_9.4.0/refadmin/q087580_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087590_.html
      request_parameters:
        - name: ClusterQMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: Channel
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterQMgrAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
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
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelStatus
          pcf_type: MQCFIN
          type_hint: int
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
        - name: DiscInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: HeaderCompression
          pcf_type: MQCFIL
          type_hint: int
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
        - name: MCAUserIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: MessageCompression
          pcf_type: MQCFIL
          type_hint: int
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
        - name: Password
          pcf_type: MQCFST
          type_hint: str
        - name: PutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrDefinitionType
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrIdentifier
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrType
          pcf_type: MQCFIN
          type_hint: int
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
        - name: SSLPeerName
          pcf_type: MQCFST
          type_hint: str
        - name: Suspend
          pcf_type: MQCFIN
          type_hint: int
        - name: TpName
          pcf_type: MQCFST
          type_hint: str
        - name: TranmissionQName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
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
          - Channel
          - ClusterName
          - ClusterQMgrAttrs
          - ClusterQMgrName
          - CommandScope
          - IntegerFilterCommand
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
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
      request_href: SSFKSJ_9.4.0/refadmin/q087600_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087610_.html
      request_parameters:
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: ComminfoAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
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
        - name: ComminfoName
          pcf_type: MQCFST
          type_hint: str
        - name: Description
          pcf_type: MQCFST
          type_hint: str
        - name: Encoding
          pcf_type: MQCFIN
          type_hint: int
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
        - name: MsgHistory
          pcf_type: MQCFIN
          type_hint: int
        - name: NewSubHistory
          pcf_type: MQCFIN
          type_hint: int
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
        unmapped: []
        pcf_unmapped:
          - ComminfoAttrs
          - ComminfoName
          - IntegerFilterCommand
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - Bridge
          - CCSID
          - CommEvent
          - ComminfoName
          - Description
          - Encoding
          - GrpAddress
          - MonitorInterval
          - MsgHistory
          - MulticastHeartbeat
          - MulticastPropControl
          - NewSubHistory
          - PortNumber
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
        - name: ConnInfoType
          pcf_type: MQCFIN
          type_hint: int
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: URDisposition
          pcf_type: MQCFIN
          type_hint: int
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
      request_href: SSFKSJ_9.4.0/refadmin/q087480_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087490_.html
      request_parameters:
        - name: ListenerName
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: ListenerAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: TransportType
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
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
        - name: TPName
          pcf_type: MQCFST
          type_hint: str
        - name: TransportType
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
          - IntegerFilterCommand
          - ListenerAttrs
          - ListenerName
          - StringFilterCommand
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
          - Backlog
          - Commands
          - IPAddress
          - ListenerDesc
          - ListenerName
          - LocalName
          - NetbiosNames
          - Port
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
      request_href: SSFKSJ_9.4.0/refadmin/q087680_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087690_.html
      request_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: DeallocateInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: DualActive
          pcf_type: MQCFIN
          type_hint: int
        - name: DualArchive
          pcf_type: MQCFIN
          type_hint: int
        - name: DualBSDS
          pcf_type: MQCFIN
          type_hint: int
        - name: InputBufferSize
          pcf_type: MQCFIN
          type_hint: int
        - name: LogArchive
          pcf_type: MQCFIN
          type_hint: int
        - name: LogCompression
          pcf_type: MQCFIN
          type_hint: int
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
        - name: ZHyperLink
          pcf_type: MQCFIN
          type_hint: int
        - name: DataSetName
          pcf_type: MQCFST
          type_hint: str
        - name: Encrypted
          pcf_type: MQCFIN
          type_hint: int
        - name: FullLogs
          pcf_type: MQCFIN
          type_hint: int
        - name: LogCompression
          pcf_type: MQCFIN
          type_hint: int
        - name: LogCopyNumber
          pcf_type: MQCFIN
          type_hint: int
        - name: LogRBA
          pcf_type: MQCFST
          type_hint: str
        - name: LogSuspend
          pcf_type: MQCFIN
          type_hint: int
        - name: LogUsed
          pcf_type: MQCFIN
          type_hint: int
        - name: OffloadStatus
          pcf_type: MQCFIN
          type_hint: int
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
          - CommandScope
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
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
          - MaxArchiveLog
          - MaxConcurrentOffloads
          - MaxReadTapeUnits
          - OffloadStatus
          - OutputBufferCount
          - OutputBufferSize
          - QMgrStartDate
          - QMgrStartRBA
          - QMgrStartTime
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
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
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
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
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
      request_href: SSFKSJ_9.4.0/refadmin/q087700_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087710_.html
      request_parameters:
        - name: NamelistName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: NamelistAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: NamelistType
          pcf_type: MQCFIN
          type_hint: int
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
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
        - name: Names
          pcf_type: MQCFSL
          type_hint: str
        - name: QSGDisposition
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
          - IntegerFilterCommand
          - NamelistAttrs
          - NamelistName
          - NamelistType
          - QSGDisposition
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - NameCount
          - NamelistDesc
          - NamelistName
          - NamelistType
          - Names
          - QSGDisposition
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
      request_href: SSFKSJ_9.4.0/refadmin/q087740_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087750_.html
      request_parameters:
        - name: ProcessName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: ProcessAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
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
          - CommandScope
          - IntegerFilterCommand
          - ProcessAttrs
          - ProcessName
          - QSGDisposition
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
          - ApplId
          - ApplType
          - EnvData
          - ProcessDesc
          - ProcessName
          - QSGDisposition
          - UserData
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
        - name: PubSubStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
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
          - PubSubStatusAttrs
          - Type
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
      request_href: SSFKSJ_9.4.0/refadmin/q087820_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087830_.html
      request_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrAttrs
          pcf_type: MQCFIL
          type_hint: int
      response_parameters:
        - name: AccountingConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: AccountingInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ActivityConnOverride
          pcf_type: MQCFIN
          type_hint: int
        - name: ActivityRecording
          pcf_type: MQCFIN
          type_hint: int
        - name: ActivityTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: AdoptNewMCACheck
          pcf_type: MQCFIN
          type_hint: int
        - name: AdoptNewMCAType
          pcf_type: MQCFIL
          type_hint: int
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
        - name: AuthorityEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: BridgeEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: CertificateLabel
          pcf_type: MQCFST
          type_hint: str
        - name: CertificateValPolicy
          pcf_type: MQCFIN
          type_hint: int
        - name: CFConlos
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAutoDef
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAutoDefEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelAutoDefExit
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelAuthenticationRecords
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelInitiatorControl
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelStatistics
          pcf_type: MQCFIN
          type_hint: int
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
        - name: ChinitTraceTableSize
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderMonitoringDefault
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterSenderStatistics
          pcf_type: MQCFIN
          type_hint: int
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
        - name: CodedCharSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandInputQName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandLevel
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandServerControl
          pcf_type: MQCFIN
          type_hint: int
        - name: ConfigurationEvent
          pcf_type: MQCFIN
          type_hint: int
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
        - name: DefXmitQName
          pcf_type: MQCFST
          type_hint: str
        - name: DistLists
          pcf_type: MQCFIN
          type_hint: int
        - name: DNSGroup
          pcf_type: MQCFST
          type_hint: str
        - name: DNSWLM
          pcf_type: MQCFIN
          type_hint: int
        - name: EncryptionPolicySuiteB
          pcf_type: MQCFIL
          type_hint: int
        - name: ExpiryInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: GroupUR
          pcf_type: MQCFIN
          type_hint: int
        - name: IGQPutAuthority
          pcf_type: MQCFIN
          type_hint: int
        - name: IGQUserId
          pcf_type: MQCFST
          type_hint: str
        - name: ImageInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: ImageLogLength
          pcf_type: MQCFIN
          type_hint: int
        - name: ImageRecoverObject
          pcf_type: MQCFST
          type_hint: str
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: ImageSchedule
          pcf_type: MQCFST
          type_hint: str
        - name: InhibitEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: InitialKey
          pcf_type: MQCFST
          type_hint: str
        - name: IntraGroupQueuing
          pcf_type: MQCFIN
          type_hint: int
        - name: IPAddressVersion
          pcf_type: MQCFIN
          type_hint: int
        - name: ListenerTimer
          pcf_type: MQCFIN
          type_hint: int
        - name: LocalEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: LoggerEvent
          pcf_type: MQCFIN
          type_hint: int
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
        - name: MQIStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: MsgMarkBrowseInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
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
        - name: Platform
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubClus
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubMaxMsgRetryCount
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubMode
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubNPInputMsg
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubNPResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: PubSubSyncPoint
          pcf_type: MQCFIN
          type_hint: int
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
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeout
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutMin
          pcf_type: MQCFIN
          type_hint: int
        - name: ReceiveTimeoutType
          pcf_type: MQCFIN
          type_hint: int
        - name: RemoteEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: RepositoryName
          pcf_type: MQCFST
          type_hint: str
        - name: RepositoryNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: RevDns
          pcf_type: MQCFIN
          type_hint: int
        - name: SecurityCase
          pcf_type: MQCFIN
          type_hint: int
        - name: SharedQQmgrName
          pcf_type: MQCFIN
          type_hint: int
        - name: Splcap
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLCRLNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: SSLCryptoHardware
          pcf_type: MQCFST
          type_hint: str
        - name: SSLEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: SSLFipsRequired
          pcf_type: MQCFIN
          type_hint: int
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
        - name: StatisticsInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SyncPoint
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPChannels
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPKeepAlive
          pcf_type: MQCFIN
          type_hint: int
        - name: TCPName
          pcf_type: MQCFST
          type_hint: str
        - name: TCPStackType
          pcf_type: MQCFIN
          type_hint: int
        - name: TraceRouteRecording
          pcf_type: MQCFIN
          type_hint: int
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
          - CommandScope
          - QMgrAttrs
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
          - MQIAccounting
          - MQIStatistics
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
      request_href: SSFKSJ_9.4.0/refadmin/q087840_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087850_.html
      request_parameters:
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: NativeHAType
          pcf_type: MQCFIN
          type_hint: int
        - name: QMStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
        - name: ArchiveLog
          pcf_type: MQCFST
          type_hint: str
        - name: ArchiveLogSize
          pcf_type: MQCFIN
          type_hint: int
        - name: AutoCluster
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelInitiatorStatus
          pcf_type: MQCFIN
          type_hint: int
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
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: QMgrStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrEncryption
          pcf_type: MQCFIN
          type_hint: int
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
        - name: Instance
          pcf_type: MQCFST
          type_hint: str
        - name: LiveTime
          pcf_type: MQCFST
          type_hint: str
        - name: NhaType
          pcf_type: MQCFST
          type_hint: str
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
        - name: SyncTime
          pcf_type: MQCFST
          type_hint: str
        - name: StatusType
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
          - IntegerFilterCommand
          - NativeHAType
          - QMStatusAttrs
          - StatusType
          - StringFilterCommand
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
      request_href: SSFKSJ_9.4.0/refadmin/q087880_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087890_.html
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
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
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
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: StatusType
          pcf_type: MQCFST
          type_hint: str
        - name: UncommittedMsgs
          pcf_type: MQCFIN
          type_hint: int
        - name: ApplDesc
          pcf_type: MQCFST
          type_hint: str
        - name: ApplTag
          pcf_type: MQCFST
          type_hint: str
        - name: ApplType
          pcf_type: MQCFIN
          type_hint: int
        - name: ASId
          pcf_type: MQCFST
          type_hint: str
        - name: AsynchronousState
          pcf_type: MQCFIN
          type_hint: int
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
        - name: OpenBrowse
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenInputType
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenInquire
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenOptions
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenOutput
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenSet
          pcf_type: MQCFIN
          type_hint: int
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
          - ByteStringFilterCommand
          - CommandScope
          - IntegerFilterCommand
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
          - StatusType
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ASId
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
          - StatusType
          - StatusType
          - TaskNumber
          - ThreadId
          - TransactionId
          - UOWIdentifier
          - UOWType
          - UncommittedMsgs
          - UserIdentifier
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
      request_href: SSFKSJ_9.4.0/refadmin/q087800_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087810_.html
      request_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: CapExpiry
          pcf_type: MQCFIN
          type_hint: int
        - name: CFStructure
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterInfo
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterName
          pcf_type: MQCFST
          type_hint: str
        - name: ClusterNamelist
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: PageSetID
          pcf_type: MQCFIN
          type_hint: int
        - name: QAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: QType
          pcf_type: MQCFIN
          type_hint: int
        - name: StorageClass
          pcf_type: MQCFST
          type_hint: str
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
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
        - name: DefBind
          pcf_type: MQCFIN
          type_hint: int
        - name: DefinitionType
          pcf_type: MQCFIN
          type_hint: int
        - name: DefInputOpenOption
          pcf_type: MQCFIN
          type_hint: int
        - name: DefPersistence
          pcf_type: MQCFIN
          type_hint: int
        - name: DefPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: DefReadAhead
          pcf_type: MQCFIN
          type_hint: int
        - name: DistLists
          pcf_type: MQCFIN
          type_hint: int
        - name: HardenGetBackout
          pcf_type: MQCFIN
          type_hint: int
        - name: ImageRecoverQueue
          pcf_type: MQCFST
          type_hint: str
        - name: IndexType
          pcf_type: MQCFIN
          type_hint: int
        - name: InhibitGet
          pcf_type: MQCFIN
          type_hint: int
        - name: InhibitPut
          pcf_type: MQCFIN
          type_hint: int
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
        - name: NonPersistentMessageClass
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenInputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenOutputCount
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELPropagationControl
          pcf_type: MQCFIN
          type_hint: int
        - name: OTELTrace
          pcf_type: MQCFIN
          type_hint: int
        - name: PageSetID
          pcf_type: MQCFIN
          type_hint: int
        - name: ProcessName
          pcf_type: MQCFST
          type_hint: str
        - name: PropertyControl
          pcf_type: MQCFIN
          type_hint: int
        - name: QDepthHighEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: QDepthHighLimit
          pcf_type: MQCFIN
          type_hint: int
        - name: QDepthLowEvent
          pcf_type: MQCFIN
          type_hint: int
        - name: QDepthLowLimit
          pcf_type: MQCFIN
          type_hint: int
        - name: QDepthMaxEvent
          pcf_type: MQCFIN
          type_hint: int
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
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: QType
          pcf_type: MQCFIN
          type_hint: int
        - name: QueueAccounting
          pcf_type: MQCFIN
          type_hint: int
        - name: QueueMonitoring
          pcf_type: MQCFIN
          type_hint: int
        - name: QueueStatistics
          pcf_type: MQCFIN
          type_hint: int
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
        - name: Shareability
          pcf_type: MQCFIN
          type_hint: int
        - name: StorageClass
          pcf_type: MQCFST
          type_hint: str
        - name: StreamQ
          pcf_type: MQCFST
          type_hint: str
        - name: StreamQService
          pcf_type: MQCFIN
          type_hint: int
        - name: TpipeNames
          pcf_type: MQCFSL
          type_hint: str
        - name: TriggerControl
          pcf_type: MQCFIN
          type_hint: int
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
        - name: Usage
          pcf_type: MQCFIN
          type_hint: int
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
          - CFStructure
          - CapExpiry
          - ClusterInfo
          - ClusterName
          - ClusterNamelist
          - CommandScope
          - IntegerFilterCommand
          - PageSetID
          - QAttrs
          - QName
          - QSGDisposition
          - QType
          - StorageClass
          - StringFilterCommand
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
          - QREMOTE
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
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
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
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
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
      request_href: SSFKSJ_9.4.0/refadmin/q087900_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087910_.html
      request_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityAttrs
          pcf_type: MQCFIL
          type_hint: int
      response_parameters:
        - name: SecurityInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: SecuritySwitch
          pcf_type: MQCFIN
          type_hint: int
        - name: SecuritySwitchProfile
          pcf_type: MQCFST
          type_hint: str
        - name: SecuritySwitchSetting
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
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - SecurityAttrs
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
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
      request_href: SSFKSJ_9.4.0/refadmin/q087920_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087930_.html
      request_parameters:
        - name: ServiceName
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: ServiceAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
      response_parameters:
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
        - name: StartArguments
          pcf_type: MQCFST
          type_hint: str
        - name: StartCommand
          pcf_type: MQCFST
          type_hint: str
        - name: StartMode
          pcf_type: MQCFIN
          type_hint: int
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
          - IntegerFilterCommand
          - ServiceAttrs
          - ServiceName
          - StringFilterCommand
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
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
      request_href: SSFKSJ_9.4.0/refadmin/q087960_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087970_.html
      request_parameters:
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: CFSMDSAttrs
          pcf_type: MQCFIL
          type_hint: int
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
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CFSMDSAttrs
          - CFStrucName
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
      request_href: SSFKSJ_9.4.0/refadmin/q087980_.html
      response_href: SSFKSJ_9.4.0/refadmin/q087990_.html
      request_parameters:
        - name: SMDSCONN
          pcf_type: MQCFST
          type_hint: str
        - name: CFStrucName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
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
        - name: ExpandST
          pcf_type: MQCFIN
          type_hint: int
        - name: OpenMode
          pcf_type: MQCFIN
          type_hint: int
        - name: Status
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
          - CFStrucName
          - CommandScope
          - SMDSCONN
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
          - PageSetId
          - PassTicketApplication
          - QSGDisposition
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
        - name: SubscriptionAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: SubscriptionType
          pcf_type: MQCFIN
          type_hint: int
        - name: DisplayType
          pcf_type: MQCFIN
          type_hint: int
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
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
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
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
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
      request_href: SSFKSJ_9.4.0/refadmin/q088080_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088090_.html
      request_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: CheckpointCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterCacheType
          pcf_type: MQCFIN
          type_hint: int
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
        - name: QSGName
          pcf_type: MQCFST
          type_hint: str
        - name: RESLEVELAudit
          pcf_type: MQCFIN
          type_hint: int
        - name: RoutingCode
          pcf_type: MQCFIL
          type_hint: int
        - name: Service
          pcf_type: MQCFST
          type_hint: str
        - name: SMFAccounting
          pcf_type: MQCFIN
          type_hint: int
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
        - name: SMFStatsIntervalMins
          pcf_type: MQCFIN
          type_hint: int
        - name: SMFStatsIntervalSecs
          pcf_type: MQCFIN
          type_hint: int
        - name: Splcap
          pcf_type: MQCFIN
          type_hint: int
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
    mapping:
      request:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
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
      request_href: SSFKSJ_9.4.0/refadmin/q088100_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088110_.html
      request_parameters:
        - name: TopicName
          pcf_type: MQCFST
          type_hint: str
        - name: CapExpiry
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterInfo
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: IntegerFilterCommand
          pcf_type: MQCFIF
          type_hint: null
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
          type_hint: null
        - name: TopicAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: TopicType
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
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
        - name: ClusterObjectState
          pcf_type: MQCFIN
          type_hint: int
        - name: ClusterPubRoute
          pcf_type: MQCFIN
          type_hint: int
        - name: CommInfo
          pcf_type: MQCFST
          type_hint: str
        - name: Custom
          pcf_type: MQCFST
          type_hint: str
        - name: DefPersistence
          pcf_type: MQCFIN
          type_hint: int
        - name: DefPriority
          pcf_type: MQCFIN
          type_hint: int
        - name: DefPutResponse
          pcf_type: MQCFIN
          type_hint: int
        - name: DurableModelQName
          pcf_type: MQCFST
          type_hint: str
        - name: DurableSubscriptions
          pcf_type: MQCFIN
          type_hint: int
        - name: InhibitPublications
          pcf_type: MQCFIN
          type_hint: int
        - name: InhibitSubscriptions
          pcf_type: MQCFIN
          type_hint: int
        - name: Multicast
          pcf_type: MQCFIN
          type_hint: int
        - name: NonDurableModelQName
          pcf_type: MQCFST
          type_hint: str
        - name: NonPersistentMsgDelivery
          pcf_type: MQCFIN
          type_hint: int
        - name: PersistentMsgDelivery
          pcf_type: MQCFIN
          type_hint: int
        - name: ProxySubscriptions
          pcf_type: MQCFIN
          type_hint: int
        - name: PublicationScope
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
        - name: SubscriptionScope
          pcf_type: MQCFIN
          type_hint: int
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
        - name: UseDLQ
          pcf_type: MQCFIN
          type_hint: int
        - name: WildcardOperation
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
          - CapExpiry
          - ClusterInfo
          - CommandScope
          - IntegerFilterCommand
          - QSGDisposition
          - StringFilterCommand
          - TopicAttrs
          - TopicName
          - TopicType
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - AlterationDate
          - AlterationTime
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
          - Multicast
          - NonDurableModelQName
          - NonPersistentMsgDelivery
          - PersistentMsgDelivery
          - ProxySubscriptions
          - PublicationScope
          - QMgrName
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
        - name: QSGDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: QStatusAttrs
          pcf_type: MQCFIL
          type_hint: int
        - name: StatusType
          pcf_type: MQCFIN
          type_hint: int
        - name: StringFilterCommand
          pcf_type: MQCFSF
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
          - OpenType
          - QName
          - QSGDisposition
          - QStatusAttrs
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
      request_href: SSFKSJ_9.4.0/refadmin/q088160_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088170_.html
      request_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: PageSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: UsageType
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: BufferPoolId
          pcf_type: MQCFIN
          type_hint: int
        - name: Encrypted
          pcf_type: MQCFIN
          type_hint: int
        - name: ExpandCount
          pcf_type: MQCFIN
          type_hint: int
        - name: ExpandType
          pcf_type: MQCFIN
          type_hint: int
        - name: NonPersistentDataPages
          pcf_type: MQCFIN
          type_hint: int
        - name: PageSetId
          pcf_type: MQCFIN
          type_hint: int
        - name: PageSetStatus
          pcf_type: MQCFIN
          type_hint: int
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
        - name: PageClass
          pcf_type: MQCFIN
          type_hint: int
        - name: DataSetName
          pcf_type: MQCFST
          type_hint: str
        - name: DataSetType
          pcf_type: MQCFIN
          type_hint: int
        - name: LogRBA
          pcf_type: MQCFST
          type_hint: str
        - name: LogLRSN
          pcf_type: MQCFST
          type_hint: str
        - name: Encrypted
          pcf_type: MQCFIN
          type_hint: int
        - name: SMDSStatus
          pcf_type: MQCFIN
          type_hint: int
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
          - CommandScope
          - PageSetId
          - UsageType
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
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
          - MQIACF_SMDS_STATUS
          - MQIACF_SMDS_STATUS
          - MQIACF_USAGE_BLOCK_SIZE
          - MQIACF_USAGE_DATA_BLOCKS
          - MQIACF_USAGE_EMPTY_BUFFERS
          - MQIACF_USAGE_INUSE_BUFFERS
          - MQIACF_USAGE_LOWEST_FREE
          - MQIACF_USAGE_OFFLOAD_MSGS
          - MQIACF_USAGE_READS_SAVED
          - MQIACF_USAGE_SAVED_BUFFERS
          - MQIACF_USAGE_TOTAL_BLOCKS
          - MQIACF_USAGE_TOTAL_BUFFERS
          - MQIACF_USAGE_TYPE
          - MQIACF_USAGE_TYPE
          - MQIACF_USAGE_USED_BLOCKS
          - MQIACF_USAGE_USED_RATE
          - MQIACF_USAGE_WAIT_RATE
          - NonPersistentDataPages
          - PageClass
          - PageSetId
          - PageSetStatus
          - PersistentDataPages
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
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectName
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: RefreshInterval
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: RefreshType
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectName
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
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
        - name: SecurityType
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: SecurityItem
          pcf_type: MQCFIN
          type_hint: int
        - name: SecurityType
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
      response_parameters:
        - name: CFStructName
          pcf_type: MQCFST
          type_hint: str
        - name: Action
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
          - Action
          - CFStructName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Action
          - CFStructName
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
        - name: MsgSeqNumber
          pcf_type: MQCFIN
          type_hint: int
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
        - name: MsgSeqNumber
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
          - ChannelDisposition
          - ChannelName
          - CommandScope
          - MsgSeqNumber
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
          - MsgSeqNumber
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
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: RemoveQueues
          pcf_type: MQCFIN
          type_hint: int
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
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: RemoveQueues
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
          - Action
          - ClusterName
          - CommandScope
          - QMgrIdentifier
          - QMgrName
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
          - QMgrIdentifier
          - QMgrName
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
      response_parameters:
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
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
          - ParentName
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
          - ParentName
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
      request_href: SSFKSJ_9.4.0/refadmin/q088300_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088310_.html
      request_parameters:
        - name: QName
          pcf_type: MQCFST
          type_hint: str
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
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
          - CommandScope
          - QName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - HighQDepth
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
        - name: Status
          pcf_type: MQCFIN
          type_hint: int
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
        - name: Status
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
          - Access
          - CFStrucName
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
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: InDoubt
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
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
          - ChannelDisposition
          - ChannelName
          - CommandScope
          - InDoubt
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
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Facility
          pcf_type: MQCFIN
          type_hint: int
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
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - Facility
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
        - name: AllocPrimary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocSecondary
          pcf_type: MQCFIN
          type_hint: int
        - name: AllocUnits
          pcf_type: MQCFIN
          type_hint: int
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
        - name: BlockSize
          pcf_type: MQCFIN
          type_hint: int
        - name: Catalog
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: Compact
          pcf_type: MQCFIN
          type_hint: int
        - name: Protect
          pcf_type: MQCFIN
          type_hint: int
        - name: QuiesceInterval
          pcf_type: MQCFIN
          type_hint: int
        - name: RoutingCode
          pcf_type: MQCFIL
          type_hint: int
        - name: TimeStampFormat
          pcf_type: MQCFIN
          type_hint: int
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
        - name: AuthorityAdd
          pcf_type: MQCFIL
          type_hint: int
        - name: AuthorityRemove
          pcf_type: MQCFIL
          type_hint: int
        - name: GroupNames
          pcf_type: MQCFSL
          type_hint: str
        - name: PrincipalNames
          pcf_type: MQCFSL
          type_hint: str
        - name: ServiceComponent
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: ObjectType
          pcf_type: MQCFIN
          type_hint: int
        - name: AuthorityAdd
          pcf_type: MQCFIL
          type_hint: int
        - name: AuthorityRemove
          pcf_type: MQCFIL
          type_hint: int
        - name: GroupNames
          pcf_type: MQCFSL
          type_hint: str
        - name: PrincipalNames
          pcf_type: MQCFSL
          type_hint: str
        - name: ServiceComponent
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
          - AuthorityAdd
          - AuthorityRemove
          - GroupNames
          - ObjectType
          - PrincipalNames
          - ProfileName
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
          - ObjectType
          - PrincipalNames
          - ProfileName
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
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: Address
          pcf_type: MQCFST
          type_hint: str
        - name: AddrList
          pcf_type: MQCFSL
          type_hint: str
        - name: CheckClient
          pcf_type: MQCFIN
          type_hint: int
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
        - name: Warn
          pcf_type: MQCFIN
          type_hint: int
      response_parameters:
        - name: ProfileName
          pcf_type: MQCFST
          type_hint: str
        - name: Type
          pcf_type: MQCFIN
          type_hint: int
        - name: Action
          pcf_type: MQCFIN
          type_hint: int
        - name: Address
          pcf_type: MQCFST
          type_hint: str
        - name: AddrList
          pcf_type: MQCFSL
          type_hint: str
        - name: CheckClient
          pcf_type: MQCFIN
          type_hint: int
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
        - name: Warn
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
          - Action
          - AddrList
          - Address
          - CheckClient
          - ClntUser
          - CommandScope
          - Custom
          - Description
          - MCAUser
          - ProfileName
          - QMName
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
          - ProfileName
          - QMName
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
      request_href: SSFKSJ_9.4.0/refadmin/q129110_.html
      response_href: SSFKSJ_9.4.0/refadmin/q129110_.html
      request_parameters:
        - name: ParameterType
          pcf_type: MQCFIN
          type_hint: int
        - name: Archive
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: ParameterType
          pcf_type: MQCFIN
          type_hint: int
        - name: Archive
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
          - Archive
          - ParameterType
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - Archive
          - ParameterType
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
        - name: ParameterType
          pcf_type: MQCFIN
          type_hint: int
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
        - name: ParameterType
          pcf_type: MQCFIN
          type_hint: int
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
          - ParameterType
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
          - ParameterType
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
      request_href: SSFKSJ_9.4.0/refadmin/q088420_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088430_.html
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
      response_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelType
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
          - ChannelDisposition
          - ChannelName
          - CommandScope
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - ChannelName
          - ChannelType
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
      response_parameters:
        - name: ServiceName
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
          - ServiceName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
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
      request_href: SSFKSJ_9.4.0/refadmin/q088480_.html
      response_href: SSFKSJ_9.4.0/refadmin/q088490_.html
      request_parameters:
        - name: ChannelName
          pcf_type: MQCFST
          type_hint: str
        - name: ChannelDisposition
          pcf_type: MQCFIN
          type_hint: int
        - name: ChannelStatus
          pcf_type: MQCFIN
          type_hint: int
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
        - name: ConnectionName
          pcf_type: MQCFST
          type_hint: str
        - name: Mode
          pcf_type: MQCFIN
          type_hint: int
        - name: QMgrName
          pcf_type: MQCFST
          type_hint: str
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
          - ChannelStatus
          - CommandScope
          - ConnectionName
          - Mode
          - QMgrName
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
      response_parameters:
        - name: ServiceName
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
          - ServiceName
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
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
        - name: CommandScope
          pcf_type: MQCFST
          type_hint: str
      response_parameters:
        - name: Facility
          pcf_type: MQCFIN
          type_hint: int
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
      response:
        suggested:
          {}
        ambiguous:
          {}
        unmapped: []
        pcf_unmapped:
          - CommandScope
          - Facility
    notes: []
```

## Notes and gaps
- Display commands mix filter keywords and attributes; parameter descriptions are treated as output attributes for this first pass and need manual separation.
- MQSC parameter types are not extracted; only PCF parameter types are captured and type hints are inferred from the PCF C-structure names.
- PCF parsing ignores enumerated constants and status headings; only parameters with MQCF* types are captured.
- Response pages are discovered via IBM Docs search and may be missing or misclassified for some commands.
- Section parsing ignores syntax diagram content, which means parameters only documented in diagrams may be missing.
- Mapping suggestions are name-based heuristics and will need refinement for conflicts and mixed-type responses.
