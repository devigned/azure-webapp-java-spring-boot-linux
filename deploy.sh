docker push devigned/test-spring
az group create -n test -l westus
az appservice plan create -g test -n testplan --is-linux
az appservice web create -g test -n testweb007 -p testplan
az appservice web config container update --docker-custom-image-name devigned/test-spring
az appservice web browse -g test -n testweb007 # give it a minute for the container to deploy