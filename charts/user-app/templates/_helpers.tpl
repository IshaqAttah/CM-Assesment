{{/*
Expand the name of the chart.
*/}}
{{- define "user-app.name" -}}
{{- .Release.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "user-app.labels" -}}
app.kubernetes.io/name: {{ include "user-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "user-app.selectorLabels" -}}
app: {{ .Release.Name }}
app.kubernetes.io/name: {{ include "user-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}