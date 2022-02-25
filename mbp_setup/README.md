
# Basic Setup
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/jobelobes/system/master/mbp_setup/init.sh)"
```

# Generate Your Development SSH Key
1. Generate your key for the development machine

    ```
    ssh-keygen -t ed25519 -C "your_email@example.com" -f ~/.ssh/id_github
    ```

2. Copy your public key (***~/.ssh/id_github.pub***) to your [Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

# Post script todos
1. Configure iTerm
2. Run Raycast
3. Run Rectangle
