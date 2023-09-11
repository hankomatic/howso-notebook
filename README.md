# howso-notebook

howso-notebook is a community maintained Jupyter Docker Stack image

## Development

### Building and running an image to test locally

```
docker build --rm --force-rm --tag howso-notebook .
docker run -it --rm -p 10000:8888 -v "${PWD}":/home/jovyan/work howso-notebook
```
