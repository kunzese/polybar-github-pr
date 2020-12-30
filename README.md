# Script: github-pr-review-requests

A script that displays the number of open pull request review requests on GitHub
for the current user.

## Dependencies

* `ruby`
* `bundler`
* a [personal GitHub access token](https://github.com/settings/tokens)

## Module

```ini
[module/github-pr-review-requests]
type = custom/script
interval = 300
exec = GITHUB_TOKEN=$(< ~/.github-token) ~/bin/github-pr-review-requests.rb
format-suffix = " PRs"
click-left = xdg-open https://github.com/pulls/review-requested
click-right = xdg-open https://github.com/pulls
```
