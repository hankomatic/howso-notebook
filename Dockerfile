FROM jupyter/scipy-notebook

# Include Howso engine recipes in container. Cloning is preferred
# over a submodule to support building by mybinder.org or similar.
RUN git clone https://github.com/howsoai/howso-engine-recipes.git
RUN cp ./howso-engine-recipes/*.ipynb .
RUN cp ./howso-engine-recipes/*.py .
RUN cp -r ./howso-engine-recipes/data .
RUN rm -rf ./howso-engine-recipes

# Install Howso Engine
COPY ./requirements.txt ./requirements.txt
RUN pip install -U pip
RUN pip install -r ./requirements.txt
RUN pip freeze > ./versions.txt
