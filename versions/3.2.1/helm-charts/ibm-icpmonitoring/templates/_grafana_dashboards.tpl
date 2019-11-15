{{/*
  Licensed Materials - Property of IBM
   IBM Confidential
   OCO Source Materials
   (C) Copyright IBM Corporation 2016, 2019 All Rights Reserved
   The source code for this program is not published or otherwise divested of its trade secrets, irrespective of what has been deposited with the U.S. Copyright Office.
*/}}

{{/* Grafana Dashboards Configuration Files */}}
{{- define "grafanaDashboardsConfig" }}
dashboards.yaml: |-
  apiVersion: 1
  providers:
  - name: 'default'
    orgId: 1
    folder: ''
    type: file
    disableDeletion: false
    updateIntervalSeconds: 30 #how often Grafana will scan for changed dashboards
    options:
      path: /etc/grafana/dashboards/
{{- end }}