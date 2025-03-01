# README 

## Building the base Image (mostly for *inux based systems)
- go to directory `Digit-Core/core-services/docker/base-image`
- execute `./build_base_image` the script will detect the underlying architecture and build the architecture specific image.
  
## Building and running the egov-user and dependent services.
- go to directory `Digit-Core/core-services/docker`
- execute `./start-egov-user-services` and this should build and bring up all the services.
- **NOTE: Its seens sometimes the services don't start properly due to the time taken for some of the dependent services to come up. If such is the case, please just restart the services (which have stopped) in the same order (dependency).**