# Database Management System Project

## Overview

Welcome to the Database Management System (DBMS) project! This repository hosts a powerful application that allows you to interact with a SQL database seamlessly. Whether you're a database administrator, developer, or enthusiast, this project simplifies the management and visualization of your database.

## Table of Contents

1. [Project Description](#project-description)
2. [Getting Started](#getting-started)
    - [1. Setting Up Virtual Environment](#1-setting-up-virtual-environment)
    - [2. Installing Streamlit](#2-installing-streamlit)
    - [3. Uploading SQL Dump](#3-uploading-sql-dump)
3. [Running the Application](#running-the-application)
4. [Contributing](#contributing)
5. [License](#license)

## Project Description

This DBMS project is built to streamline your interaction with SQL databases. It leverages the power of Streamlit, a Python library for creating web applications with minimal effort. The application provides a user-friendly interface to explore, query, and manage your SQL database effortlessly.

## Getting Started

Follow these steps to set up the project on your local machine.

### 1. Setting Up Virtual Environment

To ensure a clean and isolated environment, it's recommended to use a virtual Python environment. You can use Anaconda or Miniconda for this purpose.

- **Anaconda/Miniconda Installation:**
  - Visit [Anaconda](https://www.anaconda.com) or [Miniconda](https://docs.conda.io/en/latest/miniconda.html) to download and install.
  - Open a terminal and create a new virtual environment:

    ```bash
    conda create --name dbms_project python=3.8
    ```

  - Activate the virtual environment:

    ```bash
    conda activate dbms_project
    ```

### Installing Streamlit

Streamlit is the key library for building the web application. Install it using pip:
pip install streamlit
### Uploading SQL Dump
Before running the application, you need to upload your SQL dump. Ensure you have a local SQL server running. You can use tools like MySQL or SQLite for this purpose.
### Uploading SQL Dump:
Use your preferred SQL client to upload the provided combined_dump.sql to your local SQL server.
### Running the Application
Now that your environment is set up and the SQL dump is uploaded, you're ready to run the application.
