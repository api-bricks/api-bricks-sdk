@isTest
private class OASCRYPTOPUNKSUserDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO1 = OASCRYPTOPUNKSUserDTO.getExample();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO2 = crYPTOPUNKSUserDTO1;
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO3 = new OASCRYPTOPUNKSUserDTO();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO4 = crYPTOPUNKSUserDTO3;

        System.assert(crYPTOPUNKSUserDTO1.equals(crYPTOPUNKSUserDTO2));
        System.assert(crYPTOPUNKSUserDTO2.equals(crYPTOPUNKSUserDTO1));
        System.assert(crYPTOPUNKSUserDTO1.equals(crYPTOPUNKSUserDTO1));
        System.assert(crYPTOPUNKSUserDTO3.equals(crYPTOPUNKSUserDTO4));
        System.assert(crYPTOPUNKSUserDTO4.equals(crYPTOPUNKSUserDTO3));
        System.assert(crYPTOPUNKSUserDTO3.equals(crYPTOPUNKSUserDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO1 = OASCRYPTOPUNKSUserDTO.getExample();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO2 = OASCRYPTOPUNKSUserDTO.getExample();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO3 = new OASCRYPTOPUNKSUserDTO();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO4 = new OASCRYPTOPUNKSUserDTO();

        System.assert(crYPTOPUNKSUserDTO1.equals(crYPTOPUNKSUserDTO2));
        System.assert(crYPTOPUNKSUserDTO2.equals(crYPTOPUNKSUserDTO1));
        System.assert(crYPTOPUNKSUserDTO3.equals(crYPTOPUNKSUserDTO4));
        System.assert(crYPTOPUNKSUserDTO4.equals(crYPTOPUNKSUserDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO1 = OASCRYPTOPUNKSUserDTO.getExample();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO2 = new OASCRYPTOPUNKSUserDTO();

        System.assertEquals(false, crYPTOPUNKSUserDTO1.equals('foo'));
        System.assertEquals(false, crYPTOPUNKSUserDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO1 = OASCRYPTOPUNKSUserDTO.getExample();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO2 = new OASCRYPTOPUNKSUserDTO();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO3;

        System.assertEquals(false, crYPTOPUNKSUserDTO1.equals(crYPTOPUNKSUserDTO3));
        System.assertEquals(false, crYPTOPUNKSUserDTO2.equals(crYPTOPUNKSUserDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO1 = OASCRYPTOPUNKSUserDTO.getExample();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO2 = new OASCRYPTOPUNKSUserDTO();

        System.assertEquals(crYPTOPUNKSUserDTO1.hashCode(), crYPTOPUNKSUserDTO1.hashCode());
        System.assertEquals(crYPTOPUNKSUserDTO2.hashCode(), crYPTOPUNKSUserDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO1 = OASCRYPTOPUNKSUserDTO.getExample();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO2 = OASCRYPTOPUNKSUserDTO.getExample();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO3 = new OASCRYPTOPUNKSUserDTO();
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO4 = new OASCRYPTOPUNKSUserDTO();

        System.assert(crYPTOPUNKSUserDTO1.equals(crYPTOPUNKSUserDTO2));
        System.assert(crYPTOPUNKSUserDTO3.equals(crYPTOPUNKSUserDTO4));
        System.assertEquals(crYPTOPUNKSUserDTO1.hashCode(), crYPTOPUNKSUserDTO2.hashCode());
        System.assertEquals(crYPTOPUNKSUserDTO3.hashCode(), crYPTOPUNKSUserDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCRYPTOPUNKSUserDTO crYPTOPUNKSUserDTO = new OASCRYPTOPUNKSUserDTO();
        Map<String, String> x-property-mappings = crYPTOPUNKSUserDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
    }
}
