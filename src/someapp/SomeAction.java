package someapp;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class SomeAction extends Action {
  
  public ActionForward execute(ActionMapping mapping, ActionForm form,
      HttpServletRequest request, HttpServletResponse response)
      throws Exception {
    
    SomeForm resultForm = (SomeForm)form;

    System.out.println("----- test00 -----");
    List<SomeObject> someList = resultForm.getSomeList();

    System.out.println("----- test01 -----");
    System.out.println("the name: " + someList.get(0).getName());
    
    System.out.println("----- test02 -----");
    String str = someList.get(0).getName();
    str += "_test";
    someList.get(0).setName(str);

    //  リクエストスコープにアクションフォームをセット
    request.setAttribute("resultForm", resultForm);
    
    // 結果画面動作確認用
    // request.setAttribute("resultForm", generateDummyData());

    return mapping.findForward("DynamicInputResult");
  }
  
  // 結果画面動作確認用ダミーデータ生成メソッド
  public SomeForm generateDummyData() {
    String[] strArr = { "林檎", "バナナ", "キウィ", "檸檬", "メロン" };
    List<SomeObject> tmpList = new ArrayList<>();
    for (int i = 0; i < strArr.length; i++) {
      SomeObject sObject = new SomeObject();
      sObject.setId(i);
      sObject.setName(strArr[i]);

      tmpList.add(sObject);
    }
    
    SomeForm sForm = new SomeForm();
    sForm.someList = tmpList;
    
    return sForm;
  }  
}
