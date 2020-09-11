# Jenkins X 3.x GitOps Repository for Azure, Terraform and Vault

This git repository setups the cloud resources required to run Jenkins X on Azure via Terraform and then sets up Jenkins X with Vault.

## Prerequisites

We assume you have access to an Azure tenant and subscription and have logged in to an appropriate subscription via

```sh
az login
az account set -s <subscription_id>
```

## Creating/upgrading cloud resources

Run the `./bin/apply.sh` script to generate the terraform resources and modify the `jx-requirements.yml` file

Now git commit and push any changes...

```bash 
git add *
git commit -a -m "chore: regenerated terraform"
```

## Install the git operator

Please follow the [instructions on how to install the git operator](https://jenkins-x.io/docs/v3/guides/operator/) via the [jx admin operator](https://github.com/jenkins-x/jx-admin/blob/master/docs/cmd/jx-admin_operator.md) command:

```bash
jx admin operator
```

See the [how to install the git operator](https://jenkins-x.io/docs/v3/guides/operator/) 
