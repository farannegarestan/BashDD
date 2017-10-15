# BashDD
BashDD is a tool that tests Bash scripts for their results in terms of the side effects they create.

## Requirements
BashDD uses a Docker container and Python 3 to test Bash scripts. Before running tests the Python dependencies must be 
installed.

`pip install -r requirements.txt`


## Run Tests
To run a test on a sample script, put the script in the 'scripts' directory. Then create a feature file in features 
directory and use the following existing steps to test how environment variables can be checked.

```
Given we run "<SCRIPT NAME>"
Then Environment variable "<VAR NAME>" is set to "<EXPECTED VALUE>"
Then Environment variable "<VAE NAME>" is not set
```

Once you have created the feature files,  run `behave` in the root directory of the code base. It runs the tests.




