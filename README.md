# conventional-pre-commit-hook
Hook for [pre-commit](https://pre-commit.com/) that checks whether commit messages are formatted adhering to [conventional commits](https://www.conventionalcommits.org).

## Installation

If you're not already using pre-commit, create a `.pre-commit-config.yaml` file in your repository with the following content 

```yaml
---
repos:
  - repo: https://github.com/soerenschneider/conventional-pre-commit-hook
    rev: v1.0.0
    hooks:
      - id: conventional-commit
 ```
 
 Initialize pre-commit using `pre-commit install --hook-type commit-msg`
 
 ## Demo
 ![demo](demo.gif)
