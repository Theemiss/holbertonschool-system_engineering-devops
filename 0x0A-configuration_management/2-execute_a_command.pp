# pkill on proc killmenow
exec { 'pkill -f killmenow':
    path     => ['/usr/bin', '/usr/sbin',],
}
