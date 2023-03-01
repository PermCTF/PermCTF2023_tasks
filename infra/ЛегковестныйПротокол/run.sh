#!/bin/bash

sudo docker run \
    --name phpldapadmin \
    -p 10080:80 \
    -p 10443:443 \
    --hostname phpldapadmin-service \
    --link openldap-server:ldap-host \
    --env PHPLDAPADMIN_LDAP_HOSTS=ldap.permctf.flag \
    --detach osixia/phpldapadmin:latest

sudo docker run \
      --name openldap-server \
        -p 389:389 \
        -p 636:636 \
        --hostname ldap.permctf.flag \
  --env LDAP_ORGANISATION="My Company" \
  --env LDAP_DOMAIN="permctf.flag" \
  --env LDAP_ADMIN_PASSWORD="StrongAdminPassw0rdСTF1" \
        --env LDAP_BASE_DN="dc=permctf,dc=flag" \
        --volume ./data/slapd/database:/var/lib/ldap \
        --volume ./data/slapd/config:/etc/ldap/slapd.d \
  --detach osixia/openldap:latest
