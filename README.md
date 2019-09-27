## Azure IOT Edge V2 on balenaCloud

**!!! This is still a Work In Progress !!!**

### Requirements:
1. Create iot hub on azure portal: https://docs.microsoft.com/en-us/azure/iot-hub/iot-hub-create-through-portal
2. Register a device: https://docs.microsoft.com/en-us/azure/iot-edge/how-to-register-device-portal
3. Copy the primary connection string and add it to the `/iotedge/config.yaml` file in the provisioning section.
4. `balena push myFleet` the this repo to your balenaCloud fleet.

# TODO:
1. use `sed` to insert the connection string from an ENV var before the iotedge gets started, so we can have different configuration strings for different devices.
2. Improve how waiting for dockerd works.
3. Add a `Dockerfile.x86` for Intel based machines like Intel NUC or Upboard.