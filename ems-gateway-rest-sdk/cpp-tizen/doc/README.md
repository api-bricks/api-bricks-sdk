# Documentation for EMS - REST API v1 Tizen Client SDK

## How do I get the doc files?
First generate source code by running `openapi-generator`
Then run `doc/generateDocumentation.sh` from the output folder. It will generate all the doc files and put them in the `doc/SDK` directory.
To successfully generate documentation it needs `Doxygen` installed in the path.
*Note* - Before generating the documentation, put the logo of the project as the file `doc/logo.png` before running `doxygen`.


## How do I use this?
This is the structure of the doc folder:

```
.
├── logo.png                  \\Logo of the project
├── Doxyfile                  \\Doxygen config files
├── generateDocumentation.sh  \\Script to run to generate documentation
├── README.md                 \\This file
├── SDK                       \\Documentation for all classes in EMS - REST API Tizen Client SDK. See ./html/index.html
│   └── html

```

## *tl;dr* run this:

```
doc/generateDocumentation.sh
```

The above SDK folder will be generated. See the index.html inside the SDK folder.


## What's Doxygen?
Doxygen is the de facto standard tool for generating/extracting documentation from annotated/unannotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL, Tcl, and to some extent D.

Check out [Doxygen](https://www.doxygen.org/) for additional information about the Doxygen project.

## I Don't want to run Doxygen. What are the API files for accessing the REST endpoints?
All URIs are relative to https://ems-gateway-aws-eu-central-1-dev.coinapi.iohttps://ems-gateway-aws-eu-central-1-dev.coinapi.io


### BalancesManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1BalancesGetSync* | *GET* /v1/balances | Get balances.
*v1BalancesGetASync* | *GET* /v1/balances | Get balances.


### OrdersManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1OrdersCancelAllPostSync* | *POST* /v1/orders/cancel/all | Cancel all orders request.
*v1OrdersCancelAllPostASync* | *POST* /v1/orders/cancel/all | Cancel all orders request.
*v1OrdersCancelPostSync* | *POST* /v1/orders/cancel | Cancel order request.
*v1OrdersCancelPostASync* | *POST* /v1/orders/cancel | Cancel order request.
*v1OrdersGetSync* | *GET* /v1/orders | Get open orders.
*v1OrdersGetASync* | *GET* /v1/orders | Get open orders.
*v1OrdersHistoryTimeStartTimeEndGetSync* | *GET* /v1/orders/history/{time_start}/{time_end} | History of order changes.
*v1OrdersHistoryTimeStartTimeEndGetASync* | *GET* /v1/orders/history/{time_start}/{time_end} | History of order changes.
*v1OrdersPostSync* | *POST* /v1/orders | Send new order.
*v1OrdersPostASync* | *POST* /v1/orders | Send new order.
*v1OrdersStatusClientOrderIdGetSync* | *GET* /v1/orders/status/{client_order_id} | Get order execution report.
*v1OrdersStatusClientOrderIdGetASync* | *GET* /v1/orders/status/{client_order_id} | Get order execution report.


### PositionsManager
Method | HTTP request | Description
------------- | ------------- | -------------
*v1PositionsGetSync* | *GET* /v1/positions | Get open positions.
*v1PositionsGetASync* | *GET* /v1/positions | Get open positions.


## What are the Model files for the data structures/objects?
Class | Description
------------- | -------------
 *Balance* | 
 *Balance_data_inner* | 
 *Fills* | 
 *MessageError* | 
 *MessageReject* | 
 *OrdSide* | Side of order. 
 *OrdStatus* | Order statuses and the lifecycle are documented in the separate section: <a href=\"#ems-order-lifecycle\">EMS / Starter Guide / Order Lifecycle</a> 
 *OrdType* | Order types are documented in the separate section: <a href=\"#ems-order-params-type\">EMS / Starter Guide / Order parameters / Order type</a> 
 *OrderCancelAllRequest* | Cancel all orders request object.
 *OrderCancelSingleRequest* | Cancel single order request object.
 *OrderExecutionReport* | The order execution report object.
 *OrderExecutionReport_allOf* | The order execution report message.
 *OrderHistory* | 
 *OrderNewSingleRequest* | The new order message.
 *Position* | 
 *Position_data_inner* | The Position object.
 *RejectReason* | Cause of rejection.
 *TimeInForce* | Order time in force options are documented in the separate section: <a href=\"#ems-order-params-tif\">EMS / Starter Guide / Order parameters / Time in force</a> 
 *ValidationError* | 

