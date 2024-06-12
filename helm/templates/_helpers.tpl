{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "wms_welcome_bot.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "wms_welcome_bot.labels" -}}
helm.sh/chart: {{ include "wms_welcome_bot.chart" . }}
{{ include "wms_welcome_bot.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "wms_welcome_bot.selectorLabels" -}}
app.kubernetes.io/name: {{ .Release.Name }}
{{- end }}
