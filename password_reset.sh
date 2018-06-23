#!/bin/bash
mysql --user=root --password=root --database=dbispconfig --execute="UPDATE sys_user SET passwort = md5('admin') WHERE username = 'admin';"
