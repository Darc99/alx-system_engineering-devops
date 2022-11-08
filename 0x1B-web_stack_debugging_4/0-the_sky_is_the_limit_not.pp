# testing how well our web server setup featuring Nginx is doing under pressure and it turns out it’s not doing well

exec { 'replace ULIMIT':
    path    => '/usr/bin',
    command => 'sudo sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 262144\"/g" /etc/default/nginx',
}
-> exec { 'restart NGINX':
    path    => '/usr/bin',
    command => 'service nginx restart',
}
