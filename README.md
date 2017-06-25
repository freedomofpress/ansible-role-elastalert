freedomofpress.elastalert
=========================
Installs [Elastalert](https://github.com/Yelp/elastalert) and

Role Variables
--------------

```
# General settings
elastalert_version: 0.1.15
elastalert_rules_dir: example_rules
elastalert_alert_time_limit:
  days: 2

# Elasticsearch settings
elastalert_es_ssl: false
elastalert_es_verifycerts: false
elastalert_es_host: localhost
elastalert_es_port: 9200
elastalert_es_writeback_index: elastalert_status
elastalert_es_run_every:
  minutes: 5

# System pkg dependencies
elastalert_pkgs:
  - virtualenv
  - python-dev
  - gcc
  - libssl-dev

# System installation settings
elastalert_venv_rootdir: /opt/elastalert/
elastalert_user: elastalert
elastalert_group: "{{ elastalert_user }}"
```

Example Playbook
----------------

    - hosts: servers
      roles:
         - role: freedomofpress.elastalert

License
-------

MIT
