# CoP Presentation

## Workstation Tooling

These are the slides and resources for a short presentation explaining how my
workstation is setup. This was presented to Centiq Community of Practice on
7th July 2020.

### Resources

The resources for this talk were all stored in the "`stuff/`" directory.
The main bits of interest are likely the `requirements.yml` file to install
the Ansible roles demonstrated and the `new.yml` and `old.yml` playbooks
illustrating how to select specific versions of the applications being
installed.

#### Setup

  1. Ensure you have Ansible already installed, preferably v2.8+
  1. Install the Ansible roles to this repo
     (these will end up in `stuff/roles/`).
     - `ansible-galaxy install -f -r stuff/requirements.yml`
  1. This configuration assumes that `${HOME}/bin` is in your `${PATH}`
     environment variable. If it is not you can append it to
     `${HOME}/.bashrc` and source it as a quick workaround:
     - `echo 'PATH="${HOME}/bin:${PATH}' >> "${HOME}/.bashrc"`
     - `source "${HOME}/.bashrc"`
  1. If you're feeling brave, fire away installing the versions specified
     in `stuff/new.yml`:
     - `ansible-playbook stuff/new.yml`

### Slideshow

:warning: This was an interactive slideshow **THAT WILL MAKE CHANGES TO THE
SYSTEM IT IS RUNNING ON**. I presented this in a Virtual Machine running
Fedora Linux 32, however it can be run on most Linux distributions as well
as WSL. **I HIGHLY RECOMMEND** that you do not run this on a system that
you are precious about in case it breaks something.

#### Setup

  1. If you want pretty colours, install the following packages using your
     package manager:
     - `figlet`
     - `lolcat`
  1. Source the .setup.env file (`source .setup.env`) and run "`n`".
  1. You can go back a slide with "`p`".
