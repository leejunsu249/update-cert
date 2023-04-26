#!/bin/sh
# ---------------------------------------------------------
#   Accordion v2.0             http://www.mantech.co.kr/
#
#   Copyright(C) 2021, Mantech, All Rights Reserved.
# ---------------------------------------------------------

if which ansible-playbook >/dev/null; then

    ansible-playbook -i hosts updatecerts.yml -K 

else
    echo 'Error: ansible is not installed.' >&2
    exit 1
fi