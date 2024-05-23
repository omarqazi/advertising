deploy : production image push-image migrate swap-containers
	@echo Deployed Advertising Competition
image :
	docker build -t omarqazi/advertising .
push-image :
	docker push omarqazi/advertising
baseimage : 
	docker build --platform linux/amd64 -t omarqazi/advertising-base -f DockerfileBase  .
push-baseimage :
	docker push omarqazi/advertising-base
rebuild-base : baseimage push-baseimage
	@echo Rebuilt base docker image
migrate : 
	ssh omar@freefsd.com sh migrate_advertising.sh
swap-containers : 
	ssh omar@freefsd.com sh deploy_advertising.sh
production :
	git checkout production
	git merge main
	git push origin production
	git checkout main
	git push origin main
	@echo "Updated and pushed production branch"