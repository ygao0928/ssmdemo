package ltd.ygao.until;

import java.util.List;

/**
 * @author Kevin
 * @version 1.0
 * @date 2020/2/25 13:18
 */
public class ReturnParam <T>{
    private Boolean success;    //请求是否成功
    private List<T> list;       //结果的集合
    private int total;          //结果的总条数
    private Object obj;         //其他的对象，可以使用Map<String, Object>的格式添加
    private String msg;

    @Override
    public String toString() {
        return "ReturnParam{" +
                "success=" + success +
                ", list=" + list +
                ", total=" + total +
                ", obj=" + obj +
                ", msg='" + msg + '\'' +
                '}';
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public ReturnParam() {
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }
}
