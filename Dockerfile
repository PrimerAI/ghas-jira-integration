# The following 4 lines were added to allow use of non-root image, everything else is from third party repo
FROM 963188529772.dkr.ecr.us-west-2.amazonaws.com/python:3.10.5-alpine3.16-primer-e951ea4
USER root
RUN pip install pipenv
USER primer_service
COPY entrypoint.sh /code/entrypoint.sh
COPY *.py gh2jira Pipfile /code
RUN PIPENV_VENV_IN_PROJECT=1 pipenv install
ENTRYPOINT ["/code/entrypoint.sh"]
