# `immich`

## Introduction

> High performance self-hosted photo and video management solution.

- Machine learning powered document matching.
- [More features can be found on their GitHub repository](https://github.com/paperless-ngx/paperless-ngx#features)

![Paperless screenshot](/assets/paperless.png){ loading=lazy }

## Created Resources

| Kind                                | Name                       |
| ----------------------------------- | -------------------------- |
| [`Namespace`][ref-namespace]        | `paperless`                |
| [`HelmRelease`][ref-helm-release]   | `paperless`                |

[ref-namespace]: https://kubernetes.io/docs/reference/kubernetes-api/cluster-resources/namespace-v1/
[ref-helm-release]: https://fluxcd.io/docs/components/helm/helmreleases/

## CLI

Paperless provides [several CLI tools](https://docs.paperless-ngx.com/administration/#management-commands) to interact with the instance. These are the most important ones:

=== "Exporting documents"

    ```zsh
    kubectl exec -it --namespace paperless deploy/paperless -- document_exporter
    ```

    For more information on the `mail_fetcher` command [visit their docs](https://docs.paperless-ngx.com/administration/#fetching-e-mail).

## Links

- [Documentation](https://immich.app/docs/overview/introduction)
- [Helm Chart](https://charts.pascaliske.dev/charts/paperless/)
- [GitHub Repository](https://github.com/immich-app/immich)
- [Kubesearch](https://kubesearch.dev/hr/ghcr.io-bjw-s-helm-app-template-immich)
- [Example](https://github.com/szinn/k8s-homelab/blob/main/kubernetes/main/apps/media/immich/app/helm-release.yaml)
