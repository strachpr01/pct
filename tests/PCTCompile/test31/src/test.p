&IF TRUE &THEN
  MESSAGE "PREPRO1 {&LINE-NUMBER}" VIEW-AS ALERT-BOX.
&ELSE
  MESSAGE "PREPRO2 {&LINE-NUMBER}" VIEW-AS ALERT-BOX.
&ENDIF

MESSAGE "BEFOREINC1 {&LINE-NUMBER}" VIEW-AS ALERT-BOX. { inc/file1.i } MESSAGE "BEFOREINC2 {&LINE-NUMBER}" VIEW-AS ALERT-BOX. { inc/file2.i } MESSAGE "AFTERINC2 {&LINE-NUMBER}" VIEW-AS ALERT-BOX.

&IF OPSYS = "UNIX" &THEN
  MESSAGE "UNIX {&LINE-NUMBER}" VIEW-AS ALERT-BOX.
&ELSE
  MESSAGE "NOT UNIX {&LINE-NUMBER}" VIEW-AS ALERT-BOX.

&ENDIF

DEFINE VARIABLE zzz AS eu.rssw.pct.Z no-undo.
zzz = NEW eu.rssw.pct.Z().
zzz:method1().