import com.opensymphony.xwork2.ActionContext;
import net.sf.json.JSONObject;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by xzsh1 on 2017/1/8.
 */
public class PlanCheckAction {
    private JSONObject result;
    private int total;
    private int rows;
    private int page;

    ActionContext Context = ActionContext.getContext();
    HttpServletRequest request = ServletActionContext.getRequest();//获取Request对象

    public void listInfo(){
        int intPage=1;
        int row=5;
        int begin=1;
        int end=5;

    }
}
