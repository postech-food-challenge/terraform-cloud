# Terraform Cloud - postech-food-challenge

This repository contains the Terraform configurations for the `postech-food-challenge` managed on Terraform Cloud. It serves as the hub for defining, versioning, and deploying our cloud setup, ensuring efficient and collaborative infrastructure automation.

## Getting Started

To start contributing to this project, follow the steps below to set up your environment:

### Step 1: Create a Hashicorp Account

Create a Hashicorp account if you haven't already. After creating your account, message the repository administrator with your Hashicorp username so that you can be added to the `postech-food-challenge` organization on Terraform Cloud.

### Step 2: AWS Academy Lab Setup

Open your browser and navigate to [AWS Academy](https://awsacademy.instructure.com/). Start up the lab module and then click the `start lab` button.

### Step 3: Obtain AWS Credentials

Once the lab is online, click on the `AWS Details` button to obtain the `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`, and `AWS_SESSION_TOKEN` variables.

### Step 4: Update Secrets in GitHub

Navigate to this GitHub repository and go to `Settings > Secrets and Variables > Actions`. Add or update the AWS credentials obtained in the previous step as organization secrets.

### Step 5: Update Secrets in Terraform Cloud

In the Terraform Cloud UI, navigate to `Settings > Variables Sets`. Manage the `AWS Academy Credentials` variable set by adding the values of the AWS credentials.

## Contributing to Infrastructure

To contribute to the infrastructure code, follow these steps:

1. **Clone the Repository**: Clone this repository to your local machine.
2. **Create a Feature Branch**: Create a new branch for your changes, name it `feature/your-feature-name`.
3. **Make Changes**: Implement your infrastructure changes in your branch.
4. **Open a Pull Request**: Once your changes are ready, open a pull request to the `main` branch. The Terraform Cloud GitHub App connected to this repository will automatically trigger a `speculative plan` on your pull request. This plan is not applied but allows you to see potential changes.

## Applying Changes

After your pull request is merged, a standard plan and apply run is triggered automatically in the Terraform Cloud UI. You can manually trigger a new run by clicking on `+ new run` and selecting the `plan + apply standard` option in the `terraform-cloud` workspace.

This setup allows team members to collaborate effectively, ensuring that all infrastructure changes are reviewed and tested before being applied.

