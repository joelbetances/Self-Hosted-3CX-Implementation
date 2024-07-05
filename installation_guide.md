# Installation Guide

This guide will walk you through the steps to install and configure 3CX on your server.

## Prerequisites

- A server with a public IP address
- Basic knowledge of Linux command line
- SSH access to the server

## Steps

1. **Update your server**:
    ```bash
    sudo apt-get update
    sudo apt-get upgrade
    ```

2. **Install necessary packages**:
    ```bash
    sudo apt-get install -y wget apt-transport-https
    ```

3. **Add the 3CX repository**:
    ```bash
    wget -O- http://downloads.3cx.com/downloads/3cxpbx/public.key | sudo apt-key add -
    echo "deb http://downloads.3cx.com/downloads/3cxpbx/ stable main" | sudo tee /etc/apt/sources.list.d/3cxpbx.list
    ```

4. **Install 3CX**:
    ```bash
    sudo apt-get update
    sudo apt-get install -y 3cxpbx
    ```

5. **Configure 3CX**:
    Copy your configuration file to the correct location:
    ```bash
    cp /path/to/your/3cx.conf /etc/3cxpbx/3cx.conf
    ```

6. **Start 3CX**:
    ```bash
    sudo systemctl start 3cxpbx
    sudo systemctl enable 3cxpbx
    ```

## Client Setup

1. **Access 3CX**:
    Open a web browser and navigate to `http://your_server_ip:5000`.

2. **Login**:
    Use the admin credentials set during the installation to log in.
