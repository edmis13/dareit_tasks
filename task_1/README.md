# Task #1: Setup of environment

The goal of the first task was to list enabled services in GCP using either Cloud Shell or Cloud SDK installed on my local machine.

## How to get there:

1. First, check the **[GCP documentation](https://cloud.google.com/sdk/gcloud/reference)** in order to get a gcloud command to list **enabled** services in my GCP project

2. Find a command which does this; and it is: 

        `$ gcloud services list --enabled`

3. Copy and paste this command in Cloud Shell or Cloud SDK, hit **Return**

4. Copy the returned list to a file in your cloud_challenge repository called **enabled_services**

5. Commit and push changes to remote repoitory.
