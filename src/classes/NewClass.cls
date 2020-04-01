@isTest
public class NewClass {

  Integer newField;

  public NewClass(Integer value){
    newField = value;
  }

  private void unusedMethod(){}

  /*
  * This is fine.
  */
  public boolean isBadExample(){ 
    return true; 
  } 
  
  private void badBadBad(Integer local){
  }

  
  public void terribleCode(Integer param){
    param = 5;
  }

  public static void triggerBasicAuraHandledError() {
    try {
      integer a = 1 / 0; // Division by zero causes exception
    } catch (Exception e) {
        // "Convert" the exception into an AuraHandledException
      throw new AuraHandledException('THIS IS THE ERROR MESSAGE');
    }
  }
  
    @isTest static void onlyTest(){
        triggerBasicAuraHandledError();
  	}
}
