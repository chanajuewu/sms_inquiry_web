package com.jinlou.utils;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 自定义响应结构
 */
public class SmsResult implements Serializable{

    @Override
	public String toString() {
		return "SmsResult [reqCode=" + reqCode + ", reqMsg=" + reqMsg + ", reqResult=" + reqResult + "]";
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// 定义jackson对象
    private static final ObjectMapper MAPPER = new ObjectMapper();

    // 响应业务状态
    private Integer reqCode;

    // 响应消息
    private String reqMsg;

    // 响应中的数据
    private Object reqResult;

    public static SmsResult build(Integer reqCode, String reqMsg, Object reqResult) {
        return new SmsResult(reqCode, reqMsg, reqResult);
    }

    public static SmsResult ok(Object reqResult) {
        return new SmsResult(reqResult);
    }

    public static SmsResult ok() {
        return new SmsResult(null);
    }

    public SmsResult() {

    }

    public static SmsResult build(Integer reqCode, String reqMsg) {
        return new SmsResult(reqCode, reqMsg, null);
    }

    public SmsResult(Integer reqCode, String reqMsg, Object reqResult) {
        this.reqCode = reqCode;
        this.reqMsg = reqMsg;
        this.reqResult = reqResult;
    }

    public SmsResult(Object reqResult) {
        this.reqCode = 0;
        this.reqMsg = "OK";
        this.reqResult = reqResult;
    }

//    public Boolean isOK() {
//        return this.reqCode == 200;
//    }

  

    /**
     * 将json结果集转化为SmsResult对象
     * 
     * @param jsonData json数据
     * @param clazz SmsResult中的object类型
     * @return
     */
    public static SmsResult formatToPojo(String jsonData, Class<?> clazz) {
        try {
            if (clazz == null) {
                return MAPPER.readValue(jsonData, SmsResult.class);
            }
            JsonNode jsonNode = MAPPER.readTree(jsonData);
            JsonNode SmsResult = jsonNode.get("SmsResult");
            Object obj = null;
            if (clazz != null) {
                if (SmsResult.isObject()) {
                    obj = MAPPER.readValue(SmsResult.traverse(), clazz);
                } else if (SmsResult.isTextual()) {
                    obj = MAPPER.readValue(SmsResult.asText(), clazz);
                }
            }
            return build(jsonNode.get("reqCode").intValue(), jsonNode.get("reqMsg").asText(), obj);
        } catch (Exception e) {
            return null;
        }
    }

    public Integer getReqCode() {
		return reqCode;
	}

	public void setReqCode(Integer reqCode) {
		this.reqCode = reqCode;
	}

	public String getreqMsg() {
		return reqMsg;
	}

	public void setreqMsg(String reqMsg) {
		this.reqMsg = reqMsg;
	}

	public Object getReqResult() {
		return reqResult;
	}

	public void setReqResult(Object reqResult) {
		this.reqResult = reqResult;
	}

	/**
     * 没有object对象的转化
     * 
     * @param json
     * @return
     */
    public static SmsResult format(String json) {
        try {
            return MAPPER.readValue(json, SmsResult.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Object是集合转化
     * 
     * @param jsonData json数据
     * @param clazz 集合中的类型
     * @return
     */
    public static SmsResult formatToList(String jsonData, Class<?> clazz) {
        try {
            JsonNode jsonNode = MAPPER.readTree(jsonData);
            JsonNode data = jsonNode.get("data");
            Object obj = null;
            if (data.isArray() && data.size() > 0) {
                obj = MAPPER.readValue(data.traverse(),
                        MAPPER.getTypeFactory().constructCollectionType(List.class, clazz));
            }
            return build(jsonNode.get("reqCode").intValue(), jsonNode.get("reqMsg").asText(), obj);
        } catch (Exception e) {
            return null;
        }
    }

}
