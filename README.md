# Instructions for Setting Up Python, ENVs, GitHub SSH and Scripts

## Add path to anaconda to PATH
- Search for Environment Variables in search bar
- Something to the extent of  C:\Users\%USERNAME%\Anaconda3\ or C:\Users\%USERNAME%\AppData\Local\Anaconda3\ AND ...\Anaconda3\Scripts\
    - MUST INCLUDE LAST "\\" or PATH may not pick up variable

## Set up Environments
- create environment.yml for prototyping, environment_specific.yml after code completion for sharing env
- to create environment_specific.yml, cd into dir, activate env, then type "conda env export > environment_specific.yml"
    - This will create the environment_specific.yml file for storing specific versions of all env libs to share with customers.

## Set up GitHub SSH
### Creating SSH Key
- From CMD, .ssh dir, type ssh-keygen
- After you type your command hit Enter, and then you'll be prompted to give your key a name and save it in a specific location. If you use the defaults then it will save your keys in C:\Users\[YourUserName]\[YourName].ssh — assuming the C drive is where your user account is stored.
- Next, you'll be asked to enter a passphrase. It is highly recommend you do this to keep your key secure.
![SSH-KEYGEN IMAGE](Flask_app/ssh-keygen.jpg "")
**USE THE .pub FILE FOR CONNECTING TO GITHUB**

### Connect to a GitHub Repo with SSH
- Go to settings, profile, SSH and GPG Keys
- Under SSH Keys, click New SSH Key
- From CMD, cd into dir containing SSH Key
- Type "clip < [SSHKeyName.pub]
- Paste into GitHub and save

### Clone Repo to Local
- Install Git
- From GitHub, go to repo, click green code button, select SSH and copy key
- From CMD type "git clone [ssh key from GitHub]"
    - If git command is not recognized, close CMD and retry this step.
