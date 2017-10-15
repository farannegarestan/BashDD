from behave import *
import docker


def before_feature(context, feature):
    client = docker.from_env()
    client.images.build(path=".", tag="bashdd", rm=True)
    print("Image is re-created successfully.")
