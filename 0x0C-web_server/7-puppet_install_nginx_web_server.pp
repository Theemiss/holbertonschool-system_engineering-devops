# Server nginx with puppet

exec {'install':
  command  => 'sudo apt-get update ; sudo apt-get -y install nginx',
  provider => shell,
}

file { '/var/www/html/index.html':
  ensure  => present,
  path    => '/var/www/html/index.html',
  content => 'Holberton School'
}

file_line { 'perform a redirection':
  ensure  => 'present',
  path    => '/etc/nginx/sites-enabled/default',
  line    => 'rewrite ^/redirect_me/$ https://www.youtube.com/watch?v=dQw4w9WgXcQ permanent;',
  after   => 'root /var/www/html;',
  require => Package['nginx'],
  notify  => Service['nginx'],
}

exec {'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
