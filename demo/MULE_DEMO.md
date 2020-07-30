# Mule Demo

## Big Picture

- This is what we're going to do 👇

```bash
 Mule Runtime CE
 +------------------------+
 |                        |
 |    Mule App            |
 |   +----------------+   |
 |   |                |   |
 |   |  8080:hello/   |   |
 |   |                |   |
 |   +----------------+   |
 |                        |
 +------------------------+
```

## Step by step

1. Setup Java Home with `jenv`

    ```bash
    > mvn --version
    # Use tmux buffers to copy the java path

    > jenv add /home/linuxbrew/.linuxbrew/Cellar/openjdk/14.0.1/libexec
    > jenv global 14
    > jenv enable-plugin export
    ```

2. Download the Mule Runtime CE

    ```bash
    > mvn dependency:get \
          -Dartifact="org.mule.distributions:mule-standalone:4.2.0-hf1:zip" \
          -DremoteRepositories=https://repository.mulesoft.org/releases/ \
          -Dtranstive=false
    ```

3. Setup the Mule Runtime

    - Copy Mule runtime distribution artifact from `.m2` and unzip it

4. Download the Mule app sources

    - Clone HelloWorld Mule app repo from github
    - `https://github.com/garodriguezlp/tuning-terminal-mule-demo`

5. Build the Mule app jar

    - Using maven

6. Deploy the Mule app in the Mule Runtime

    - Monitor the process through the logs

7. Call the hello world endpoint

    - `> curl 'localhost:8081/hello?name=Gustavo'`

8. Generate some load

    ```bash
    > for i in {1..1000}; do curl "localhost:8081/hello?name=PSL+Friends"; done
    ```
