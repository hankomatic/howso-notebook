
<div align="left">
  <img src="https://docs.howso.com/_static/howso_logo_icon.svg">
</div>

The Howso Engine&trade; is a natively and fully explainable ML engine, serving as an alternative to black box AI neural networks. It’s core features give users data exploration and machine learning capabilities through the creation and use of Trainees that help users store, explore, and analyze the relationships in their data. Howso&trade; leverages an instance-based learning approach with strong ties to the [k-nearest neighbors algorithm](https://en.wikipedia.org/wiki/K-nearest_neighbors_algorithm) and [information theory](https://en.wikipedia.org/wiki/Information_theory) to scale for real world applications.

At the core of Howso is the concept of a Trainee, a collection of cases that comprise knowledge. In traditional ML, this is typically referred to as a model, but a Trainee may additionally include metadata, parameters, details of feature attributes, with data lineage and provenance. Unlike traditional ML, Trainees are designed to be versatile, a single model that after training a dataset can do the following without the need to retrain:
- Perform **classification** on any target feature using any set of input features
- Perform **regression** on any target feature using any set of input features
- Perform **anomaly detection** based on any set of features
- Measure **feature importance** for predicting any target feature
- **Synthesize** data that maintains the same feature relationships of the original data while maintaining privacy

Furthermore, Trainees are auditable, debuggable, and editable.
- **Debuggable**: Every prediction of a Trainee can be drilled down to investigate which cases from the training data were used to make the prediction.
- **Auditable**: Trainees manage metadata about themselves including: when data is trained, when training data is edited, when data is removed, etc.
- **Editable**: Specific cases of training data can be removed, edited, and emphasized (through case weighting) without the need to retrain.

## Resources
- [Project Jupyter](https://jupyter.org/)
- [Docker](https://www.docker.com/)
- [Howso Documentation](https://docs.how.com)
- [Howso Engine Recipes (sample notebooks)](https://github.com/howsoai/howso-engine-recipes)
- [Howso Playground](https://playground.howso.com)

## General Overview
`howso-notebook` is a ready-to-run Jupyter Docker Stack image that includes Howso Engine and example recipes. When the image is run in Docker, a Jupyter server is started with the Howso Engine installed and the Howso Engine Recipes included. This allows running the recipes or other Jupyter notebooks that use the Howso Engine without any additional installation or configuration. 

This repo includes the Dockerfile and other supporting files used to build the image. The package is based on the `jupyter/scipy-notebook` image created by [Project Jupyter](https://jupyter.org/) as part of the [Jupyter Docker Stacks](https://github.com/jupyter/docker-stacks)


## Supported Platforms
MacOS, Linux or Windows running Docker

## Install
[Installing Docker](https://docs.docker.com/engine/install/) is a prerequisite for running the `howso-notebook` package. The Howso Engine is built in to `howso-notebook` and does not require further installation.

## Usage

### Running `howso-notebook` on Docker

Running the following docker command starts the Jupyter server using the `howso-notebook` image. Once running, the Howso Engine is available for use.
```
docker run -it --rm -p 8880:8880 -e JUPYTER_PORT=8880 -v "${PWD}":/home/jovyan/work ghcr.io/howsoai/howso-notebook
```

If a different port is preferred, replace 8880 in the above docker run command with the alternate port.

When the Jupyter server is running, you'll see a message that looks similar to this:
```
    To access the server, open this file in a browser:
        file:///home/jovyan/.local/share/jupyter/runtime/jpserver-7-open.html
    Or copy and paste one of these URLs:
        http://cd18589201d3:8880/lab?token=76d9e83c681c2fc6effd180d56f73ab68978902ac79f0f48
        http://127.0.0.1:8880/lab?token=76d9e83c681c2fc6effd180d56f73ab68978902ac79f0f48
```

Click or copy the last URL (i.e. `http://127.0.0.1:<port>/lab?token=<token>`) into your browser window to bring up the Jupyter UI.

### Running a Specific Version

First, select the desired package version from the published options: https://github.com/orgs/howsoai/packages

Next, run the selected version:
```
docker run -it --rm -p 8880:8880 -e JUPYTER_PORT=8880 -v "${PWD}":/home/jovyan/work ghcr.io/howsoai/howso-notebook:<selected version>
```

### Jupyter Server Logs
By default, the logs from the Jupyter server will appear in the terminal used to execute `docker run` as shown above.

### Using the Howso Engine
The Howso Engine is built in to `howso-notebook` and does not require further installation. Once `howso-notebook` is running in Docker, the Howso Engine is available for use.

### Recipes and Other Notebooks
The [Howso Engine Recipes (i.e. sample notebooks)](https://github.com/howsoai/howso-engine-recipes) are packaged with the Jupyter server. The file explorer pane on the left side of the Jupyter UI in the browser window will have all of the recipes that were available at the time the `howso-notebook` package was built. Double click on any of them to open and modify and/or run the recipe. Note that any modifications will be lost unless the file is copied to the `work` folder using the Jupyter UI.

Any files or directories located in the current working directory when the Jupyter server is started will be available in the `work` folder. New files or files modified in the `work` folder exist in the current working directory and will not be lost when the Jupyter server is stopped.

### Stopping the Jupyter Server
Hitting `ctrl-c` twice in the terminal used to start the Jupiter Server to start will cause it to exit. Note that any notebooks or other modified files outside of the `work` folder will be lost when the `howso-notebook` package running in Docker finishes. 

## Related Repos
- [Howso Engine Recipes (sample notebooks)](https://github.com/howsoai/howso-engine-recipes)
- [Jupyter Docker Stacks](https://github.com/jupyter/docker-stacks)

## Contributing
To learn about contributing, view [contributing](CONTRIBUTING.md)

## License

[License](LICENSE.txt)
