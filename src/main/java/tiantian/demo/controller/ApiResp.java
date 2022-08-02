package tiantian.demo.controller;

import com.fasterxml.jackson.annotation.JsonInclude;

/**
 * @author davine
 * @date 2022/8/2
 */
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ApiResp {
    private int code;
    private String msg;
    private Object data;

    private ApiResp(int code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }
    private static final int SUCCESS_CODE = 0;
    private static final String SUCCESS_MSG = "success";

    public static ApiResp buildSuccess(Object data) {
        return new ApiResp(SUCCESS_CODE, SUCCESS_MSG, data);
    }
    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

    public Object getData() {
        return data;
    }
}
