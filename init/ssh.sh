#!/usr/bin/env bash

echo "Ensuring ~/.ssh exists"
mkdir -p ~/.ssh

echo "Copying config into ~/.ssh"
cp current/repo/dots/ssh/config ~/.ssh

if [ ! -f ~/.ssh/id_rsa ]; then
  echo "Generating ssh identity id_rsa"
  ssh-keygen -t rsa -b 4096 -C "scalvert@splunk.com" -N "" -f ~/.ssh/id_rsa

  chmod 700 ~/.ssh
  chmod 644 ~/.ssh/id_rsa.pub
  chmod 600 ~/.ssh/id_rsa
  
  echo "Public key for pasting"
  echo "=========="
  cat ~/.ssh/id_rsa.pub
  echo "=========="
fi
