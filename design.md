---
layout: default
title: Design
permalink: /design
sequence: 6
sub_system: true
state_machine: false
terminologies:
  - term: Device
    definition: Oak, the entire electronics with embedded firmware and associated software
  - term: Local node
    definition: Current node that the user is holding, which is setup as a current node for LoRa peer-to-peer communication
  - term: Peer node
    definition: Peer node, another node that the device is setup as a destination for LoRa peer-to-peer communication
  - term: Haversine distance
    definition: Distance between the 2 nodes that has a GPS fix within 5 seconds of each other

user_stories:
  - user: first-time user
    actions:
      - goal: configure the 2 nodes with addresses <code>0xAA</code> and <code>0xBB</code>
        reason: they can communicate with each other via LoRa
  - user: user
    actions:
      - goal: know my current node does not have any GPS fix yet
        reason: I know I need to wait for a possible GPS fix
      - goal: see the current latitude-longitude
        reason: I know my current location
      - goal: see my latitude-longitude with a relative time ago
        reason: I know my last GPS fix time
      - goal: see the Haversine distance with the peer node
        reason: I know how far away is the peer node
      - goal: see the Haversine distance with a relative time ago
        reason: I know how far away was the peer node when both nodes had a GPS fix
---
