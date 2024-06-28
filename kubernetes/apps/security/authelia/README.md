# Remarks for Securing via authelia

### Snippets to add to ingresses to be secured

```
annotations:
  nginx.ingress.kubernetes.io/auth-method: 'GET'
  nginx.ingress.kubernetes.io/auth-url: 'http://authelia.security.svc.cluster.local/api/authz/auth-request'
  nginx.ingress.kubernetes.io/auth-signin: 'https://auth.${SECRET_DOMAIN}?rm=$request_method'
  nginx.ingress.kubernetes.io/auth-response-headers: 'Remote-User,Remote-Name,Remote-Groups,Remote-Email'
  nginx.ingress.kubernetes.io/auth-snippet: 'proxy_set_header X-Forwarded-Method $request_method;'
```
