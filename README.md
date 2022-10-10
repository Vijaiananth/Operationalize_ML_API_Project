# Operationalize ML API Project

## CircleCI status badge

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Vijaiananth/Operationalize_ML_API_Project/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Vijaiananth/Operationalize_ML_API_Project/tree/main)


## Project Overview

In this project, I have applied the skills that I have acquired in this course to operationalize a Machine Learning Microservice API. 

In this project I was given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

## Files and their purpose

1. app.py - Python app that returns predictions about housing prices
2. Dockerfile - File that creates Docker image
3. Makefile - Contains commands that sets up environment, runs tests and lints.
4. requirements.txt - Contains list of softwares to be installed in the environment.
5. make_prediction.sh - sends api request to the running app and gets prediction response.
6. run_docker.sh - script to build and run docker image
7. upload_docker.sh - script to upload docker image to docker hub
8. run_kubernetes.sh - script to set up app and run it on kubernetes cluster

## Setup the Environment

1. Create a cloud9 environment.
2. Increase storage volume to 30 GB
3. Clone this git repo.
4. Create a local python environment
    python3 -m venv ~/.Operationalize_ML_API_Project
5. Activate it
    source ~/.Operationalize_ML_API_Project/bin/activate
6. Run make install to install all dependancies.

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

Steps to be followed in Cloud9 environment:

1. Install minikube
2. Install kubectl
3. Run minikube start
4. Run run_kubernetes.sh script and this will create a pod with the flask app
5. In another terminal, run make_predictions.sh and this will result in prediction response.
