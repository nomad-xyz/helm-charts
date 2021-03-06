# keymaster

![Version: 0.2.1](https://img.shields.io/badge/Version-0.2.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.1.0](https://img.shields.io/badge/AppVersion-0.1.0-informational?style=flat-square)

Tool to top up wallet accounts with funds

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| containerSecurityContext | object | `{"enabled":true,"runAsUser":1001}` | Configure Container Security Context (only main container) ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-container  |
| containerSecurityContext.enabled | bool | `true` | Enable container security context |
| containerSecurityContext.runAsUser | int | `1001` | User ID for the container   |
| fullnameOverride | string | `""` | String to fully override keymaster.fullname template with a string  |
| keymaster.config | string | `"{}"` |  |
| keymaster.envFrom | list | `[]` | Environment variables from a config/secret file |
| keymaster.envVars | list | `[]` | Environment variables to add Nomad agent processor pod |
| keymaster.image.pullPolicy | string | `"Always"` |  |
| keymaster.image.registry | string | `"gcr.io"` |  |
| keymaster.image.repository | string | `"nomad-xyz/keymaster"` |  |
| keymaster.podAnnotations | object | `{"prometheus.io/port":"9090","prometheus.io/scrape":"true"}` | Add extra annotations to the pod |
| keymaster.podLabels | object | `{}` | Add extra labels to the pods |
| keymaster.resources | object | `{}` | keymaster container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |
| metrics | object | `{"port":"9090"}` | Container port exposing keymaster metrics  |
| nameOverride | string | `""` | String to partially override keymaster.fullname template with a string (will prepend the release name)  |
| podSecurityContext | object | `{"enabled":true,"fsGroup":1001}` | Configure Pods Security Context ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-pod  |
| podSecurityContext.enabled | bool | `true` | Enable pod security context |
| podSecurityContext.fsGroup | int | `1001` | fsGroup ID for the pod |
| serviceAccount | object | `{"create":true,"name":""}` | ServiceAccount configuration  |
| serviceAccount.create | bool | `true` | Create service account |
| serviceAccount.name | string | `""` | Name of service account to use if create is true |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.10.0](https://github.com/norwoodj/helm-docs/releases/v1.10.0)
