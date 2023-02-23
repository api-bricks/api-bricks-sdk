import typing_extensions

from openapi_client.apis.tags import TagValues
from openapi_client.apis.tags.orders_api import OrdersApi
from openapi_client.apis.tags.balances_api import BalancesApi
from openapi_client.apis.tags.positions_api import PositionsApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.ORDERS: OrdersApi,
        TagValues.BALANCES: BalancesApi,
        TagValues.POSITIONS: PositionsApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.ORDERS: OrdersApi,
        TagValues.BALANCES: BalancesApi,
        TagValues.POSITIONS: PositionsApi,
    }
)
