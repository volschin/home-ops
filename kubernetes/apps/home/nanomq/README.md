# `NanoMQ`

## Introduction

[![GitHub Release](https://img.shields.io/github/release/emqx/nanomq?color=brightgreen&label=Release)](https://github.com/emqx/nanomq/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/emqx/nanomq?label=Docker%20Pulls)](https://hub.docker.com/r/emqx/nanomq)

NanoMQ MQTT Broker (NanoMQ) is an all-around Edge Messaging Platform that includes a blazing-fast MQTT Broker for the IoT/IIoT and a lightweight Messaging Bus for SDV.

NanoMQ's embedded Actor architecture extends NNG's internal asynchronous I/O, plus an enhanced message passing and scheduling system to maximize the overall capacity. Fine-tuned towards the embedded environment and mission-critical scenarios.

NanoMQ fully supports MQTT V3.1.1/3.1 and MQTT V5.0.

For more information, please visit [NanoMQ homepage](https://nanomq.io/).

### Features

- Cost-effective on an embedded platform;
- Fully based on native POSIX. High Compatibility;
- Pure C implementation. High portability;
- Fully asynchronous I/O and multi-threading;
- Good support for SMP;
- Low latency & High handling capacity;

![image](https://user-images.githubusercontent.com/64823539/182988350-f6e2520f-6e6f-46db-b469-685bec977270.png)
## Created Resources

| Kind                                | Name                      |
| ----------------------------------- | ------------------------- |
| [`Namespace`][ref-namespace]        | `home`                    |
| [`HelmRelease`][ref-helm-release]   | `app-template`            |

[ref-namespace]: https://kubernetes.io/docs/reference/kubernetes-api/cluster-resources/namespace-v1/
[ref-helm-release]: https://fluxcd.io/docs/components/helm/helmreleases/

## Links

- [Documentation](https://nanomq.io/docs/en/latest/)
- [Helm Chart](https://charts.pascaliske.dev/charts/code-server/)
- [GitHub Repository](https://github.com/nanomq/nanomq)
