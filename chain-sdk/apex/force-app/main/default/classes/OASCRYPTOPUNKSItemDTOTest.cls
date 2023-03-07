@isTest
private class OASCRYPTOPUNKSItemDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO1 = OASCRYPTOPUNKSItemDTO.getExample();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO2 = crYPTOPUNKSItemDTO1;
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO3 = new OASCRYPTOPUNKSItemDTO();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO4 = crYPTOPUNKSItemDTO3;

        System.assert(crYPTOPUNKSItemDTO1.equals(crYPTOPUNKSItemDTO2));
        System.assert(crYPTOPUNKSItemDTO2.equals(crYPTOPUNKSItemDTO1));
        System.assert(crYPTOPUNKSItemDTO1.equals(crYPTOPUNKSItemDTO1));
        System.assert(crYPTOPUNKSItemDTO3.equals(crYPTOPUNKSItemDTO4));
        System.assert(crYPTOPUNKSItemDTO4.equals(crYPTOPUNKSItemDTO3));
        System.assert(crYPTOPUNKSItemDTO3.equals(crYPTOPUNKSItemDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO1 = OASCRYPTOPUNKSItemDTO.getExample();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO2 = OASCRYPTOPUNKSItemDTO.getExample();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO3 = new OASCRYPTOPUNKSItemDTO();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO4 = new OASCRYPTOPUNKSItemDTO();

        System.assert(crYPTOPUNKSItemDTO1.equals(crYPTOPUNKSItemDTO2));
        System.assert(crYPTOPUNKSItemDTO2.equals(crYPTOPUNKSItemDTO1));
        System.assert(crYPTOPUNKSItemDTO3.equals(crYPTOPUNKSItemDTO4));
        System.assert(crYPTOPUNKSItemDTO4.equals(crYPTOPUNKSItemDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO1 = OASCRYPTOPUNKSItemDTO.getExample();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO2 = new OASCRYPTOPUNKSItemDTO();

        System.assertEquals(false, crYPTOPUNKSItemDTO1.equals('foo'));
        System.assertEquals(false, crYPTOPUNKSItemDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO1 = OASCRYPTOPUNKSItemDTO.getExample();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO2 = new OASCRYPTOPUNKSItemDTO();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO3;

        System.assertEquals(false, crYPTOPUNKSItemDTO1.equals(crYPTOPUNKSItemDTO3));
        System.assertEquals(false, crYPTOPUNKSItemDTO2.equals(crYPTOPUNKSItemDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO1 = OASCRYPTOPUNKSItemDTO.getExample();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO2 = new OASCRYPTOPUNKSItemDTO();

        System.assertEquals(crYPTOPUNKSItemDTO1.hashCode(), crYPTOPUNKSItemDTO1.hashCode());
        System.assertEquals(crYPTOPUNKSItemDTO2.hashCode(), crYPTOPUNKSItemDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO1 = OASCRYPTOPUNKSItemDTO.getExample();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO2 = OASCRYPTOPUNKSItemDTO.getExample();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO3 = new OASCRYPTOPUNKSItemDTO();
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO4 = new OASCRYPTOPUNKSItemDTO();

        System.assert(crYPTOPUNKSItemDTO1.equals(crYPTOPUNKSItemDTO2));
        System.assert(crYPTOPUNKSItemDTO3.equals(crYPTOPUNKSItemDTO4));
        System.assertEquals(crYPTOPUNKSItemDTO1.hashCode(), crYPTOPUNKSItemDTO2.hashCode());
        System.assertEquals(crYPTOPUNKSItemDTO3.hashCode(), crYPTOPUNKSItemDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCRYPTOPUNKSItemDTO crYPTOPUNKSItemDTO = new OASCRYPTOPUNKSItemDTO();
        Map<String, String> x-property-mappings = crYPTOPUNKSItemDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
    }
}
