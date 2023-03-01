#!/bin/bash

sudo docker run \
      --name openldap-server \
        -p 389:389 \
        -p 636:636 \
        --hostname ldap.permctf.flag \
  --env LDAP_ORGANISATION="My Company" \
  --env LDAP_DOMAIN="permctf.flag" \
  --env LDAP_ADMIN_PASSWORD="StrongAdmin" \
        --env LDAP_BASE_DN="dc=permctf,dc=flag" \
        --volume $(pwd)/data/slapd/database:/var/lib/ldap \
        --volume $(pwd)/data/slapd/config:/etc/ldap/slapd.d \
  --detach osixia/openldap:latest
