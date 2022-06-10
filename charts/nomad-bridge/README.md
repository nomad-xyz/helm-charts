# nomad-bridge

![Version: 0.1.3](https://img.shields.io/badge/Version-0.1.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

A Helm Chart that encapsulates the deployment of the Nomad bridge agents

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| aws | object | `{}` | Base64 encoded AWS Credentials used by Nomad agent to sign transactions and store proofs to S3 # Example: # aws: #   AWS_ACCESS_KEY_ID: '1234567890' #   AWS_SECRET_ACCESS_KEY: 'abcdefghijklmnopqrstuvwxyz' |
| commonAnnotations | object | `{"prometheus.io/port":"9090","prometheus.io/scrape":"true"}` | Add extra annotations to all pods  |
| commonEnvFrom | list | `[]` | Common environment variables from a config/secret file |
| commonEnvVars | list | `[]` | Common environment variables to add all pods  |
| commonLabels | object | `{}` | Add extra labels to all pods  |
| containerSecurityContext | object | `{"enabled":true,"runAsUser":1001}` | Configure Container Security Context (only main container) ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-container  |
| containerSecurityContext.enabled | bool | `true` | Enable container security context |
| containerSecurityContext.runAsUser | int | `1001` | User ID for the container   |
| fullnameOverride | string | `""` | String to fully override agent.fullname template with a string  |
| image | object | `{"tag":"latest"}` | Default Nomad agent docker image configuration (immutable image tags are recommended) |
| kathy.enabled | bool | `false` | Enable Nomad agent kathy |
| kathy.envFrom | list | `[]` | Environment variables from a config/secret file |
| kathy.envVars | list | `[]` | Environment variables to add Nomad agent kathy pod |
| kathy.image | object | `{"pullPolicy":"Always","registry":"gcr.io","repository":"nomad-xyz/nomad-agent"}` | Nomad agent kathy docker image configuration (immutable image tags are recommended) |
| kathy.podAnnotations | object | `{}` | Add extra annotations to the pod |
| kathy.podLabels | object | `{}` | Add extra labels to the pods |
| kathy.replicas | int | `1` | Number of instances of kathy |
| kathy.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Kathy container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |
| metrics | object | `{"port":"9090"}` | Container port exposing Nomad agent metrics  |
| nameOverride | string | `""` | String to partially override agent.fullname template with a string (will prepend the release name)  |
| podSecurityContext | object | `{"enabled":true,"fsGroup":1001}` | Configure Pods Security Context ref: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/#set-the-security-context-for-a-pod  |
| podSecurityContext.enabled | bool | `true` | Enable pod security context |
| podSecurityContext.fsGroup | int | `1001` | fsGroup ID for the pod |
| processor.enabled | bool | `true` | Enable Nomad agent processor |
| processor.envFrom | list | `[]` | Environment variables from a config/secret file |
| processor.envVars | list | `[]` | Environment variables to add Nomad agent processor pod |
| processor.image.pullPolicy | string | `"Always"` |  |
| processor.image.registry | string | `"gcr.io"` |  |
| processor.image.repository | string | `"nomad-xyz/nomad-agent"` |  |
| processor.podAnnotations | object | `{}` | Add extra annotations to the pod |
| processor.podLabels | object | `{}` | Add extra labels to the pods |
| processor.replicas | int | `1` | Number of instances of processor |
| processor.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Processor container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |
| relayer.enabled | bool | `true` | Enable Nomad agent relayer |
| relayer.envFrom | list | `[]` | Environment variables from a config/secret file |
| relayer.envVars | list | `[]` | Environment variables to add Nomad agent relayer pod |
| relayer.image | object | `{"pullPolicy":"Always","registry":"gcr.io","repository":"nomad-xyz/nomad-agent"}` | Nomad agent relayer docker image configuration (immutable image tags are recommended) |
| relayer.podAnnotations | object | `{}` | Add extra annotations to the pod |
| relayer.podLabels | object | `{}` | Add extra labels to the pods |
| relayer.replicas | int | `1` | Number of instances of relayer |
| relayer.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Relayer container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |
| serviceAccount | object | `{"create":true,"name":""}` | ServiceAccount configuration  |
| serviceAccount.create | bool | `true` | Create service account |
| serviceAccount.name | string | `""` | Name of service account to use if create is true |
| storage | object | `{"accessModes":"ReadWriteOnce","capacity":"10Gi","mountPath":"/usr/share/nomad","storageClass":"standard"}` | Persistent Storage pod configuration  |
| storage.accessModes | string | `"ReadWriteOnce"` | AccessModes for Persistent Volume(s) |
| storage.capacity | string | `"10Gi"` | Mount path for Nomad DB Persistent Volume(s)  |
| storage.storageClass | string | `"standard"` | StorageClass for Persistent Volume(s) |
| updater.enabled | bool | `true` | Enable Nomad agent updater |
| updater.envFrom | list | `[]` | Environment variables from a config/secret file |
| updater.envVars | list | `[]` | Environment variables to add Nomad agent updater pod |
| updater.image | object | `{"pullPolicy":"Always","registry":"gcr.io","repository":"nomad-xyz/nomad-agent"}` | Nomad agent updater docker image configuration (immutable image tags are recommended) |
| updater.podAnnotations | object | `{}` | Add extra annotations to the pod |
| updater.podLabels | object | `{}` | Add extra labels to the pods |
| updater.replicas | int | `1` | Number of instances of updater (Warning: you should always have only one instance of updater running at any given time) |
| updater.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Updater container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |
| watcher.enabled | bool | `false` | Enable Nomad agent watcher |
| watcher.envFrom | list | `[]` | Environment variables from a config/secret file |
| watcher.envVars | list | `[]` | Environment variables to add Nomad agent watcher pod |
| watcher.image.pullPolicy | string | `"Always"` |  |
| watcher.image.registry | string | `"gcr.io"` |  |
| watcher.image.repository | string | `"nomad-xyz/nomad-agent"` |  |
| watcher.podAnnotations | object | `{}` | Add extra annotations to the pod |
| watcher.podLabels | object | `{}` | Add extra labels to the pods |
| watcher.replicas | int | `1` | Number of instances of watcher |
| watcher.resources | object | `{"limits":{"cpu":"50m","memory":"50Mi"},"requests":{"cpu":"10m","memory":"20Mi"}}` | Watcher container's resource requests and limits ref: https://kubernetes.io/docs/user-guide/compute-resources/ |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.10.0](https://github.com/norwoodj/helm-docs/releases/v1.10.0)
