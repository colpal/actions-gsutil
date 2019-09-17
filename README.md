This action can be used to run a gsutil command. 

example usage:

```yaml
name: Update Bucket on Push
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: colpal/actions-gsutil@v1.0.0
        env:
          GCP_CREDENTIALS: ${{ secrets.GCP_CREDENTIALS }}
        with:
          args: cp $GITHUB_WORKSPACE/file.name gs://bucket/
```
