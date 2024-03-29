# Cloudflared SSH Remote Command Runner
A barebones github action that lets you ssh into a server behind a cloudflare tunnel and run a command

## Usage

Here is an example deploy.yaml file for the action:  
```yaml
name: Pull down and compose up
on: [push]
jobs:

  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - name: connect to remote server
      uses: Gustavo-caetano/sshcloudflareddeploy@1.0
      with:
        host: ${{ vars.HOST }}
        username: ${{ secrets.USERNAME }}
        private_key: ${{ secrets.PRIVKEY }}
        port: ${{ secrets.PORT }}
        folder: folder
        target: target 
```
