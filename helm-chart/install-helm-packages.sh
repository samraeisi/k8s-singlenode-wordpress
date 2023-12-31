#!/usr/bin/env bash
source ../vars.txt
helm dependency build

helm install wordpress-app \
--set phpmyadmin.ingress.hostname=${YourDomainURL} \
--set mysql.auth.username=${wordpressUsername} \
--set mysql.auth.password=${wordpressPassword} \
--set mysql.auth.rootPassword=${MysqlrootPassword} \
--set wordpress.ingress.hostname=${YourDomainURL} \
--set wordpress.externalDatabase.user=${MysqlUsername} \
--set wordpress.externalDatabase.password=${MysqlPassword} \
--set wordpress.wordpressUsername=${wordpressUsername} \
--set wordpress.wordpressPassword=${wordpressPassword} .
