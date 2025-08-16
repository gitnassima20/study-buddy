#!/bin/bash

# Default to local environment
ENV=${1:-local}

# Check if environment parameter is valid
if [ "$ENV" != "local" ] && [ "$ENV" != "prod" ]; then
    echo "Error: Environment must be either 'local' or 'prod'"
    exit 1
fi

# Use environment-specific file
if [ "$ENV" = "prod" ]; then
    export $(cat ../.env.prod | xargs)
    echo "Using production environment"
else
    export $(cat ../.env.local | xargs)
    echo "Using local environment"
fi

# Start containers
podman-compose up -d