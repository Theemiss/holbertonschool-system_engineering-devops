exec { 'pkill -f killmenow':
path     => ['/usr/bin', '/usr/sbin',],
}
