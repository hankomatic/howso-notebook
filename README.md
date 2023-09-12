# howso-notebook

howso-notebook is a ready-to-run Jupyter Docker Stack image that includes Howso Engine and example recipes.

## Run 

TBD - show docker run using official images built by github.

## Development

### Building and running an image to test locally

```
docker build --rm --force-rm --tag howso-notebook .
docker run -it --rm -p 10000:8888 -v "${PWD}":/home/jovyan/work howso-notebook
```
