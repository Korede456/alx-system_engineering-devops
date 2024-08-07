#make changes to the defaul SSH confi using puppet

include stdlib

file_line { 'SSH Private Key':
  path			=> '/etc/ssh/ssh_config',
  line			=> '	IdentityFile ~/.ssh/school',
  match			=> '^[#]+[\s]*(?!)IdentityFile[\s]+~/.ssh/id_rsa$',
  replace		=> true,
  append_on_no_match	=>true
}

file_line { 'Deny Password Auth':
  path			=> '/etc/ssh/ssh_config',
  line			=> '	PasswordAuthentication no',
  match			=> '^[#]+[\s]*(?i)PasswordAuthentication[\s]+(yes|no)$',
  replace		=> true,
  append_on_no_match	=> true
}
