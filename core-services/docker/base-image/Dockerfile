# Define ARGs for different platform base images
ARG BASE_IMAGE=amazoncorretto:17.0.0-alpine

# Use the appropriate base image based on platform or argument
FROM ${BASE_IMAGE} AS base

# Install necessary dependencies and application logic
RUN apk update && apk add maven