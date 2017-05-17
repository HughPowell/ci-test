#!/usr/bin/env bash
git remote set-url origin https://$GITHUB_TOKEN@github.com/$GITHUB_ORG/ci-test.git &&
git branch --set-upstream-to origin/master master &&
git config user.name "$RELEASERS_NAME" &&
git config user.email "$RELEASERS_EMAIL" &&
lein release :patch
