from behave import *
from util.docker_util import *


@given('we run "{script_name}"')
def step_impl1(context, script_name):
    context.environment = run_script_for_env(script_name, context.container)


@then('Environment variable "{test_var_name}" is set to "{test_val}"')
def step_impl2(context, test_var_name, test_val):
    if test_var_name in context.environment:
        assert(context.environment[test_var_name] == test_val)
    else:
        assert False, "Expected {1} but found {2}".format(test_val, context.environment[test_var_name])


@then('Environment variable "{test_var_name}" is not set')
def step_impl3(context, test_var_name):
    assert(test_var_name not in context.environment)


@then('File with absolute path of "{file_path}" is created.')
def step_impl4(context, file_path):
    container = context.container
    result = container.exec_run("bash -c 'ls -l {0} > /dev/null 2>&1; echo $?'".format(file_path)).strip().decode("utf-8")
    assert result == '0'

