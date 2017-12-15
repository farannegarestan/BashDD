# BashDD
BashDD is a tool that tests Bash scripts for their results in terms of the side effects they create.

## Requirements
BashDD uses a Docker container and Python 3 to test Bash scripts. Before running tests the Python dependencies must be 
installed. For consistency, it's recommeneded to create a Python Virtual Environment to isolate dependencies.

To create Virtual Env:
`virtualenv -p python3 venv`

This command creates a Virtual Env in venv directory. To activate the Virtual Env user:

`source venv/bin/activate`

And then install dependecies in the Virtual Env using:

`pip install -r requirements.txt`


## Run Tests
To run a test on a sample script, put the script in the 'scripts' directory. Then create a feature file in features 
directory and use the following existing steps to test how environment variables can be checked.


### Test Environment Variable
```
Given we run "<SCRIPT NAME>"
Then Environment variable "<VAR NAME>" is set to "<EXPECTED VALUE>"
Then Environment variable "<VAE NAME>" is not set
```

### Test File Creation
```
Given we run "<SCRIPT NAME>"
Then File with absolute path of "<FILE PATH>" is created.
```

### Test File Content
```
Given we run "<SCRIPT NAME>"
Then The file "<FILE PATH>" contains the following lines
      | Line |
      | .... |
      
Then The file "<FILE PATH>" contains only the following lines
      | Line |
      | .... |
      
Then The file "<FILE PATH>" does not contain the following lines
      | Line |
      | .... |
```

### Test File Permissions
```
Given we run "<SCRIPT NAME>"
Then The file "<FILE PATH>" has "<NUMERIC PERMISSIONS>" permission.

```

### Test Package Installed
```
Given we run "<SCRIPT NAME>"
Then Package "<PACKAGE>" is installed.

```

### Test Port Listening
```
Given we run "<SCRIPT NAME>"
Then Port "<PORT>" is listening.

```

### Test Running Process
```
Given we run "<SCRIPT NAME>"
Then Process "<PROCESS NAME>" is running.

```

### Test Service Status
```
Given we run "<SCRIPT NAME>"
Then Service "<SERVICE NAME>" is "<STATUS>".

```

### Test User Info
```
Given we run "<SCRIPT NAME>"
Then User "<USER NAME>" exists.
Then User "<USER NAME>" is member of "<USER GROUP>".

```



            
Once you have created the feature files,  run `behave` in the root directory of the code base. It runs the tests.




