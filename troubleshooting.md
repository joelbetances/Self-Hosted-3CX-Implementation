# Troubleshooting Guide

This guide provides solutions to common issues encountered during the installation and configuration of 3CX.

## Common Issues

### Issue: 3CX service fails to start

- **Solution**: Check the 3CX logs for errors:
    ```bash
    sudo journalctl -u 3cxpbx
    ```

### Issue: Clients cannot connect to the 3CX server

- **Solution**: Ensure the server's public IP address is correctly specified and that the server is reachable.

### Issue: Call quality issues

- **Solution**: Ensure your network has adequate bandwidth and low latency. Check the SIP trunk settings and network configuration.
