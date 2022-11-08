# Change the OS configuration so that it is possible to login with the holberton user and open a file without any error message.

exec { 'ULIMIT Soft':
    path    => '/usr/bin',
    command => 'sudo sed -i "s/holberton soft nofile 4/holberton hard nofile 1048576/g" /etc/security/limits.conf'
}
exec { 'ULIMIT Hard':
    path    => '/usr/bin',
    command => 'sudo sed -i "s/holberton hard nofile 5/holberton hard nofile 1048576/g" /etc/security/limits.conf'
}
