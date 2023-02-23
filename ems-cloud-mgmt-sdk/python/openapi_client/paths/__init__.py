# do not import all endpoints into this module because that uses a lot of memory and stack frames
# if you need the ability to import all endpoints from this module, import them with
# from openapi_client.apis.path_to_api import path_to_api

import enum


class PathValues(str, enum.Enum):
    V1_ORDERS = "/v1/orders"
    V1_ORDERS_STATUS_CLIENT_ORDER_ID = "/v1/orders/status/{client_order_id}"
    V1_ORDERS_CANCEL = "/v1/orders/cancel"
    V1_ORDERS_CANCEL_ALL = "/v1/orders/cancel/all"
    V1_ORDERS_HISTORY_TIME_START_TIME_END = "/v1/orders/history/{time_start}/{time_end}"
    V1_BALANCES = "/v1/balances"
    V1_POSITIONS = "/v1/positions"
