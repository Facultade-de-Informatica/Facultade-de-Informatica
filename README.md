## Para probar antes las cosas

```
mkdocs serve # Start the live-reloading docs server.
mkdocs build # Build the documentation site.
```

## Con docker para produccion

```
docker build -t example .   
docker run -it --rm -h fic.udc.es -p 80:80 example 
```
