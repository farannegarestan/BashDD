from behave import *
import docker


def before_feature(context, feature):
    context.client = docker.from_env()
    context.client.images.build(path=".", tag="bashdd", rm=True)
    print("Image is re-created successfully.")


def before_scenario(context, scenario):
    client = context.client
    context.container = client.containers.run(image="bashdd:latest",
                                      name="bashdd",
                                      detach=True,
                                      tty=True)
    print("Container started.")


def after_scenario(context, scenario):
    container = context.client.containers.get("bashdd")
    container.kill()
    container.remove()


def after_feature(context, feature):
    context.client.containers.prune()
    context.client.images.prune({'dangling': True})
