# Contributing

This Howso&trade; opensource project only accepts code contributions from individuals and organizations that have signed a contributor license agreement. For more information on contributing and for links to the individual and corporate CLAs, please visit: https://www.howso.com/cla

## Local Development and Testing

Clone howso-notebook to your local drive and then build and run a local version of the package:

```
docker build --rm --force-rm --tag howso-notebook .
docker run -it --rm -p 8880:8880 -e JUPYTER_PORT=8880 -v "${PWD}":/home/jovyan/work howso-notebook
```
Once it's built and running, using a local version of howso-notebook is the same as a published image. See the [README](README.md) for usage details.