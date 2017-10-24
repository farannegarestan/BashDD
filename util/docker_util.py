import docker


def run_script_for_env(script_name, container):
    env = container.exec_run("bash -c 'source /app/scripts/"+script_name+" > /dev/null; env'")
    result = env.split(b"\n")
    environment = {}
    for val in result:
        val_parts = val.split(b"=")
        if len(val_parts) > 1:
            environment[val_parts[0].decode("utf-8")] = val_parts[1].decode("utf-8")
    return environment

def get_container(client):
    return client.containers.get("bashdd")


if __name__ == '__main__':
    pass

