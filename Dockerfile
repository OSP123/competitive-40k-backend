# start by pulling the python image
FROM python:3.9-alpine

RUN mkdir -p /usr/src/app/competitive-40k-backend

# switch working directory
WORKDIR /usr/src/app/competitive-40k-backend

# copy the requirements file into the image
COPY requirements.txt .flaskenv api.py /usr/src/app/competitive-40k-backend/

# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt

# configure the container to run in an executed manner
ENTRYPOINT [ "flask" ]

CMD ["run", "--host=0.0.0.0", "--port=5001"]