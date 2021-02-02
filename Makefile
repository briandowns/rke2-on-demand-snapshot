.PHONY: image
image:
	docker build -t briandowns/rke2-on-demand-snapshot:latest . 

.PHONY: image-push
image-push:
	docker push briandowns/rke2-on-demand-snapshot:latest
