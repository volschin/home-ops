# `flux-system`

## Introduction

Flux is configured to notify me about important events like reconciliation errors via Discord. It also sends the current reconciliation status of all sections to GitHub as status checks, which are nicely displayed inside PRs:

![Flux GitHub Status](/assets/flux-github-status.png){ loading=lazy }

For a complete guide of how to setup this notifications [visit their documentation](https://fluxcd.io/docs/guides/notifications/).

## Created Resources

| Kind                       | Name                                                  |
| -------------------------- | ----------------------------------------------------- |
| [`Provider`][ref-provider] | `github`, `discord`, `grafana`                        |
| [`Alert`][ref-alert]       | `github`, `infrastructure`, `grafana`                 |
| [`Secret`][ref-secret]     | `github-token`, `discord-webhook-url`, `grafana-auth` |

[ref-provider]: https://fluxcd.io/docs/components/notification/provider/
[ref-alert]: https://fluxcd.io/docs/components/notification/alert/
[ref-secret]: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/secret-v1/

## Links

- [Documentation](https://fluxcd.io/docs/)
- [Guide](https://fluxcd.io/docs/guides/notifications/)
