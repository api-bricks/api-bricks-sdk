#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "OrdersManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


OrdersManager::OrdersManager()
{

}

OrdersManager::~OrdersManager()
{

}

static gboolean __OrdersManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __OrdersManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__OrdersManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1OrdersCancelAllPostProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(MessageReject, Error, void* )
	= reinterpret_cast<void(*)(MessageReject, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	MessageReject out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("MessageReject")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "MessageReject", "MessageReject");
			json_node_free(pJson);

			if ("MessageReject" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1OrdersCancelAllPostHelper(char * accessToken,
	std::shared_ptr<OrderCancelAllRequest> orderCancelAllRequest, 
	void(* handler)(MessageReject, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	if (isprimitive("OrderCancelAllRequest")) {
		node = converttoJson(&orderCancelAllRequest, "OrderCancelAllRequest", "");
	}
	
	char *jsonStr =  orderCancelAllRequest.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/v1/orders/cancel/all");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersCancelAllPostProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersCancelAllPostProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersCancelAllPostAsync(char * accessToken,
	std::shared_ptr<OrderCancelAllRequest> orderCancelAllRequest, 
	void(* handler)(MessageReject, Error, void* )
	, void* userData)
{
	return v1OrdersCancelAllPostHelper(accessToken,
	orderCancelAllRequest, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersCancelAllPostSync(char * accessToken,
	std::shared_ptr<OrderCancelAllRequest> orderCancelAllRequest, 
	void(* handler)(MessageReject, Error, void* )
	, void* userData)
{
	return v1OrdersCancelAllPostHelper(accessToken,
	orderCancelAllRequest, 
	handler, userData, false);
}

static bool v1OrdersCancelPostProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(OrderExecutionReport, Error, void* )
	= reinterpret_cast<void(*)(OrderExecutionReport, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	OrderExecutionReport out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("OrderExecutionReport")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "OrderExecutionReport", "OrderExecutionReport");
			json_node_free(pJson);

			if ("OrderExecutionReport" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1OrdersCancelPostHelper(char * accessToken,
	std::shared_ptr<OrderCancelSingleRequest> orderCancelSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	if (isprimitive("OrderCancelSingleRequest")) {
		node = converttoJson(&orderCancelSingleRequest, "OrderCancelSingleRequest", "");
	}
	
	char *jsonStr =  orderCancelSingleRequest.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/v1/orders/cancel");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersCancelPostProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersCancelPostProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersCancelPostAsync(char * accessToken,
	std::shared_ptr<OrderCancelSingleRequest> orderCancelSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData)
{
	return v1OrdersCancelPostHelper(accessToken,
	orderCancelSingleRequest, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersCancelPostSync(char * accessToken,
	std::shared_ptr<OrderCancelSingleRequest> orderCancelSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData)
{
	return v1OrdersCancelPostHelper(accessToken,
	orderCancelSingleRequest, 
	handler, userData, false);
}

static bool v1OrdersGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<OrderExecutionReport>, Error, void* )
	= reinterpret_cast<void(*)(std::list<OrderExecutionReport>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<OrderExecutionReport> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			OrderExecutionReport singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1OrdersGetHelper(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<OrderExecutionReport>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	

	itemAtq = stringify(&exchangeId, "std::string");
	queryParams.insert(pair<string, string>("exchange_id", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("exchange_id");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/orders");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersGetAsync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<OrderExecutionReport>, Error, void* )
	, void* userData)
{
	return v1OrdersGetHelper(accessToken,
	exchangeId, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersGetSync(char * accessToken,
	std::string exchangeId, 
	void(* handler)(std::list<OrderExecutionReport>, Error, void* )
	, void* userData)
{
	return v1OrdersGetHelper(accessToken,
	exchangeId, 
	handler, userData, false);
}

static bool v1OrdersHistoryTimeStartTimeEndGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<OrderHistory>, Error, void* )
	= reinterpret_cast<void(*)(std::list<OrderHistory>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<OrderHistory> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			OrderHistory singlemodel;
			singlemodel.fromJson(singlenodestr);
			out.push_front(singlemodel);
			g_free(static_cast<gpointer>(singlenodestr));
			json_node_free(myJson);
		}
		json_array_unref (jsonarray);
		json_node_free(pJson);


	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1OrdersHistoryTimeStartTimeEndGetHelper(char * accessToken,
	std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<OrderHistory>, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/orders/history/{time_start}/{time_end}");
	int pos;

	string s_timeStart("{");
	s_timeStart.append("time_start");
	s_timeStart.append("}");
	pos = url.find(s_timeStart);
	url.erase(pos, s_timeStart.length());
	url.insert(pos, stringify(&timeStart, "std::string"));
	string s_timeEnd("{");
	s_timeEnd.append("time_end");
	s_timeEnd.append("}");
	pos = url.find(s_timeEnd);
	url.erase(pos, s_timeEnd.length());
	url.insert(pos, stringify(&timeEnd, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersHistoryTimeStartTimeEndGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersHistoryTimeStartTimeEndGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersHistoryTimeStartTimeEndGetAsync(char * accessToken,
	std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<OrderHistory>, Error, void* )
	, void* userData)
{
	return v1OrdersHistoryTimeStartTimeEndGetHelper(accessToken,
	timeStart, timeEnd, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersHistoryTimeStartTimeEndGetSync(char * accessToken,
	std::string timeStart, std::string timeEnd, 
	void(* handler)(std::list<OrderHistory>, Error, void* )
	, void* userData)
{
	return v1OrdersHistoryTimeStartTimeEndGetHelper(accessToken,
	timeStart, timeEnd, 
	handler, userData, false);
}

static bool v1OrdersPostProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(OrderExecutionReport, Error, void* )
	= reinterpret_cast<void(*)(OrderExecutionReport, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	OrderExecutionReport out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("OrderExecutionReport")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "OrderExecutionReport", "OrderExecutionReport");
			json_node_free(pJson);

			if ("OrderExecutionReport" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1OrdersPostHelper(char * accessToken,
	std::shared_ptr<OrderNewSingleRequest> orderNewSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	if (isprimitive("OrderNewSingleRequest")) {
		node = converttoJson(&orderNewSingleRequest, "OrderNewSingleRequest", "");
	}
	
	char *jsonStr =  orderNewSingleRequest.toJson();
	node = json_from_string(jsonStr, NULL);
	g_free(static_cast<gpointer>(jsonStr));
	

	char *jsonStr1 =  json_to_string(node, false);
	mBody.append(jsonStr1);
	g_free(static_cast<gpointer>(jsonStr1));

	string url("/v1/orders");
	int pos;


	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("POST");

	if(strcmp("PUT", "POST") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersPostProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersPostProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersPostAsync(char * accessToken,
	std::shared_ptr<OrderNewSingleRequest> orderNewSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData)
{
	return v1OrdersPostHelper(accessToken,
	orderNewSingleRequest, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersPostSync(char * accessToken,
	std::shared_ptr<OrderNewSingleRequest> orderNewSingleRequest, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData)
{
	return v1OrdersPostHelper(accessToken,
	orderNewSingleRequest, 
	handler, userData, false);
}

static bool v1OrdersStatusClientOrderIdGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(OrderExecutionReport, Error, void* )
	= reinterpret_cast<void(*)(OrderExecutionReport, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	
	OrderExecutionReport out;

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));




		if (isprimitive("OrderExecutionReport")) {
			pJson = json_from_string(data, NULL);
			jsonToValue(&out, pJson, "OrderExecutionReport", "OrderExecutionReport");
			json_node_free(pJson);

			if ("OrderExecutionReport" == "std::string") {
				string* val = (std::string*)(&out);
				if (val->empty() && p_chunk.size>4) {
					*val = string(p_chunk.memory, p_chunk.size);
				}
			}
		} else {
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
			out.fromJson(data);
			char *jsonStr =  out.toJson();
			printf("\n%s\n", jsonStr);
			g_free(static_cast<gpointer>(jsonStr));
			
		}
		handler(out, error, userData);
		return true;
		//TODO: handle case where json parsing has an error

	} else {
		Error error;
		if (errormsg != NULL) {
			error = Error(code, string(errormsg));
		} else if (p_chunk.memory != NULL) {
			error = Error(code, string(p_chunk.memory));
		} else {
			error = Error(code, string("Unknown Error"));
		}
		 handler(out, error, userData);
		return false;
			}
}

static bool v1OrdersStatusClientOrderIdGetHelper(char * accessToken,
	std::string clientOrderId, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData, bool isAsync)
{

	//TODO: maybe delete headerList after its used to free up space?
	struct curl_slist *headerList = NULL;

	
	string accessHeader = "Authorization: Bearer ";
	accessHeader.append(accessToken);
	headerList = curl_slist_append(headerList, accessHeader.c_str());
	headerList = curl_slist_append(headerList, "Content-Type: application/json");

	map <string, string> queryParams;
	string itemAtq;
	
	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/orders/status/{client_order_id}");
	int pos;

	string s_clientOrderId("{");
	s_clientOrderId.append("client_order_id");
	s_clientOrderId.append("}");
	pos = url.find(s_clientOrderId);
	url.erase(pos, s_clientOrderId.length());
	url.insert(pos, stringify(&clientOrderId, "std::string"));

	//TODO: free memory of errormsg, memorystruct
	MemoryStruct_s* p_chunk = new MemoryStruct_s();
	long code;
	char* errormsg = NULL;
	string myhttpmethod("GET");

	if(strcmp("PUT", "GET") == 0){
		if(strcmp("", mBody.c_str()) == 0){
			mBody.append("{}");
		}
	}

	if(!isAsync){
		NetClient::easycurl(OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1OrdersStatusClientOrderIdGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

		curl_slist_free_all(headerList);
		if (p_chunk) {
			if(p_chunk->memory) {
				free(p_chunk->memory);
			}
			delete (p_chunk);
		}
		if (errormsg) {
			free(errormsg);
		}
		return retval;
	} else{
		GThread *thread = NULL;
		RequestInfo *requestInfo = NULL;

		requestInfo = new(nothrow) RequestInfo (OrdersManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1OrdersStatusClientOrderIdGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __OrdersManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool OrdersManager::v1OrdersStatusClientOrderIdGetAsync(char * accessToken,
	std::string clientOrderId, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData)
{
	return v1OrdersStatusClientOrderIdGetHelper(accessToken,
	clientOrderId, 
	handler, userData, true);
}

bool OrdersManager::v1OrdersStatusClientOrderIdGetSync(char * accessToken,
	std::string clientOrderId, 
	void(* handler)(OrderExecutionReport, Error, void* )
	, void* userData)
{
	return v1OrdersStatusClientOrderIdGetHelper(accessToken,
	clientOrderId, 
	handler, userData, false);
}

