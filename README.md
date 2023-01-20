# Git Clone Buildkite Plugin
Plugin for buildkite to perform a simple git clone of an extra repository in a specific branch at post-checkout.

# Example
```
- label: Some command
    plugins:
      - fclabs/git-clone-with-branch:
          repository: git@github.com:fclabs/git-clone-buildkite-plugin.git
          branch: test
```