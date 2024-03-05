# Changes

* Use PHP 7 since current Redcap version has multiple bugs while using PHP8. For instance project
  import is not working properly.
* Remove XDEBUG since we have no need for this atm.

# Deployment

1. Database password
    1. At first init - if changed at env remember to update it at `20_mysql8_permission_update.sql`
       in redcap-overrides
2. KeyCloak
    1. Use OPENID Login + Table at first for configuration - if you make a mistake you can always go
       back
    2. Redcap version 14.2 has currently a bug at openid logout process which will result in a
       keycloak error message. this should be fixed at next redcap bug fix release. For detail check
       out: https://redcap.vanderbilt.edu/community/post.php?id=224757
3. Self-signed certificates
    1.  Add `crt`-files into `.certificates` folder if you need them. 
        They will be imported at container start. 