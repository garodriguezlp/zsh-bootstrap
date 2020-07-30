# Bootstrap Demo (for personal use only)

## Purpose

- Explain and see the bootstrap in action

## Steps

1. Create and connect the DigitalOcean instance

```bash
> DO_NAME=demo && DO_SIZE=g-8vcpu-32gb && docreatedroplet
> doctl compute ssh --ssh-key-path ~/.ssh/do --ssh-user garodriguezlp $DO_NAME
```

2. Clone and start bootrstrap execution

```bash
> git clone https://github.com/garodriguezlp/zsh-bootstrap && time ./zsh-bootstrap/install
```

4. Explain zsh-bootstrap

```bash
> cd $HOME/zsh-bootstrap && tree | bat
> bat install.conf.yaml
```

5. Create and connect to droplet ready for Mule demo

```bash
> DO_NAME=demo-ready && DO_SIZE=g-8vcpu-32gb && DO_IMAGE=68305382 && docreatedroplet
> doctl compute ssh --ssh-key-path ~/.ssh/do --ssh-user garodriguezlp demo-ready
```

6. Show zshrc and antigenrc

```bash
> bat $HOME/.zshrc $HOME/.antigenrc
```
