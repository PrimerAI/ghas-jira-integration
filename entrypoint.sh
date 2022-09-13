#!/bin/sh
cd /code && pipenv run ./gh2jira serve \
                            --gh-url "$GITHUB_URL" \
                            --gh-app-id "$GH2JIRA_GH_APP_ID" \
                            --gh-app-secret "$GH2JIRA_GH_APP_SECRET" \
                            --gh-install-id "$GH2JIRA_GH_INSTALL_ID" \
                            --gh-org "$GITHUB_REPOSITORY_OWNER" \
                            --jira-url "$JIRA_URL" \
                            --jira-user "$JIRA_USER" \
                            --jira-token "$JIRA_TOKEN" \
                            --jira-project "$JIRA_PROJECT" \
                            --port "$WEBHOOK_PORT" \
                            --secret "$WEBHOOK_SECRET" \
                            --issue-end-state "suppressed" \
                            --jira-labels 'security,vulnerability,github' \
                            --direction "$SYNC_DIRECTION"
