from behave import *

@given('we run "{script_name}"')
def step_impl1(context, script_name):
    pass

@then('Environment variable "{test_var_name}" is set to "{test_val}"')
def step_impl2(context, test_var_name, test_val):
    print(test_var_name + ' is expected to be set to ' + test_val)