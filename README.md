4Linux - 752
=========

Esta playbook irá provisionar o laboratório final de estudos para o curso 752 ministrado pela empresa 4Linux.

Requerimentos
------------

A Playbook foi desenvolvida com o intuito de provisionar as máquinas virtuais proviosandas via `.ova` para o curso criado pela 4Linux. Para funcionamento completo, são necessários os seguintes pontos:
* OVA importada com as máqunas virtuais;
* O **iptables** já deve ter estar em funcionamento para encaminhamento de pacotes para as outras VMs.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }


Autor
------------------

A playbook está sendo desenvolvida pora [Vinícius Felix](https://github.com/viniciusfelix1).
