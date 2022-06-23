#!/usr/bin/env python3

import requests

REPO_URL = "https://github.com/ggiill/docker-starter-python"


def get_repo_info():
    response = requests.get(url=REPO_URL)
    response_length = len(response.content)
    return f"This repo's GitHub homepage is {response_length} bytes in size."


if __name__ == "__main__":
    repo_info = get_repo_info()
    print(repo_info)
