# Docker ENV vs ARG

Small example for how to use ARG and ENV with Docker.  
The way the Dockerfile is written allows the use of both.  
You can use the ENV set in the Dockerfile in Python with:
```
os.environ["ENV-NAME"]
OR
os.environ.get("ENV-NAME")
```
**Be careful with typing / uppercase!**

### ARG

For build-level instructions.  

```
docker build --build-arg SCRIPT_NAME=hello_name.py -t argvsenv .
```

This allows you to configure the container with the passed in Arguments in the build step.   

### ENV

For run-level instructions.  

```
docker run --rm -e SCRIPT_NAME=hello_name.py -e NAME=Xamma argvsenv 
```

This alloaws you to run a container with the provided Variables.  

### Default parameter

You can set a default parameter for the ENV Variable, too:
```
CMD python3 ${SCRIPT_NAME:-hello_world.py}
```
This will use the ENV SCRIPT_NAME with hello_world.py when you start the container.  