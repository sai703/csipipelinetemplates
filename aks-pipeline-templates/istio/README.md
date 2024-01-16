Istio installation with EBG DevOps/aks-pipeline-templates/istio:
This is directory contains istio template and `template.yaml`

Requirements :
kubernetesServiceConnection(Endpoint connection)
resourceGroupName
kubernetesCluster
istioIngressNamespaceName
istioIngressgatewayName

Note: we are installing istio with helm and kubernetes tasks
  Tasks:
Helm install,upgrade.
Kubectl apply,label.