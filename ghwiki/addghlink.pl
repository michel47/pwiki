while (<>) {
  chomp;
  my @F = split(/  */,$_,4);
  #printf STDERR "F: %s\n",join'|',@F;
  my ($fpath,undef,$bname,$ext) = &fname($F[3]);
     $F[2] =~ s,:$,,;
     $fpath =~ s,\./,,;
  if ($fpath eq '.') {
    printf "+ %s %s %s [[%s]]\n",$F[0],$F[1],$F[2],$bname;
  } else {
    printf "+ %s %s %s [[%s:%s|%s]]\n",$F[0],$F[1],$F[2],$fpath,$bname,$bname;
  }
}

exit $?;

sub fname { # extract filename etc...
  my $f = shift;
  $f =~ s,\\,/,g; # *nix style !
  my $s = rindex($f,'/');
  my $fpath = '.';
  if ($s > 0) {
    $fpath = substr($f,0,$s);
  } else {
    use Cwd;
    $fpath = Cwd::getcwd();
  }
  my $file = substr($f,$s+1);
  if (-d $f) {
    return ($fpath,$file);
  } else {
  my $bname;
  my $ext;
  my $p = rindex($file,'.');
     $ext = lc substr($file,$p+1);
     $ext =~ s/\~$//;
  if ($p > 0) {
    $bname = substr($file,0,$p);
    $ext = lc substr($file,$p+1);
    $ext =~ s/\~$//;
  } else {
    $bname = $file;
    $ext = 'blob';
  }
  $bname =~ s/\s+\(\d+\)$//; # remove (1) in names ...

  return ($fpath,$file,$bname,$ext);

  }
}

1;
