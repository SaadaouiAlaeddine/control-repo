class profile::ssh_server {
 package {'openssh-server':
  ensure => present,
 }
 service {'sshd':
  ensure => 'running',
  enable => 'true',
 }
 ssh_authorized_key {'root@master.puppet.vm':
  ensure => present,
  user => 'root',
  type => 'ssh-rsa',
  key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLZbiYNWYlJXdVCDWyE9iw+HVPIQSw9cbTuWCfszKv8kjjLP1ciwUbcopq381/tTMIgLSCdZ+NMofwUPVhF/jieegSZIOhHM2R+8sVOIN+FT2jeH3UgjD1yNqigIdAST3nMWndFsTVEzQyYNEKLS9i1y3fD1PcpnhsnkYosHwfCCj9LZnJoMj/7bCv0nxI+9GSKo3WN+bLU6S6ypRRJu0ingyvkOGvb8OzIch5s2MbkiwK/mEs9MZndB/lr8ErBUwlSs1PeDG480YjEAcfeoSs/IURS0fQ8XU7m3vrNPwfu+e+3TnUauWg4tOlIrQLOsOFlBrj8IWU5wkXVQkZzoU3',
 }
  
