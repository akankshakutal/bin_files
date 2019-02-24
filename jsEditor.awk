#! /usr/bin/awk -f
BEGIN{
  spaces=0;
  content=""
  msg=";"
  FS=""
}
{
  msg=";"
  j=0;
  for(a=1;$a==" ";a++);
  content=substr($0,a)
}
((content~/^}/ && content~/{$/)){
  msg=""
  j=1
 printing(spaces,j,msg,content)
 next
}
(content~/^\/\//){
  msg=""
  printing(spaces,j,msg,content)
  next
}
(content~/;$/){
  msg=""
}
(content~/{$|}/){
  if(content~/{$/){
    spaces=spaces+2
    j=1
  }else{
    spaces=spaces-2
  }
  msg=""
}
{
  printing(spaces,j,msg,content)
}
func printing(spaces,j,msg,content){
  if(j==1){
    spaces=spaces-2;
  }
  for(i=0;i<spaces;i++){
    printf " "
  }
  if(j==1){
    spaces=spaces+2;
  }
  print content msg
}
END{

  }
