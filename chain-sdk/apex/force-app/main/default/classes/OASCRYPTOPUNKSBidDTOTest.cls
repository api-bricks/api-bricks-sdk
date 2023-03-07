@isTest
private class OASCRYPTOPUNKSBidDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO1 = OASCRYPTOPUNKSBidDTO.getExample();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO2 = crYPTOPUNKSBidDTO1;
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO3 = new OASCRYPTOPUNKSBidDTO();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO4 = crYPTOPUNKSBidDTO3;

        System.assert(crYPTOPUNKSBidDTO1.equals(crYPTOPUNKSBidDTO2));
        System.assert(crYPTOPUNKSBidDTO2.equals(crYPTOPUNKSBidDTO1));
        System.assert(crYPTOPUNKSBidDTO1.equals(crYPTOPUNKSBidDTO1));
        System.assert(crYPTOPUNKSBidDTO3.equals(crYPTOPUNKSBidDTO4));
        System.assert(crYPTOPUNKSBidDTO4.equals(crYPTOPUNKSBidDTO3));
        System.assert(crYPTOPUNKSBidDTO3.equals(crYPTOPUNKSBidDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO1 = OASCRYPTOPUNKSBidDTO.getExample();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO2 = OASCRYPTOPUNKSBidDTO.getExample();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO3 = new OASCRYPTOPUNKSBidDTO();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO4 = new OASCRYPTOPUNKSBidDTO();

        System.assert(crYPTOPUNKSBidDTO1.equals(crYPTOPUNKSBidDTO2));
        System.assert(crYPTOPUNKSBidDTO2.equals(crYPTOPUNKSBidDTO1));
        System.assert(crYPTOPUNKSBidDTO3.equals(crYPTOPUNKSBidDTO4));
        System.assert(crYPTOPUNKSBidDTO4.equals(crYPTOPUNKSBidDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO1 = OASCRYPTOPUNKSBidDTO.getExample();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO2 = new OASCRYPTOPUNKSBidDTO();

        System.assertEquals(false, crYPTOPUNKSBidDTO1.equals('foo'));
        System.assertEquals(false, crYPTOPUNKSBidDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO1 = OASCRYPTOPUNKSBidDTO.getExample();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO2 = new OASCRYPTOPUNKSBidDTO();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO3;

        System.assertEquals(false, crYPTOPUNKSBidDTO1.equals(crYPTOPUNKSBidDTO3));
        System.assertEquals(false, crYPTOPUNKSBidDTO2.equals(crYPTOPUNKSBidDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO1 = OASCRYPTOPUNKSBidDTO.getExample();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO2 = new OASCRYPTOPUNKSBidDTO();

        System.assertEquals(crYPTOPUNKSBidDTO1.hashCode(), crYPTOPUNKSBidDTO1.hashCode());
        System.assertEquals(crYPTOPUNKSBidDTO2.hashCode(), crYPTOPUNKSBidDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO1 = OASCRYPTOPUNKSBidDTO.getExample();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO2 = OASCRYPTOPUNKSBidDTO.getExample();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO3 = new OASCRYPTOPUNKSBidDTO();
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO4 = new OASCRYPTOPUNKSBidDTO();

        System.assert(crYPTOPUNKSBidDTO1.equals(crYPTOPUNKSBidDTO2));
        System.assert(crYPTOPUNKSBidDTO3.equals(crYPTOPUNKSBidDTO4));
        System.assertEquals(crYPTOPUNKSBidDTO1.hashCode(), crYPTOPUNKSBidDTO2.hashCode());
        System.assertEquals(crYPTOPUNKSBidDTO3.hashCode(), crYPTOPUNKSBidDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCRYPTOPUNKSBidDTO crYPTOPUNKSBidDTO = new OASCRYPTOPUNKSBidDTO();
        Map<String, String> x-property-mappings = crYPTOPUNKSBidDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
        System.assertEquals('tokensBid', x-property-mappings.get('tokens_bid'));
        System.assertEquals('tokenId', x-property-mappings.get('token_id'));
    }
}
