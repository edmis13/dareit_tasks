# Task #3: Python and cloud function

## Goal of the task:

**Learn somw basics of Python and run the first Cloud Function.**

## How to get there:

1. Go to Google Console; choose **Cloud Function** from the **Navigation Menu** Click **CREATE FUNCTION**.

    1. Enable required APIs if needed (you will see a prompt).
    1. Choose the trigger for the cloud function (**HTTP** in this task as we want to trigger the function from our browser)
    1. Runtime, build, conections, and security settings > Leave at default
    1. SAVE

2. You will now be moved to Editor; Choose which environment should be used to run your code (for this task Python 3.7 is used)

3. As a next step, change some content on main.py (Edit Hello World to something else). **main.py** is the main file of the program and will be executed if we trigger the execution of the cloud function. Wait a minute or two for a cloud function to be deployed

4. Copy the url from the Trigger Tab; paste it in the browser. Function is triggered (and code in it is executed) when you call the url

5. As an optional step you make some edits to the function above.

EDIT > `(2) Code` > replace code on main.py

6. Paste the trigger to your function in task_3_cloud_function_file in a folder and save

7. Commit and push changes to your repository.