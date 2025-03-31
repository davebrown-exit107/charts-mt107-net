CHART_URL := "https://davebrown-exit107.github.io/charts-mt107-net"

package-all:
  helm package ./charts/*
  mv *.tgz docs/

generate-index:
  helm repo index docs --url https://davebrown-exit107.github.io/charts-mt107-net

prep-for-publish: package-all generate-index
