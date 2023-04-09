# Task #2: Sttic website

## Goal of the task:

Create and host a static website using Google Cloud Storage (GCS) bucket

## How to get there:

1. Go to **[Google Cloud Console](https://console.cloud.google.com)**. On the navigation Menu, choose **Cloud Storage**. Create a bucket.

    1. Choose where physically the data should be stored. Either location is fine for this task.
    1. Choose a storage class for your data > Leave default settings.
    1. Choose how to control access to objects > **Uncheck** the Enforce public access prevention on the bucket.
    1. Choose how to protect object data > Leave default settings.
    1. Click **CREATE**.

2. Create a new folder in your repository called **task_2**. Create fwo files here:

    1. website_url
    1. index.html; copy and paste content below:

        <!DOCTYPE html>
        <html>
         <head>
          <title>Hello World: Static Website</title>
         </head>
          <body>
           <h1>I am hosted on a bucket in GCP.</h1>
           <p>DareIT rocks!</p>
          </body>
        </html>

3. Upload the index.html file to the bucket.

4. Amend permissions of the bucket. We need to change permissions so that the website is accessible by others.

PERMISSIONS > GRANT ACCESS > New principals - `allUsers` > make sure that it has a predefined role called **Storage Object Viewer** > Save > Click ALLOW PUBLIC ACCESS on the popup window

5. Copy the public of the object and paste it in your browser to check if it works. 

6. Paste the url into the website_url file and **Save**

7. Commit and push changes to remote repository.