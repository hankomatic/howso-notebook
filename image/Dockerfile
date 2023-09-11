FROM jupyter/scipy-notebook

# COPY ./howso-engine-recipes/data ./data
# COPY ./howso-engine-recipes/*.ipynb .
# COPY ./howso-engine-recipes/*.py .

COPY ./requirements.txt ./requirements.txt
RUN pip install -U pip
RUN pip install -r ./requirements.txt
RUN pip freeze > ./versions.txt
