package someapp;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class SomeForm extends ActionForm {
  public List someList;
  
  // getter1
  public List getSomeList() {
    return someList;
  }
  
  
  // setter
  public void setData(List userInputs) {
    this.someList = userInputs;
  }

  // getter2
  public SomeObject getData(int index) {
    while(someList.size() <= index) {
      this.someList.add(new SomeObject());
    }
    return (SomeObject)someList.get(index);
  }
  
  @Override
  public void reset(ActionMapping mapping, HttpServletRequest request) {
    
  }
  
  

}
