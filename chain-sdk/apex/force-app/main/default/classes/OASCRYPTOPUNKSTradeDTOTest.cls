@isTest
private class OASCRYPTOPUNKSTradeDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO1 = OASCRYPTOPUNKSTradeDTO.getExample();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO2 = crYPTOPUNKSTradeDTO1;
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO3 = new OASCRYPTOPUNKSTradeDTO();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO4 = crYPTOPUNKSTradeDTO3;

        System.assert(crYPTOPUNKSTradeDTO1.equals(crYPTOPUNKSTradeDTO2));
        System.assert(crYPTOPUNKSTradeDTO2.equals(crYPTOPUNKSTradeDTO1));
        System.assert(crYPTOPUNKSTradeDTO1.equals(crYPTOPUNKSTradeDTO1));
        System.assert(crYPTOPUNKSTradeDTO3.equals(crYPTOPUNKSTradeDTO4));
        System.assert(crYPTOPUNKSTradeDTO4.equals(crYPTOPUNKSTradeDTO3));
        System.assert(crYPTOPUNKSTradeDTO3.equals(crYPTOPUNKSTradeDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO1 = OASCRYPTOPUNKSTradeDTO.getExample();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO2 = OASCRYPTOPUNKSTradeDTO.getExample();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO3 = new OASCRYPTOPUNKSTradeDTO();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO4 = new OASCRYPTOPUNKSTradeDTO();

        System.assert(crYPTOPUNKSTradeDTO1.equals(crYPTOPUNKSTradeDTO2));
        System.assert(crYPTOPUNKSTradeDTO2.equals(crYPTOPUNKSTradeDTO1));
        System.assert(crYPTOPUNKSTradeDTO3.equals(crYPTOPUNKSTradeDTO4));
        System.assert(crYPTOPUNKSTradeDTO4.equals(crYPTOPUNKSTradeDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO1 = OASCRYPTOPUNKSTradeDTO.getExample();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO2 = new OASCRYPTOPUNKSTradeDTO();

        System.assertEquals(false, crYPTOPUNKSTradeDTO1.equals('foo'));
        System.assertEquals(false, crYPTOPUNKSTradeDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO1 = OASCRYPTOPUNKSTradeDTO.getExample();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO2 = new OASCRYPTOPUNKSTradeDTO();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO3;

        System.assertEquals(false, crYPTOPUNKSTradeDTO1.equals(crYPTOPUNKSTradeDTO3));
        System.assertEquals(false, crYPTOPUNKSTradeDTO2.equals(crYPTOPUNKSTradeDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO1 = OASCRYPTOPUNKSTradeDTO.getExample();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO2 = new OASCRYPTOPUNKSTradeDTO();

        System.assertEquals(crYPTOPUNKSTradeDTO1.hashCode(), crYPTOPUNKSTradeDTO1.hashCode());
        System.assertEquals(crYPTOPUNKSTradeDTO2.hashCode(), crYPTOPUNKSTradeDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO1 = OASCRYPTOPUNKSTradeDTO.getExample();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO2 = OASCRYPTOPUNKSTradeDTO.getExample();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO3 = new OASCRYPTOPUNKSTradeDTO();
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO4 = new OASCRYPTOPUNKSTradeDTO();

        System.assert(crYPTOPUNKSTradeDTO1.equals(crYPTOPUNKSTradeDTO2));
        System.assert(crYPTOPUNKSTradeDTO3.equals(crYPTOPUNKSTradeDTO4));
        System.assertEquals(crYPTOPUNKSTradeDTO1.hashCode(), crYPTOPUNKSTradeDTO2.hashCode());
        System.assertEquals(crYPTOPUNKSTradeDTO3.hashCode(), crYPTOPUNKSTradeDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCRYPTOPUNKSTradeDTO crYPTOPUNKSTradeDTO = new OASCRYPTOPUNKSTradeDTO();
        Map<String, String> x-property-mappings = crYPTOPUNKSTradeDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
        System.assertEquals('transactionHash', x-property-mappings.get('transaction_hash'));
        System.assertEquals('logIndex', x-property-mappings.get('log_index'));
        System.assertEquals('isBundle', x-property-mappings.get('is_bundle'));
        System.assertEquals('tokenId', x-property-mappings.get('token_id'));
        System.assertEquals('priceEth', x-property-mappings.get('price_eth'));
    }
}
