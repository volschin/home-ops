# `paperless`

## Introduction

> A community-supported supercharged version of paperless: scan, index and archive all your physical documents.

Paperless-ngx is a document management system that transforms your physical documents into a searchable online archive so you can keep, well, less paper – although I still keep almost all documents in paper form.

Some of it's features are:

- Performs OCR on your documents, adds selectable text to image only documents and adds tags, correspondents and document types to your documents.
- Full text search helps you find what you need.
- Email processing: Paperless adds documents from your email accounts.
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

    For more information on the `document_exporter` command [visit their docs](https://docs.paperless-ngx.com/administration/#exporter).

=== "Importing documents"

    ```zsh
    kubectl exec -it --namespace paperless deploy/paperless -- document_importer
    ```

    For more information on the `document_importer` command [visit their docs](https://docs.paperless-ngx.com/administration/#importer).

=== "Re-tag documents"

    ```zsh
    kubectl exec -it --namespace paperless deploy/paperless -- document_retagger
    ```

    For more information on the `document_retagger` command [visit their docs](https://docs.paperless-ngx.com/administration/#retagger).

=== "Fetching e-mails"

    ```zsh
    kubectl exec -it --namespace paperless deploy/paperless -- mail_fetcher
    ```

    For more information on the `mail_fetcher` command [visit their docs](https://docs.paperless-ngx.com/administration/#fetching-e-mail).

## Links

- [Documentation](https://docs.paperless-ngx.com)
- [Helm Chart](https://charts.pascaliske.dev/charts/paperless/)
- [GitHub Repository](https://github.com/paperless-ngx/paperless-ngx)
