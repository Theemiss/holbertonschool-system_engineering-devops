#  many open files
exec {'hard':
path     => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/'],
command  => "sudo sed -i 's/holberton hard nofile 5/holberton hard nofile 65536/g' /etc/security/limits.conf; /sbin/sysctl -p",
provider => 'shell',
}
exec {'soft':
path     => ['/bin/', '/sbin/', '/usr/bin/', '/usr/sbin/'],
command  => "sudo sed -i 's/holberton soft nofile 4/holberton soft nofile 65536/g' /etc/security/limits.conf; /sbin/sysctl -p",
provider => 'shell',
}