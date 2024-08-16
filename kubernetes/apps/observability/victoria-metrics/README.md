# VictoriaMetrics

## Introduction
VictoriaMetrics is a fast, cost-effective and scalable monitoring solution and time series database. It delivers high performance and reliability and is a full replacement for Prometheus/Thanos and can use the Prometheus CRD's. It uses the alert manager as independent install.

![Infrastructure status page](/docs/assets/vm-k8s-stack-overview.png){ loading=lazy }

The Prometheus Operator looks for `ServiceMonitor` and `PodMonitor` objects in all namespaces and adds them to it's list of scrape targets. Most Helm charts already provide those monitor objects behind a values flag. If there was no corresponding flag available a manual declaration was added to this repository as follows:

=== "Example of kind `ServiceMonitor`"

    ```yaml
    apiVersion: monitoring.coreos.com/v1
    kind: ServiceMonitor
    metadata:
      name: cloudflared
      namespace: cloudflared
    spec:
      endpoints:
        - port: http
          path: /metrics
          interval: 30s
      selector:
        matchLabels:
          app.kubernetes.io/name: cloudflared # references the target object (1)
    ```

    1. Selector label which references the target `Service` object to monitor.

=== "Example of kind `PodMonitor`"

    ```yaml
    apiVersion: monitoring.coreos.com/v1
    kind: PodMonitor
    metadata:
      name: cloudflared
      namespace: cloudflared
    spec:
      podMetricsEndpoints:
        - port: http
      selector:
        matchLabels:
          app.kubernetes.io/name: cloudflared # references the target object (1)
    ```

    1. Selector label which references the target `Pod` object to monitor.

## Created Resources

| Kind                                | Name                                                                  |
| ----------------------------------- | --------------------------------------------------------------------- |
| [`HelmRelease`][ref-helm-release]   | `kube-prometheus-stack`                                               |
| [`Certificate`][ref-certificate]    | `prometheus.${DOMAIN_INTERNAL}`, `alerts.${DOMAIN_INTERNAL}`, `grafana.${DOMAIN_INTERNAL}`       |
| [`IngressRoute`][ref-ingress-route] | `dashboard-prometheus`, `dashboard-alertmanager`, `dashboard-grafana` |
| [`ConfigMap`][ref-config-map]       | `grafana-dashboard-nodes`, `grafana-dashboard-containers`             |

[ref-helm-release]: https://fluxcd.io/docs/components/helm/helmreleases/
[ref-certificate]: https://cert-manager.io/docs/reference/api-docs/#cert-manager.io/v1.Certificate
[ref-ingress-route]: https://doc.traefik.io/traefik/routing/providers/kubernetes-crd/#kind-ingressroute
[ref-config-map]: https://kubernetes.io/docs/reference/kubernetes-api/config-and-storage-resources/config-map-v1/

## Migration from Prometheus

- https://docs.victoriametrics.com/operator/migration/
- https://blog.zomato.com/migrating-to-victoriametrics-a-complete-overhaul-for-enhanced-observability

## Links

- [Documentation](https://victoriametrics.com)
- [GitHub Repository](https://github.com/VictoriaMetrics/VictoriaMetrics)
- [Helm Chart](https://github.com/VictoriaMetrics/helm-charts/tree/master/charts/victoria-metrics-k8s-stack)
