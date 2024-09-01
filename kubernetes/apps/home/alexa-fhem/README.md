# alexa-fhem

Alexa voice control module for FHEM.

## Basic Authentication

This example shows how to add authentication in a Ingress rule using a secret that contains a file generated with `htpasswd`.
It's important the file generated is named `auth` (actually - that the secret has a key `data.auth`), otherwise the ingress-controller returns a 503.

### Create htpasswd file

```console
$ htpasswd -c auth foo
New password: <bar>
New password:
Re-type new password:
Adding password for user foo
```

### Convert htpasswd into a secret

```console
$ kubectl create secret generic basic-auth --from-file=auth
secret "basic-auth" created
```

### Examine secret

```console
$ kubectl get secret basic-auth -o yaml
apiVersion: v1
data:
  auth: Zm9vOiRhcHIxJE9GRzNYeWJwJGNrTDBGSERBa29YWUlsSDkuY3lzVDAK
kind: Secret
metadata:
  name: basic-auth
  namespace: default
type: Opaque
```
