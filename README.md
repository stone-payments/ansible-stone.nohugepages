stone-payments.nohugepages
============
This simple role just adds a script to be run on system's initialization in order to disable the hugepages kernel
feature. It's ought to be set as a dependency for other roles which may require this setting, like MongoDB or Redis.

## Usage
Simply add this role to the list of roles to be applied:
```yaml
- hosts: all
  become: true
  roles:
    - stone-payments.nohugepages
```

## Advanced usage
If you do not wish for the unit file, and therefore the hugepage disable, to be automatically executed on boot, use a
playbook like this:
```yaml
- hosts: all
  become: true
  roles:
    - stone-payments.nohugepages
  vars:
    nohugepages_standalone: false
```
This is specially useful if you only want this feature to be disabled when the MongoDB or Redis unit file is active.

## Contributing
Just open a PR. We love PRs!

## License
This role is licensed under the MIT license.
