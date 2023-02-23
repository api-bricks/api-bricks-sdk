import typing_extensions

from openapi_client.paths import PathValues
from openapi_client.apis.paths.v1_orders import V1Orders
from openapi_client.apis.paths.v1_orders_status_client_order_id import V1OrdersStatusClientOrderId
from openapi_client.apis.paths.v1_orders_cancel import V1OrdersCancel
from openapi_client.apis.paths.v1_orders_cancel_all import V1OrdersCancelAll
from openapi_client.apis.paths.v1_orders_history_time_start_time_end import V1OrdersHistoryTimeStartTimeEnd
from openapi_client.apis.paths.v1_balances import V1Balances
from openapi_client.apis.paths.v1_positions import V1Positions

PathToApi = typing_extensions.TypedDict(
    'PathToApi',
    {
        PathValues.V1_ORDERS: V1Orders,
        PathValues.V1_ORDERS_STATUS_CLIENT_ORDER_ID: V1OrdersStatusClientOrderId,
        PathValues.V1_ORDERS_CANCEL: V1OrdersCancel,
        PathValues.V1_ORDERS_CANCEL_ALL: V1OrdersCancelAll,
        PathValues.V1_ORDERS_HISTORY_TIME_START_TIME_END: V1OrdersHistoryTimeStartTimeEnd,
        PathValues.V1_BALANCES: V1Balances,
        PathValues.V1_POSITIONS: V1Positions,
    }
)

path_to_api = PathToApi(
    {
        PathValues.V1_ORDERS: V1Orders,
        PathValues.V1_ORDERS_STATUS_CLIENT_ORDER_ID: V1OrdersStatusClientOrderId,
        PathValues.V1_ORDERS_CANCEL: V1OrdersCancel,
        PathValues.V1_ORDERS_CANCEL_ALL: V1OrdersCancelAll,
        PathValues.V1_ORDERS_HISTORY_TIME_START_TIME_END: V1OrdersHistoryTimeStartTimeEnd,
        PathValues.V1_BALANCES: V1Balances,
        PathValues.V1_POSITIONS: V1Positions,
    }
)
