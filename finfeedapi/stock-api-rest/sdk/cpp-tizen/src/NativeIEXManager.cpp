#include <glib-object.h>
#include <json-glib/json-glib.h>

#include "NativeIEXManager.h"
#include "NetClient.h"
#include "Helpers.h"
#include "Error.h"
#include "RequestInfo.h"

using namespace std;
using namespace Tizen::ArtikCloud;


NativeIEXManager::NativeIEXManager()
{

}

NativeIEXManager::~NativeIEXManager()
{

}

static gboolean __NativeIEXManagerresponseHandler(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);
	g_thread_join(request->thread);

	// invoke the callback function
	bool retval = request->processor(*(request->p_chunk), *(request->code), request->errormsg, request->userData, request->handler);

	delete request;
	return FALSE;
}

static gpointer __NativeIEXManagerthreadFunc(gpointer data)
{
	RequestInfo *request = static_cast<RequestInfo*>(data);

	// handle the request
	NetClient::easycurl(request->host, request->path, request->method, request->queryParams,
	request->mBody, request->headerList, request->p_chunk, request->code, request->errormsg);

	request->thread = g_thread_self();
	g_idle_add(__NativeIEXManagerresponseHandler, static_cast<gpointer>(request));

	return NULL;
}


static bool v1NativeIexAdminMessagesSymbolGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Models.AdminMessageModel>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Models.AdminMessageModel>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Models.AdminMessageModel> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Models.AdminMessageModel singlemodel;
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

static bool v1NativeIexAdminMessagesSymbolGetHelper(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.AdminMessageModel>, Error, void* )
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
	

	itemAtq = stringify(&date, "std::string");
	queryParams.insert(pair<string, string>("date", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("date");
	}


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_start");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/native/iex/admin/messages/{symbol}");
	int pos;

	string s_symbol("{");
	s_symbol.append("symbol");
	s_symbol.append("}");
	pos = url.find(s_symbol);
	url.erase(pos, s_symbol.length());
	url.insert(pos, stringify(&symbol, "std::string"));

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
		NetClient::easycurl(NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1NativeIexAdminMessagesSymbolGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1NativeIexAdminMessagesSymbolGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __NativeIEXManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool NativeIEXManager::v1NativeIexAdminMessagesSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.AdminMessageModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexAdminMessagesSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, true);
}

bool NativeIEXManager::v1NativeIexAdminMessagesSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.AdminMessageModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexAdminMessagesSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, false);
}

static bool v1NativeIexAdminSystemEventGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<IEXSystemEvent.SystemEventModel>, Error, void* )
	= reinterpret_cast<void(*)(std::list<IEXSystemEvent.SystemEventModel>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<IEXSystemEvent.SystemEventModel> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			IEXSystemEvent.SystemEventModel singlemodel;
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

static bool v1NativeIexAdminSystemEventGetHelper(char * accessToken,
	std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXSystemEvent.SystemEventModel>, Error, void* )
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
	

	itemAtq = stringify(&date, "std::string");
	queryParams.insert(pair<string, string>("date", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("date");
	}


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_start");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/native/iex/admin/system-event");
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
		NetClient::easycurl(NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1NativeIexAdminSystemEventGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1NativeIexAdminSystemEventGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __NativeIEXManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool NativeIEXManager::v1NativeIexAdminSystemEventGetAsync(char * accessToken,
	std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXSystemEvent.SystemEventModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexAdminSystemEventGetHelper(accessToken,
	date, timeStart, limit, 
	handler, userData, true);
}

bool NativeIEXManager::v1NativeIexAdminSystemEventGetSync(char * accessToken,
	std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXSystemEvent.SystemEventModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexAdminSystemEventGetHelper(accessToken,
	date, timeStart, limit, 
	handler, userData, false);
}

static bool v1NativeIexLevel1QuoteSymbolGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<IEXQuoteUpdate.QuoteUpdateModel>, Error, void* )
	= reinterpret_cast<void(*)(std::list<IEXQuoteUpdate.QuoteUpdateModel>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<IEXQuoteUpdate.QuoteUpdateModel> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			IEXQuoteUpdate.QuoteUpdateModel singlemodel;
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

static bool v1NativeIexLevel1QuoteSymbolGetHelper(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXQuoteUpdate.QuoteUpdateModel>, Error, void* )
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
	

	itemAtq = stringify(&date, "std::string");
	queryParams.insert(pair<string, string>("date", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("date");
	}


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_start");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/native/iex/level1-quote/{symbol}");
	int pos;

	string s_symbol("{");
	s_symbol.append("symbol");
	s_symbol.append("}");
	pos = url.find(s_symbol);
	url.erase(pos, s_symbol.length());
	url.insert(pos, stringify(&symbol, "std::string"));

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
		NetClient::easycurl(NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1NativeIexLevel1QuoteSymbolGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1NativeIexLevel1QuoteSymbolGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __NativeIEXManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool NativeIEXManager::v1NativeIexLevel1QuoteSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXQuoteUpdate.QuoteUpdateModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexLevel1QuoteSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, true);
}

bool NativeIEXManager::v1NativeIexLevel1QuoteSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXQuoteUpdate.QuoteUpdateModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexLevel1QuoteSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, false);
}

static bool v1NativeIexLevel2PriceLevelUpdateSymbolGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<IEXPriceLevelUpdate.PriceLevelUpdateModel>, Error, void* )
	= reinterpret_cast<void(*)(std::list<IEXPriceLevelUpdate.PriceLevelUpdateModel>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<IEXPriceLevelUpdate.PriceLevelUpdateModel> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			IEXPriceLevelUpdate.PriceLevelUpdateModel singlemodel;
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

static bool v1NativeIexLevel2PriceLevelUpdateSymbolGetHelper(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXPriceLevelUpdate.PriceLevelUpdateModel>, Error, void* )
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
	

	itemAtq = stringify(&date, "std::string");
	queryParams.insert(pair<string, string>("date", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("date");
	}


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_start");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/native/iex/level2-price-level-update/{symbol}");
	int pos;

	string s_symbol("{");
	s_symbol.append("symbol");
	s_symbol.append("}");
	pos = url.find(s_symbol);
	url.erase(pos, s_symbol.length());
	url.insert(pos, stringify(&symbol, "std::string"));

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
		NetClient::easycurl(NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1NativeIexLevel2PriceLevelUpdateSymbolGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1NativeIexLevel2PriceLevelUpdateSymbolGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __NativeIEXManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool NativeIEXManager::v1NativeIexLevel2PriceLevelUpdateSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXPriceLevelUpdate.PriceLevelUpdateModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexLevel2PriceLevelUpdateSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, true);
}

bool NativeIEXManager::v1NativeIexLevel2PriceLevelUpdateSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXPriceLevelUpdate.PriceLevelUpdateModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexLevel2PriceLevelUpdateSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, false);
}

static bool v1NativeIexLevel3OrderBookSymbolGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<Models.OrderBookModel>, Error, void* )
	= reinterpret_cast<void(*)(std::list<Models.OrderBookModel>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<Models.OrderBookModel> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			Models.OrderBookModel singlemodel;
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

static bool v1NativeIexLevel3OrderBookSymbolGetHelper(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.OrderBookModel>, Error, void* )
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
	

	itemAtq = stringify(&date, "std::string");
	queryParams.insert(pair<string, string>("date", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("date");
	}


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_start");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/native/iex/level3-order-book/{symbol}");
	int pos;

	string s_symbol("{");
	s_symbol.append("symbol");
	s_symbol.append("}");
	pos = url.find(s_symbol);
	url.erase(pos, s_symbol.length());
	url.insert(pos, stringify(&symbol, "std::string"));

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
		NetClient::easycurl(NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1NativeIexLevel3OrderBookSymbolGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1NativeIexLevel3OrderBookSymbolGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __NativeIEXManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool NativeIEXManager::v1NativeIexLevel3OrderBookSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.OrderBookModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexLevel3OrderBookSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, true);
}

bool NativeIEXManager::v1NativeIexLevel3OrderBookSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<Models.OrderBookModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexLevel3OrderBookSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, false);
}

static bool v1NativeIexTradeSymbolGetProcessor(MemoryStruct_s p_chunk, long code, char* errormsg, void* userData,
	void(* voidHandler)())
{
	void(* handler)(std::list<IEXTrade.TradeModel>, Error, void* )
	= reinterpret_cast<void(*)(std::list<IEXTrade.TradeModel>, Error, void* )> (voidHandler);
	
	JsonNode* pJson;
	char * data = p_chunk.memory;

	std::list<IEXTrade.TradeModel> out;
	

	if (code >= 200 && code < 300) {
		Error error(code, string("No Error"));



		pJson = json_from_string(data, NULL);
		JsonArray * jsonarray = json_node_get_array (pJson);
		guint length = json_array_get_length (jsonarray);
		for(guint i = 0; i < length; i++){
			JsonNode* myJson = json_array_get_element (jsonarray, i);
			char * singlenodestr = json_to_string(myJson, false);
			IEXTrade.TradeModel singlemodel;
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

static bool v1NativeIexTradeSymbolGetHelper(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXTrade.TradeModel>, Error, void* )
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
	

	itemAtq = stringify(&date, "std::string");
	queryParams.insert(pair<string, string>("date", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("date");
	}


	itemAtq = stringify(&timeStart, "std::string");
	queryParams.insert(pair<string, string>("time_start", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("time_start");
	}


	itemAtq = stringify(&limit, "int");
	queryParams.insert(pair<string, string>("limit", itemAtq));
	if( itemAtq.empty()==true){
		queryParams.erase("limit");
	}

	string mBody = "";
	JsonNode* node;
	JsonArray* json_array;

	string url("/v1/native/iex/trade/{symbol}");
	int pos;

	string s_symbol("{");
	s_symbol.append("symbol");
	s_symbol.append("}");
	pos = url.find(s_symbol);
	url.erase(pos, s_symbol.length());
	url.insert(pos, stringify(&symbol, "std::string"));

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
		NetClient::easycurl(NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg);
		bool retval = v1NativeIexTradeSymbolGetProcessor(*p_chunk, code, errormsg, userData,reinterpret_cast<void(*)()>(handler));

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

		requestInfo = new(nothrow) RequestInfo (NativeIEXManager::getBasePath(), url, myhttpmethod, queryParams,
			mBody, headerList, p_chunk, &code, errormsg, userData, reinterpret_cast<void(*)()>(handler), v1NativeIexTradeSymbolGetProcessor);;
		if(requestInfo == NULL)
			return false;

		thread = g_thread_new(NULL, __NativeIEXManagerthreadFunc, static_cast<gpointer>(requestInfo));
		return true;
	}
}




bool NativeIEXManager::v1NativeIexTradeSymbolGetAsync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXTrade.TradeModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexTradeSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, true);
}

bool NativeIEXManager::v1NativeIexTradeSymbolGetSync(char * accessToken,
	std::string symbol, std::string date, std::string timeStart, int limit, 
	void(* handler)(std::list<IEXTrade.TradeModel>, Error, void* )
	, void* userData)
{
	return v1NativeIexTradeSymbolGetHelper(accessToken,
	symbol, date, timeStart, limit, 
	handler, userData, false);
}

