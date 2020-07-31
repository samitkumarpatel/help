# ansible

### ansible user module

Create a username and password with ansible user module

```yml
- name: user
    become: True
    user:
      name: jenkins
      password: "{{ upassword | password_hash('sha512') }}"
      groups: vagrant,docker
```

### Custom filter

```yml
.
|
|-playbook.yml
|-filter_plugins
  |-custom_filter.py  

```

playbook.yml

```yml
- name: url module test
  hosts: local
  no_log: True
  vars:
    my_list:
    - 1
    - 2
    - 3
    - 4
  tasks:
    - name: filter example
      debug:
        msg: "{{ my_list | custom_filter(2, 3)}}"
```

custom_filter.py
```python
import re;
class FilterModule(object):
  def filters(self):
      return {
          'custom_filter': self.custom_filter
      }

  def custom_filter(self, list_param1, param2, param3):
      # From above example list_param1=[1,2,3,4], param2=2,param3=3
      return something
```
