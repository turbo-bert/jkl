# What it is

I just got tired of requesting SSL certificates from LE manually and *via real production systems*.

So my idea was, why not do a reverse port forward into a debian container and do the "just give me the 2 files". Of course you need to have a virtual machine somewhere out there with DNS setup accordingly. Once you have that - make sure you have `GatewayPorts` set to `yes` in your `/etc/ssh/sshd_config`.

# How to use

1. Create a folder (`test` for example) with the following files (only)

        key     # which is the (open)ssh private key for your root account
        domain  # which is the domain name you're going for
        mail    # the mail addr for LE
        ip      # the IP used to login as root

1. Now run the container

        # if your folder name is "test"
        docker run -it -v $PWD/test:/app/data turbobert/jkl

1. Wait a moment for the port setup running in the background

1. Press RETURN and observe the certbot output

1. Before you press RETURN again, check for the `etc.tar` file being created in your host (not VM) folder. If not - this is your last chance to dump `/etc/letsencrypt` manually from the container.

# TODO

1. Build images for both pop platforms
1. Extract PEM files from tar
1. Implement Renewal, currently only new certs are supported.

# License

Use and modify at your own risk, AGPL3.
