## Azure IOT Edge V2 on balenaCloud

**!!! This is still a Work In Progress !!!**

### Requirements:
1. Create iot hub on azure portal: https://docs.microsoft.com/en-us/azure/iot-hub/iot-hub-create-through-portal
2. Register a device: https://docs.microsoft.com/en-us/azure/iot-edge/how-to-register-device-portal
3. Copy the primary connection string and add it to the `/iotedge/config.yaml` file in the provisioning section.
4. `balena push myFleet` the this repo to your balenaCloud fleet.


# TODO:
1. Figure out what is making the `edgeAgent` module to crash over and over.
```
[Logs]    [7/12/2019, 2:18:48 PM] [iotedge] <6>2019-07-12T12:18:48Z [INFO] - Starting module edgeAgent...
[Logs]    [7/12/2019, 2:18:50 PM] [iotedge] <6>2019-07-12T12:18:50Z [INFO] - Successfully started module edgeAgent
[Logs]    [7/12/2019, 2:19:48 PM] [iotedge] <6>2019-07-12T12:19:48Z [INFO] - Checking edge runtime status
[Logs]    [7/12/2019, 2:19:48 PM] [iotedge] <6>2019-07-12T12:19:48Z [INFO] - Edge runtime status is failed, starting module now..
```
2. use `sed` to insert the connection string from an ENV var before the iotedge gets started, so we can have different configuration strings for different devices.
3. Add a `Dockerfile.x86` for Intel based machines like Intel NUC or Upboard.