FROM maxc0c0s/odoo-7-deps
MAINTAINER Sebastien Delisle <seb0del@gmail.com>

RUN apt-get install -y git

RUN git clone https://github.com/maxc0c0s/anybox_buildout_odoo_7 /odoo_server

WORKDIR /odoo_server
RUN python bootstrap.py
RUN bin/buildout
