public class AnandCls13 {
   public SelectOption[] options{get;set;}
   
   public AnandCls13(){
       SelectOption o1=new SelectOption('one','--None--');
       SelectOption o2=new SelectOption('two','India');
       SelectOption o3=new SelectOption('three','USA');
       SelectOption o4=new SelectOption('four','Japan');       
       SelectOption o5=new SelectOption('five','Nepal');
       
       options=new SelectOption[]{o1,o2,o3,o4,o5};
       
                            
                            
   }

}