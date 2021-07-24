# MultiJDK

## Building MultiJDK

1. Create a directory called `jdks`.
2. Download JDKs and **unpack** them into the `jdks` directory. The `bin` directory should be the first subdirectory of each JDK. (For example, the `java` command should be at `jdks/jdk-16.0.2/bin/java`)
3. Edit `env.sh` to set your default JDK.
4. Build with `docker build -t multijdk .`

## Using MultiJDK

1. Put `source /multijdk.sh` at the beginning of your entrypoint script.
2. Use environment variable `JDK` to select the JDK version you want to use.
3. Use `java` inside of your docker container as usual.

