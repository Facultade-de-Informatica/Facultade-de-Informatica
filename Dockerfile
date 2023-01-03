FROM python:3.10 as builder

WORKDIR /tmp
COPY . /tmp

RUN pip install --no-cache-dir -r requirements.txt \
 && mkdocs build


FROM httpd:2.4

COPY --from=builder /tmp/site /usr/local/apache2/htdocs/
