# nomad-bridge

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

A Helm Chart that encapsulates the deployment of the Nomad bridge agents

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| aws | object | `{}` | Base64 encoded AWS Credentials used by Nomad agent to sign transactions and store proofs to S3 |
| commonAnnotations | object | `{"prometheus.io/port":"9090","prometheus.io/scrape":"true"}` | Add extra annotations to all pods |
| commonEnvVars | list | `[]` | Common environment variables to add all pods |
| commonLabels | object | `{}` | Add extra labels to all pods |
| containerSecurityContext | object | `{"enabled":true,"runAsUser":1001}` | Configure Container Security Context (only main container) ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-container |
| containerSecurityContext.enabled | bool | `true` | Enable container security context |
| containerSecurityContext.runAsUser | int | `1001` | User ID for the container   |
| fullnameOverride | string | `""` | String to fully override agent.fullname template with a string |
| kathy.enabled | bool | `false` | Enable Nomad agent kathy |
| kathy.envVars | list | `[]` | Environment variables to add Nomad agent kathy pod |
| kathy.image | object | `{"pullPolicy":"Always","registry":"gcr.io","repository":"nomad-xyz/nomad-agent","tag":"latest"}` | Nomad agent kathy docker image configuration (immutable image tags are recommended) |
| kathy.podAnnotations | object | `{}` | Add extra annotations to the pod |
| kathy.podLabels | object | `{}` | Add extra labels to the pods |
| kathy.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Kathy container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |
| metrics | object | `{"port":"9090"}` | Container port exposing Nomad agent metrics |
| nameOverride | string | `""` | String to partially override agent.fullname template with a string (will prepend the release name) |
| podSecurityContext | object | `{"enabled":true,"fsGroup":1001}` | Configure Pods Security Context ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-pod |
| podSecurityContext.enabled | bool | `true` | Enable pod security context |
| podSecurityContext.fsGroup | int | `1001` | fsGroup ID for the pod |
| processor.enabled | bool | `true` | Enable Nomad agent processor |
| processor.envVars | list | `[]` | Environment variables to add Nomad agent processor pod |
| processor.image.pullPolicy | string | `"Always"` |  |
| processor.image.registry | string | `"gcr.io"` |  |
| processor.image.repository | string | `"nomad-xyz/nomad-agent"` |  |
| processor.image.tag | string | `"latest"` |  |
| processor.podAnnotations | object | `{}` | Add extra annotations to the pod |
| processor.podLabels | object | `{}` | Add extra labels to the pods |
| processor.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Processor container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |
| relayer.enabled | bool | `true` | Enable Nomad agent relayer |
| relayer.envVars | list | `[]` | Environment variables to add Nomad agent relayer pod |
| relayer.image | object | `{"pullPolicy":"Always","registry":"gcr.io","repository":"nomad-xyz/nomad-agent","tag":"latest"}` | Nomad agent relayer docker image configuration (immutable image tags are recommended) |
| relayer.podAnnotations | object | `{}` | Add extra annotations to the pod |
| relayer.podLabels | object | `{}` | Add extra labels to the pods |
| relayer.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Relayer container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |
| storage | object | `{"accessModes":"ReadWriteOnce","capacity":"10Gi","mountPath":"/usr/share/nomad","storageClass":"standard"}` | Persistent Storage pod configuration |
| storage.accessModes | string | `"ReadWriteOnce"` | AccessModes for Persistent Volume(s) |
| storage.capacity | string | `"10Gi"` | Mount path for Nomad DB Persistent Volume(s)  |
| storage.storageClass | string | `"standard"` | StorageClass for Persistent Volume(s) |
| updater.enabled | bool | `true` | Enable Nomad agent updater |
| updater.envVars | list | `[]` | Environment variables to add Nomad agent updater pod |
| updater.image | object | `{"pullPolicy":"Always","registry":"gcr.io","repository":"nomad-xyz/nomad-agent","tag":"latest"}` | Nomad agent updater docker image configuration (immutable image tags are recommended) |
| updater.podAnnotations | object | `{}` | Add extra annotations to the pod |
| updater.podLabels | object | `{}` | Add extra labels to the pods |
| updater.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Updater container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |
| watcher.enabled | bool | `false` | Enable Nomad agent watcher |
| watcher.envVars | list | `[]` | Environment variables to add Nomad agent watcher pod |
| watcher.image.pullPolicy | string | `"Always"` |  |
| watcher.image.registry | string | `"gcr.io"` |  |
| watcher.image.repository | string | `"nomad-xyz/nomad-agent"` |  |
| watcher.image.tag | string | `"latest"` |  |
| watcher.podAnnotations | object | `{}` | Add extra annotations to the pod |
| watcher.podLabels | object | `{}` | Add extra labels to the pods |
| watcher.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Watcher container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.7.0](https://github.com/norwoodj/helm-docs/releases/v1.7.0)
