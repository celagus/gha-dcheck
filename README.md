## gha-dcheck usage:

1.  Create a ".github/workflows/" directory in the root of your project repo.

2.  Create a .yml file with a name (example: push.yml) and paste following content:

```
name: Run Dependency-Check
on:
  push:
    branches:
      - master
  release:
    types:
      - created
jobs:
  pre-build-scan:
    runs-on: ubuntu-latest
    defaults:
      run:
        shell: bash
        working-directory: ${{ github.workspace }}
    steps:
      - uses: actions/checkout@v2
        with:
          fetch-depth: 0
      - name: Run SCA Dependency-Check
        uses: celagus/gha-dcheck@v1
```

Every time you push a commit, this action checks for vulnerable dependencies.
