# base 12 (dozenal) encoding

(duodecimal system also known as base 12, dozenal, or uncial)

see also [*](https://en.wikipedia.org/wiki/Duodecimal)

convert to and from base 12

alphabet : 0-9XƐ (X for dek and Ɛ for el)

\U218A ↊ (TURNED DIGIT TWO)
\U218B ↋ (TURNED DIGIT THREE)

1 do = 'd12
1 [gross][gro] = 100 = 12^2
1 mo = great gross = 12^3

[gro]: https://en.wikipedia.org/wiki/Gross_(unit)

### perl implementation :

```perl
sub encode_base12 {
  use Math::BigInt;
  my $bin = join'',@_;
  my $n = Math::BigInt->from_bytes($bin);
  my $e = '';
  while ($n->bcmp(0) == +1)  {
    my $c = Math::BigInt->new();
    ($n,$c) = $n->bdiv(12);
    $e .= chr(0x30 + $c->numify); # 0x30: 0 included
  }
  $e =~ y/0-9:;/0-9XƐ/;
  return scalar reverse $e;
}
# ---
sub decode_base12 {
  use Math::BigInt;
  my ($s) = @_; # χ τε δε Χℰ ↊↋
  #       0123456789.0123456789A.012345678.01.01 0123456789.0123456789A.012345678.01.01
  $s =~ y/AIOTUχδXτ↊.BCDEFGHƐℰε↋.JKLMNPQRS.VW.YZ/::::::::::.;;;;;;;;;;;.;;;;;;;;;.;;.;;/;
  my $n = Math::BigInt->new(0);
  my $j = Math::BigInt->new(1);
  while($s ne '') {
    my $c = substr($s,-1,1,''); # consume chr from the end !
    my $i = ord($c);
    my $w = $j->copy();
       $w->bmul($i);
    $n->badd($w);
    $j->bmul(12);
  }
  my $d = $n->as_bytes();
  return $d;
}
```
<!--
 mayan : base 20
 https://en.wikipedia.org/wiki/Maya_numerals
 
 
-->
