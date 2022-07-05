{{- define "config.toml" -}}
# List of WS methods to whitelist.
ws_method_whitelist = [
{{- range .Values.proxyd.config.rpc_whitelist }}
{{ . | quote }},
{{- end }}
]
# Enable WS on this backend group. There can only be one WS-enabled backend group.
ws_backend_group = "main"

[server]
# Host for the proxyd RPC server to listen on.
rpc_host = "0.0.0.0"
# Port for the above.
rpc_port = {{ .Values.proxyd.server.rpc_port }}
# Host for the proxyd WS server to listen on.
ws_host = "0.0.0.0"
# Port for the above
ws_port = {{ .Values.proxyd.server.ws_port }}
# Maximum client body size, in bytes, that the server will accept.
max_body_size_bytes = 10485760
max_concurrent_rpcs = 1000

[redis]
# URL to a Redis instance.
url = {{ .Values.proxyd.redis.url | quote }}

[metrics]
# Whether or not to enable Prometheus metrics.
enabled = true
# Host for the Prometheus metrics endpoint to listen on.
host = "0.0.0.0"
# Port for the above.
port = {{ .Values.proxyd.metrics.port }}

[backend]
# How long proxyd should wait for a backend response before timing out.
response_timeout_seconds = {{ .Values.proxyd.backend.response_timeout_seconds }}
# Maximum response size, in bytes, that proxyd will accept from a backend.
max_response_size_bytes = 5242880
# Maximum number of times proxyd will try a backend before giving up.
max_retries = {{ .Values.proxyd.backend.max_retries }}
# Number of seconds to wait before trying an unhealthy backend again.
out_of_service_seconds = 30

[backends]
# A map of backends by name.
{{- range $key, $val := .Values.proxyd.backends }}
[backends.{{ $key }}]
# The URL to contact the backend at. 
rpc_url = {{ $val.rpc_url | quote }}
# The WS URL to contact the backend at. 
ws_url = {{ $val.rpc_url | quote }}
{{- if $val.username }}
username = {{ $val.username }}
password = {{ $val.password }}
{{- end }}
{{- if $val.max_rps }}
max_rps = {{ $val.max_rps }}
{{- end }}
{{- if $val.max_rps }}
max_ws_conns = {{ $val.max_ws_conns }}
{{- end }}
{{ end }}

[backend_groups]
[backend_groups.main]
backends = [ {{ include "listFromDictKeys" .Values.proxyd.backends }}]

{{ if .Values.proxyd.config.authentication.enabled }}
[authentication]
{{- range $idx, $value := .Values.proxyd.config.authentication.tokens }}
{{ $value.name }}={{ $value.token | quote }}
{{- end }}
{{- end }}

# Mapping of methods to backend groups.
[rpc_method_mappings]
{{- range .Values.proxyd.config.rpc_whitelist }}
{{ . }} = "main"
{{- end }}
{{- end }}