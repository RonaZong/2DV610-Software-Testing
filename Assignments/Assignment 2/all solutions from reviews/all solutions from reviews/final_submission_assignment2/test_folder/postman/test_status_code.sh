#!/bin/bash

# test status code

newman run test_http_status_code.postman_collection.json -e env_my_web_server.postman_environment.json
