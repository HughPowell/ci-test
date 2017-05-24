#!/usr/bin/env bash

if ! [[ $(git log -1 --pretty=%B) =~ ^Version\ [0-9]+\.[0-9]+\.[0-9]-SNAPSHOT$ ]] ; then
	git remote set-url origin https://$GITHUB_TOKEN@github.com/$GITHUB_ORG/ci-test.git &&
	git branch --set-upstream-to origin/master master &&
	git config user.name "$RELEASERS_NAME" &&
	git config user.email "$RELEASERS_EMAIL" &&
	git config push.default simple &&
	git checkout master &&
	git pull origin master &&
	lein release :patch
fi
