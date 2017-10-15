from behave import *
from util.docker_util import *


@given('we run "{script_name}"')
def step_impl1(context, script_name):
    pass
    context.environment = run_script_for_env(script_name)


@then('Environment variable "{test_var_name}" is set to "{test_val}"')
def step_impl2(context, test_var_name, test_val):
    #print(context.environment)
    if test_var_name in context.environment:
        assert(context.environment[test_var_name] == test_val)
    else:
        assert False


@then('Environment variable "{test_var_name}" is not set')
def step_impl3(context, test_var_name):
    assert(test_var_name not in context.environment)