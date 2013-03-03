ltsv4sh
=======

Primitive LTSV Parser for sh.

###USAGE:
  ltsv_get "hoge" "hoge:hage fuga:fugo"  
  #echo hage  
  ltsv_get "huga" "hoge:hage fuga:fugo"  
  #echo fugo  

###TODO:
  check label-value exists.  
  check label is valid.  
  check string is valid as LTSV.  
  dump all label-values.  
  decide to behave if labels would be duplicated. 
