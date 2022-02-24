# Adventures Upgrading PHP

## What is BLIS.exe?

BLIS.exe appears to be a version of [Server2Go](https://pendriveapps.com/server2go-portable-webserver/), which manages all the config etc. and is what bundles Apache, PHP, and MySQL.

This makes sense! We must have never had access to the source of BLIS.exe. If I use WinMerge to compare the BLIS directory and the Server2Go version 1.7.3 I found online (not linking since you shouldn't execute it - I extracted it with 7-Zip) there is considerable similarity.

- Uses PHP 5.2.10, some weird Windows version, customized by the Server2Go packagers
- [Likely this version, although not downloadable anymore](https://web.archive.org/web/20091121093352/http://www.server2go-web.de/download/download.html)
- Key differences, based on config

### PHP

#### src/ folder

In BLIS there is a src/ folder which a bunch of stuff - looks like some PHP extension called jgraph or contour. I can't find any evidence this is actually used by the application though.

#### php.ini config

```ini
; I assume this was bumped up to accommodate the backup feature
max_execution_time = 300     ; Maximum execution time of each script, in seconds
memory_limit = 500M      ; Maximum amount of memory a script may consume (8MB)

; Same here, but for updating backups
; Maximum size of POST data that PHP will accept.
post_max_size = 100M

; These extensions were UNcommented, or added
extension=php_cpdf.dll
extension=php_curl.dll

extension=php_gd2.dll ; already present
extension=php_mbstring.dll ; already present
extension=php_mssql.dll ; already present

extension=php_openssl.dll
extension=php_pdf.dll

extension=php_zip.dll ; this was added
```

### MySQL

This was uncommented at the bottom:

```ini
# Uncomment the following if you are using InnoDB tables
innodb_data_home_dir = %CDPMS:DBDIR%
innodb_data_file_path = ibdata1:10M:autoextend
innodb_log_group_home_dir = %CDPMS:DBDIR%
innodb_log_arch_dir = %CDPMS:DBDIR%
innodb_buffer_pool_size = 256M
innodb_additional_mem_pool_size = 20M
innodb_log_file_size = 64M
innodb_log_buffer_size = 8M
innodb_flush_log_at_trx_commit = 1
innodb_lock_wait_timeout = 50
innodb_file_per_table = 1
```

### Apache2

```conf
LoadModule rewrite_module modules/mod_rewrite.so
# Predictably, because of the mod_rewrite, 
# AllowOverride was changed from "None" to "All"
# in many places - those are the only other changes.
```
