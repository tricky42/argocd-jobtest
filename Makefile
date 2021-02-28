.PHONY: docker
docker:
		cd docker; docker build -t k3d-localhost:5111/jobby .; docker push k3d-localhost:5111/jobby

.PHONY: argocd
argocd:
		helm upgrade --install argocd --namespace argocd --create-namespace argo/argo-cd -f argo-values.yaml

