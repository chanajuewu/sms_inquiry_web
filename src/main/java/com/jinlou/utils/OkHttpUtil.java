package com.jinlou.utils;


import java.net.SocketTimeoutException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.apache.http.conn.ConnectTimeoutException;

import com.jinlou.sms.commons.Tools;
import com.jinlou.sms.commons.log.Log;
import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class OkHttpUtil {

	private static OkHttpClient client = null;
	public static final MediaType MEDIATYPE_PLAIN = MediaType.parse("text/plain; charset=utf-8");
	public static final MediaType MEDIATYPE_HTML = MediaType.parse("text/html; charset=utf-8");
	public static final MediaType MEDIATYPE_JSON = MediaType.parse("application/json; charset=utf-8");
	public static final MediaType MEDIATYPE_URLENCODED = MediaType
			.parse("application/x-www-form-urlencoded; charset=utf-8");
	public static final MediaType MEDIATYPE_DATA = MediaType.parse("multipart/form-data; charset=utf-8");
	public static final MediaType MEDIATYPE_JPEG = MediaType.parse("image/jpeg; charset=utf-8");

	private synchronized static OkHttpClient getOkHttpClient() {
		if (client == null) {
			client = new OkHttpClient();
			client = client.newBuilder().connectTimeout(60 * 1000, TimeUnit.MILLISECONDS)
					.readTimeout(2*60 * 1000, TimeUnit.MILLISECONDS).build();
		}
		return client;
	}

	public static String doPost(String url) {
		Log.i("POST提交：[url=" + url + "]");
		String result = "";
		FormBody formBody = new FormBody.Builder().build();
		Request request = new Request.Builder().url(url).post(formBody).build();
		Response response = null;
		try {
			response = getOkHttpClient().newCall(request).execute();
			result = (response.code() != 200) ? ("HttpStateException=" + response.code()) : response.body().string();
		} catch (ConnectTimeoutException cte) {
			Log.e(cte.toString());
			result = "ConnectTimeoutException";
		} catch (SocketTimeoutException cte) {
			Log.e(cte.toString());
			result = "SocketTimeoutException";
		} catch (Exception e) {
			Log.e(e);
			result = "Exception";
		} finally {
			if (response != null) {
				response.close();
			}
		}
		Log.i("POST响应：[" + result + "]");
		return result;
	}

	public static String doGet(String url, HashMap<String, String> params) {
		if (params != null) {
			StringBuilder sb = new StringBuilder("?");
			for (String key : params.keySet()) {
				sb.append("&").append(key).append("=").append(params.get(key));
			}
			url += sb.toString();
		}
		Log.i("GET提交：[url=" + url + "]");
		String result = "";
		
		Request request = new Request.Builder().url(url).get().build();
		Response response = null;
		try {
			response = getOkHttpClient().newCall(request).execute();
			result = (response.code() != 200) ? ("HttpStateException=" + response.code()) : response.body().string();
		} catch (ConnectTimeoutException cte) {
			Log.e(cte.toString());
			result = "ConnectTimeoutException";
		} catch (SocketTimeoutException cte) {
			Log.e(cte.toString());
			result = "SocketTimeoutException";
		} catch (Exception e) {
			Log.e(e);
			result = "Exception";
		} finally {
			if (response != null) {
				response.close();
			}
		}
		Log.i("GET响应：[" + result + "]");
		return result;
	}
	
	@SuppressWarnings("static-access")
	public static String doPost(String url, HashMap<String, String> params) {
		Log.i("POST提交：[url=" + url + "]" + (params == null ? "" : params.toString()));
		String result = "";
		FormBody.Builder formBodyBuder = new FormBody.Builder();
		if (params != null) {
			for (String key : params.keySet()) {
				formBodyBuder.add(key, params.get(key));
			}
		}
		Tools tools = new Tools();
		FormBody formBody = formBodyBuder.build();
		String time = tools.getDateTime14();
		Request request = new Request.Builder().url(url)
				.addHeader("AccessKeyId", "db68c8f79f41263b717066a8b499b1d2")
				.addHeader("Signature", tools.getMD5("db68c8f79f41263b717066a8b499b1d2"+time))
				.addHeader("Time", time)
				.post(formBody).build();
		Response response = null;
		try {
			response = getOkHttpClient().newCall(request).execute();
			result = (response.code() != 200) ? ("HttpStateException=" + response.code()) : response.body().string();
		} catch (ConnectTimeoutException cte) {
			Log.e(cte.toString());
			result = "ConnectTimeoutException";
		} catch (SocketTimeoutException cte) {
			Log.e(cte.toString());
			result = "SocketTimeoutException";
		} catch (Exception e) {
			Log.e(e);
			result = "Exception";
		} finally {
			if (response != null) {
				response.close();
			}
		}
		String ret = "";
		if(result != null && result.length() > 30){
			ret = result.substring(0,30);
		}else{
			ret = result;
		}
		Log.i("POST响应：[" + ret + "]");
		return result;
	}

	public static String doPost(String url, String json) {
		Log.i("POST提交：[url=" + url + "]" + json);
		String result = "";
		RequestBody body = RequestBody.create(MEDIATYPE_JSON, json);
		Request request = new Request.Builder().url(url).post(body).build();
		Response response = null;
		try {
			response = getOkHttpClient().newCall(request).execute();
			result = (response.code() != 200) ? ("HttpStateException=" + response.code()) : response.body().string();
		} catch (ConnectTimeoutException cte) {
			Log.e(cte.toString());
			result = "ConnectTimeoutException";
		} catch (SocketTimeoutException cte) {
			Log.e(cte.toString());
			result = "SocketTimeoutException";
		} catch (Exception e) {
			Log.e(e);
			result = "Exception";
		} finally {
			if (response != null) {
				response.close();
			}
		}
		Log.i("POST响应：[" + result + "]");
		return result;
	}

}