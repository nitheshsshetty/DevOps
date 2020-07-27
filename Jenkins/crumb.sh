#!/bin/bash
#step1:crumb token generation
crumb=$(curl -u "admin:1234" -s 'http://myjenkins:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')

#step2:running the Jnekins job via crumb using build URL(NON parameterized)
curl -u "admin:1234" -H "$crumb" -X POST "http://myjenkins:8080/job/ENV/build?delay=0sec"

#step2:running the Jnekins job via crumb using build URL(parameterized)
#curl -u "admin:1234" -H "$crumb" -X POST  "http://myjenkins:8080/job/backup-to-aws/buildWithParameters?MYSQL_HOST=db_host&DATABASE_NAME=testdb&AWS_BUCKET_NAME=jenkins-mysql-backup"

