#!/bin/bash
rsync -Pzv {{cookiecutter.server_user}}@{{cookiecutter.instance_name}}.voteit.se:{{cookiecutter.install_dir}}/var/Data.fs var/Data.fs
