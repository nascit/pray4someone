FROM python:2.7
ENV ACCESS_TOKEN=EAAGEOdjwiaIBAPEZBhtIqi926DMK2eBgqbKO8LcKMhWbGrgYZBBaDWCsUKVKW8LwBw7DasjbXZCTmDtjxN5M5rFbti1zYvtKjOKZAgK0VfMVpksbk0ZALuIZBavcyc8mHljKZA7HXCmjk52jiUJPZBazpJq2tyr4KItHFwHmn6ioIwZDZD
RUN mkdir /code
ADD requirements.txt /code/
RUN pip install -r /code/requirements.txt --upgrade
RUN chown www-data:www-data -R /code/
USER www-data
ADD . /code/
WORKDIR /code
