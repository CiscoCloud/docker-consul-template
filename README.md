# docker-consul-template
Alpine Linux + consul-template Docker container. Use as a base for other containers

## Usage

To use as a base for another image:

``` 
FROM asteris/consul-template:latest
```

## Configuration
There are two directories that can be used for configuration, or CLI args can be used.

Drop configuration files in `/consul-template/config.d`, and place
template files in `/consul-template/templates`.
