---

- name: playbook
  hosts: localhost
  tasks:
    - name: simple_variable_preprocess
      debug:
       msg: M4_MESSAGE

include(`simple_task_include.yml')

    - name: task_preprocess
      debug:
        msg: yo

esyscmd(`bin/cator.sh project_specific_overrides/override.yml task_inventory/default_task_include.yml')
