# GitHub Actions Exercises

This document contains a list of exercises to practice creating and using GitHub Actions workflows for various tasks.

---

## 1. Python Testing Workflow
**Objective**: Create a GitHub Actions workflow to run Python unit tests on every pull request.

### Steps:
1. Set up a Python environment using `actions/setup-python`.
2. Install dependencies from `requirements.txt`.
3. Run Python unit tests using `unittest` or `pytest`.
4. Trigger the workflow on `pull_request` events.

---

## 2. Docker Build and Push Workflow
**Objective**: Build a Docker image and push it to Docker Hub using GitHub Actions.

### Steps:
1. Authenticate with Docker Hub using `docker/login-action`.
2. Build a Docker image from the repository.
3. Tag the image with a version or `latest`.
4. Push the image to Docker Hub.
5. Trigger the workflow on `push` to the `main` branch.

---

## 3. Terraform Plan and Apply Workflow
**Objective**: Automate Terraform workflows to manage infrastructure.

### Steps:
1. Set up Terraform CLI using `hashicorp/setup-terraform`.
2. Run `terraform init` to initialize the working directory.
3. Run `terraform plan` to preview infrastructure changes.
4. Optionally, run `terraform apply` to apply changes (use manual approval for production).
5. Trigger the workflow on `pull_request` or `push` events.

---

## 4. CI/CD Pipeline for Python Application
**Objective**: Create a complete CI/CD pipeline for a Python application.

### Steps:
1. Run unit tests on pull requests.
2. Build and push a Docker image on `push` to `main`.
3. Deploy the application to a staging environment using Docker Compose.
4. Optionally, deploy to production after manual approval.

---

## 5. Linting and Code Quality Checks
**Objective**: Ensure code quality using linters and formatters.

### Steps:
1. Use `flake8` or `pylint` for Python code linting.
2. Use `black` for Python code formatting.
3. Fail the workflow if linting or formatting issues are found.
4. Trigger the workflow on `pull_request` events.

---

## 6. Scheduled Workflows
**Objective**: Create a scheduled workflow to perform periodic tasks.

### Steps:
1. Use the `schedule` event to trigger the workflow (e.g., daily or weekly).
2. Perform tasks such as running tests, cleaning up resources, or generating reports.
3. Log the results for review.

---

## 7. Multi-Environment Deployment
**Objective**: Deploy to multiple environments (e.g., staging and production) using GitHub Actions.

### Steps:
1. Use environment-specific secrets for deployment.
2. Deploy to staging on `push` to a feature branch.
3. Deploy to production on `push` to `main` with manual approval.
4. Use `matrix` strategy for parallel deployments.

---

## 8. Notifications on Workflow Status
**Objective**: Send notifications based on workflow status.

### Steps:
1. Use `actions/github-script` to send custom notifications.
2. Integrate with Slack, Microsoft Teams, or email for notifications.
3. Notify on success, failure, or manual approval.

---

## 9. Artifact Upload and Download
**Objective**: Use GitHub Actions to manage build artifacts.

### Steps:
1. Build an artifact (e.g., a compiled binary or Docker image).
2. Use `actions/upload-artifact` to store the artifact.
3. Use `actions/download-artifact` in subsequent jobs or workflows.

---

## 10. Custom GitHub Actions
**Objective**: Create and use a custom GitHub Action.

### Steps:
1. Write a custom action in JavaScript or Docker.
2. Publish the action to a public or private repository.
3. Use the custom action in a workflow.

---

### Bonus Exercises
- **Automate Release Creation**: Use `actions/create-release` to automate GitHub release creation.
- **Static Site Deployment**: Deploy a static site to GitHub Pages using `actions/deploy-pages`.
- **Security Scanning**: Integrate security tools like `trivy` or `snyk` to scan for vulnerabilities.

---

Happy automating with GitHub Actions!