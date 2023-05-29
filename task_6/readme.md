# Task #6: Infrastructure as a Code

## Goal of the task:

**Automate creation and management of resources in GCP**

## How to get there:

1. Open Cloud Shell and check version of Terraform using `terraform version`

2. Create a file **main.tf** (Cloud Shell > `vim main.tf`); configure a provider to be able to communicate with GCP API

```
provider "google" {
    project = "{{project_id}}
    region = "us-central1"
    zone = "us-central-c
}
```
3. Provide the following code to `main.tf` to configure VM:

```
resource "google_compute_instance" "dare-id-vm" {
  name         = "dareit-vm-tf"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit"]

  boot_disk {

    initialize_params {

      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }
    network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
```

4. Run the following command in Cloud Shell to initialize Terraform:

```
terraform init
```

5. Run the following command to check plan of the Terraform; checking plan tells us what actions Terraform will take (e.g. add 1 new resource)

```
terraform plan
```

**Note:** You will be asked to authorize Cloud Shell to perform actions using your credentials;

6. Run `terraform apply` to apply configuration written in the `main.tf` file; you will see the following prompt:

```
Do you want to perform these actions?
    Terraform will perform the actions described above.
    Only 'yes' will be accepted to approve

    Enter a value: yes
```

7. Check GCP UI to see if a new instance has been added; 

Google Cloud > Compute Engine > VM instances

8. *Play around with removing/adding tags and resources*

As part of the task number 6 I was asked to create several resources using Terraform; requirements below:

1. Create main.tf file, configure the provider and add configuration to create resources: 
    1. Cloud Storage bucket that has public access configured
    2. Compute Instance
    3. Cloud SQL instance with Postgres engine. Create database called `dareit` and a user called `dareit_user`
2. Manually change the password of the `dareit_user`
3. Upload manually the `index.html` file (that you previously created in Task 1) into the newly created bucket.
Create a new folder in my cloud_challenge repo with name `task_6` , commit the `main.tf` file there. (don’t commit your terraform state file). Copy the URL of the object (index.html) from your bucket and add it to readme.md.