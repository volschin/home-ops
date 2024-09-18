#!/bin/bash
# List all HelmRepository names
repositories=$(kubectl get helmrepositories -A -o jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}')

# List all HelmRelease sources (HelmRepository names they reference)
releases=$(kubectl get helmreleases -A -o jsonpath='{range .items[*]}{.spec.chart.spec.sourceRef.name}{"\n"}{end}')

# Find HelmRepositories not used by HelmReleases
for repo in $repositories; do
  if ! echo "$releases" | grep -q "$repo"; then
    echo "HelmRepository not associated with any HelmRelease: $repo"
  fi
done
