Generating tls-secret using kubernetes task

Requirements:

 1. KubernetesserviceEndpoint

 2. tls name

 3. privateKey

 4. certKey

Kubectl: create -n istio-system secret tls ${{parameters.tlsname}} --key ${{parameters.privatekey}} --cert ${{parameters.certkey}}'