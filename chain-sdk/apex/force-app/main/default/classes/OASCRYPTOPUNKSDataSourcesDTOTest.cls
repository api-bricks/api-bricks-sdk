@isTest
private class OASCRYPTOPUNKSDataSourcesDTOTest {
    @isTest
    private static void equalsSameInstance() {
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO1 = OASCRYPTOPUNKSDataSourcesDTO.getExample();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO2 = crYPTOPUNKSDataSourcesDTO1;
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO3 = new OASCRYPTOPUNKSDataSourcesDTO();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO4 = crYPTOPUNKSDataSourcesDTO3;

        System.assert(crYPTOPUNKSDataSourcesDTO1.equals(crYPTOPUNKSDataSourcesDTO2));
        System.assert(crYPTOPUNKSDataSourcesDTO2.equals(crYPTOPUNKSDataSourcesDTO1));
        System.assert(crYPTOPUNKSDataSourcesDTO1.equals(crYPTOPUNKSDataSourcesDTO1));
        System.assert(crYPTOPUNKSDataSourcesDTO3.equals(crYPTOPUNKSDataSourcesDTO4));
        System.assert(crYPTOPUNKSDataSourcesDTO4.equals(crYPTOPUNKSDataSourcesDTO3));
        System.assert(crYPTOPUNKSDataSourcesDTO3.equals(crYPTOPUNKSDataSourcesDTO3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO1 = OASCRYPTOPUNKSDataSourcesDTO.getExample();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO2 = OASCRYPTOPUNKSDataSourcesDTO.getExample();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO3 = new OASCRYPTOPUNKSDataSourcesDTO();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO4 = new OASCRYPTOPUNKSDataSourcesDTO();

        System.assert(crYPTOPUNKSDataSourcesDTO1.equals(crYPTOPUNKSDataSourcesDTO2));
        System.assert(crYPTOPUNKSDataSourcesDTO2.equals(crYPTOPUNKSDataSourcesDTO1));
        System.assert(crYPTOPUNKSDataSourcesDTO3.equals(crYPTOPUNKSDataSourcesDTO4));
        System.assert(crYPTOPUNKSDataSourcesDTO4.equals(crYPTOPUNKSDataSourcesDTO3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO1 = OASCRYPTOPUNKSDataSourcesDTO.getExample();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO2 = new OASCRYPTOPUNKSDataSourcesDTO();

        System.assertEquals(false, crYPTOPUNKSDataSourcesDTO1.equals('foo'));
        System.assertEquals(false, crYPTOPUNKSDataSourcesDTO2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO1 = OASCRYPTOPUNKSDataSourcesDTO.getExample();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO2 = new OASCRYPTOPUNKSDataSourcesDTO();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO3;

        System.assertEquals(false, crYPTOPUNKSDataSourcesDTO1.equals(crYPTOPUNKSDataSourcesDTO3));
        System.assertEquals(false, crYPTOPUNKSDataSourcesDTO2.equals(crYPTOPUNKSDataSourcesDTO3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO1 = OASCRYPTOPUNKSDataSourcesDTO.getExample();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO2 = new OASCRYPTOPUNKSDataSourcesDTO();

        System.assertEquals(crYPTOPUNKSDataSourcesDTO1.hashCode(), crYPTOPUNKSDataSourcesDTO1.hashCode());
        System.assertEquals(crYPTOPUNKSDataSourcesDTO2.hashCode(), crYPTOPUNKSDataSourcesDTO2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO1 = OASCRYPTOPUNKSDataSourcesDTO.getExample();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO2 = OASCRYPTOPUNKSDataSourcesDTO.getExample();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO3 = new OASCRYPTOPUNKSDataSourcesDTO();
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO4 = new OASCRYPTOPUNKSDataSourcesDTO();

        System.assert(crYPTOPUNKSDataSourcesDTO1.equals(crYPTOPUNKSDataSourcesDTO2));
        System.assert(crYPTOPUNKSDataSourcesDTO3.equals(crYPTOPUNKSDataSourcesDTO4));
        System.assertEquals(crYPTOPUNKSDataSourcesDTO1.hashCode(), crYPTOPUNKSDataSourcesDTO2.hashCode());
        System.assertEquals(crYPTOPUNKSDataSourcesDTO3.hashCode(), crYPTOPUNKSDataSourcesDTO4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASCRYPTOPUNKSDataSourcesDTO crYPTOPUNKSDataSourcesDTO = new OASCRYPTOPUNKSDataSourcesDTO();
        Map<String, String> x-property-mappings = crYPTOPUNKSDataSourcesDTO.getx-property-mappings();
        System.assertEquals('entryTime', x-property-mappings.get('entry_time'));
        System.assertEquals('recvTime', x-property-mappings.get('recv_time'));
        System.assertEquals('blockNumber', x-property-mappings.get('block_number'));
        System.assertEquals('blockRange', x-property-mappings.get('block_range'));
        System.assertEquals('causalityRegion', x-property-mappings.get('causality_region'));
        System.assertEquals('manifestIdx', x-property-mappings.get('manifest_idx'));
        System.assertEquals('doneAt', x-property-mappings.get('done_at'));
    }
}
