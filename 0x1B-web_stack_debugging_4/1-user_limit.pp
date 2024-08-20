# changes the OS configuration so that it is posible to login with the holberton user and open a file without any error message
exec { 'change soft limit':
    command  => 'sudo sed -i s/holbertonssoft.*/holbertontsofttnofilet10000/ /etc/security/limits.conf',
    provider => shell,
}

exec { 'change hard limit':
    command  => 'sudo sed -i s/holbertonshard.*/holbertonthardtnofilet100000/ /etc/security/limits.conf',
    provider => shell,
}
