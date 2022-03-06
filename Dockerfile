FROM jupyter/base-notebook

# Add RUN statements to install packages as the $NB_USER defined in the base images.

# Add a "USER root" statement followed by RUN statements to install system packages using apt-get,
# change file permissions, etc.

# If you do switch to root, always be sure to add a "USER $NB_USER" command at the end of the
# file to ensure the image runs as a unprivileged user by default.

USER root

COPY ./requirements.txt requirements.txt

RUN python3 -m pip install --no-cache-dir --upgrade pip  

RUN pip install --no-cache-dir -r requirements.txt

USER ${NB_USER}


