#!/usr/bin/env bash
set -euo pipefail

readonly red="$(tput setaf 1)$(tput bold)"
readonly green="$(tput setaf 2)$(tput bold)"
readonly blue="$(tput setaf 6)$(tput bold)"
readonly purple="$(tput setaf 5)$(tput bold)"
readonly reset="$(tput sgr0)"

echo "${blue}whoami?: ${green}$(whoami)${reset}"
echo "${blue}homedir?: ${green}${HOME}${reset}"

echo ""
echo ""
echo "${red}Ansible Version: ${purple}$(command -v ansible)${reset} "
ansible --version | head -n1

echo ""
echo "${red}Terraform Version: ${purple}$(command -v terraform)${reset} "
terraform version | head -n1 || true

echo ""
echo "${red}Molecule Version: ${purple}$(command -v molecule)${reset} "
molecule --version | head -n1

echo ""
echo "${red}AzureCLI Version: ${purple}$(command -v az)${reset} "
az --version 2>&1 | sed 's/\s\+/ /g' | head -n1

echo ""
