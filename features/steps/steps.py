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


@then('The file "{file_path}" contains the following lines')
def step_file_content(context, file_path):
    lines = [ row['Line'] for row in context.table]
    container = context.container
    for line in lines:
        result = container.exec_run("bash -c 'cat {0} | grep \"{1}\" | wc -l'".format(file_path, line)).decode("utf-8")
        assert int(result) > 0, "Expected {0} to be present but founds {1} occurance.".format(line, result)


@then('The file "{file_path}" has "{perm}" permission.')
def step_file_perm(context, file_path, perm):
    container = context.container
    result = container.exec_run("bash -c 'stat -c %a {0}'".format(file_path)).decode("utf-8")
    assert int(result) == int(perm), "Expected file {0} to have permission {1} but found {2}".format(file_path, perm, result)


@then('Service "{service}" is "{status}".')
def setp_service_status(context, service, status):
    container = context.container
    result = container.exec_run("bash -c 'service \"{0}\" status | grep \"{1}\" | wc -l'".format(service, status)).decode("utf-8")
    assert int(result) > 0, "Service {0} was expected to be {1} but is not".format(service, status)