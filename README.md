# Taskboard

Taskboard is a forum website which uses the open source project NodeBB to provide a platform where medical professionals can vote on our ideas and leave their own ideas to guide the response of Project Athena to COVID-19 with focus and efficiency.

# Local Development

## The new experimental way

### Requirements:
- Visual Studio Code
- The [Remote Development Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
- Docker, like [Docker Desktop](https://www.docker.com/products/docker-desktop)

### Procedure:
- Clone this repo
- Open it in Visual Studio Code
- VSCode will prompt, if you want to run the integrated dev container, select yes
- Have fun.

### Hints:
- Your ssh agent and git configuration should automatically be available inside the dev container.
- You can change the devcontainer image to your preferences, by adding a [Dotfile-Repository](https://code.visualstudio.com/docs/remote/containers#_personalizing-with-dotfile-repositories)


## The classic way

1. Checkout `taskboard` (this one) and `nodebb` (https://github.com/nodebb/nodebb) repos.
2. Link the nodebb repo to the nodebb-theme-athena directory in this repo by running `npm link ../taskboard/lib/*` in your nodebb local repo.
3. Install and run `redis-server`
4. Run nodebb `./nodebb dev`