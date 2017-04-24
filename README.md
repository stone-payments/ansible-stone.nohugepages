stone-payments.nohugepages
============
This simples role just adds a script to be run on system's initialization in
order to disable the hugepages kernel feature. It's ought to be set as a
dependency for other roles which may require this setting, like MongoDB or
Redis.
