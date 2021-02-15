# aws-vault

Creds to https://github.com/99designs/aws-vault

Dockerized version of `aws-vault` which can be used with local bins/soft/etc.

It uses `aws-vault` inside the container, exports ENV vars, imports them into your host machine and using them executes commands after `--`.
## Install

1. Symlink the `./bin/aws-vault` into any of your `$PATH` directories
2. Use it
## Example usage

```shell
$ aws-vault exec myproject -- aws s3 ls
```

`aws s3 ls` will be executed locally, on your host machine, and not in the container.

For complete how-to-use aws-vault please refer to https://github.com/99designs/aws-vault
