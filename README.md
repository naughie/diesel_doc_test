Build each image:

```
$ docker build -t diesel_test -f diesel.dockerfile .
$ docker build -t tokio_test -f tokio.dockerfile .
```

Create and stop containers:

```
$ docker run --entrypoint sh -it diesel_test
$ docker run --entrypoint sh -it tokio_test
```

Copy doc files in each container to local directory:

```
$ docker cp 4c885e601433:target/doc/diesel_doc_test/index.html diesel.html
$ docker cp e1b8dd1ff5cb:target/doc/diesel_doc_test/index.html diesel.html
```

(Replace `4c885e601433` and `e1b8dd1ff5cb` with acutual container's IDs.)
