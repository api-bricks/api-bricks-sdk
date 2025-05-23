/*
 * REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * OASFinFeedAPISymbolModel
 */
public class OASFinFeedAPISymbolModel extends Map<String, oas_any_type_not_mapped> implements OAS.MappedProperties {
    /**
     * Get symbolId
     * @return symbolId
     */
    public String symbolId { get; set; }

    /**
     * Get exchangeId
     * @return exchangeId
     */
    public String exchangeId { get; set; }

    /**
     * Get securityCategory
     * @return securityCategory
     */
    public String securityCategory { get; private set; }

    /**
     * Get name
     * @return name
     */
    public String name { get; set; }

    /**
     * Get r_date
     * @return r_date
     */
    public String r_date { get; set; }

    /**
     * Get assetClass
     * @return assetClass
     */
    public String assetClass { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id' => 'symbolId',
        'exchange_id' => 'exchangeId',
        'security_category' => 'securityCategory',
        'date' => 'r_date',
        'asset_class' => 'assetClass'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id' => 'symbolId',
        'exchange_id' => 'exchangeId',
        'security_category' => 'securityCategory',
        'date' => 'r_date',
        'asset_class' => 'assetClass'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id' => 'symbolId',
        'exchange_id' => 'exchangeId',
        'security_category' => 'securityCategory',
        'date' => 'r_date',
        'asset_class' => 'assetClass'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id' => 'symbolId',
        'exchange_id' => 'exchangeId',
        'security_category' => 'securityCategory',
        'date' => 'r_date',
        'asset_class' => 'assetClass'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'symbol_id' => 'symbolId',
        'exchange_id' => 'exchangeId',
        'security_category' => 'securityCategory',
        'date' => 'r_date',
        'asset_class' => 'assetClass'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASFinFeedAPISymbolModel getExample() {
        OASFinFeedAPISymbolModel finFeedAPISymbolModel = new OASFinFeedAPISymbolModel();
          finFeedAPISymbolModel.symbolId = '';
          finFeedAPISymbolModel.exchangeId = '';
          finFeedAPISymbolModel.securityCategory = '';
          finFeedAPISymbolModel.name = '';
          finFeedAPISymbolModel.r_date = '';
          finFeedAPISymbolModel.assetClass = '';
        return finFeedAPISymbolModel;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASFinFeedAPISymbolModel) {           
            OASFinFeedAPISymbolModel finFeedAPISymbolModel = (OASFinFeedAPISymbolModel) obj;
            return this.symbolId == finFeedAPISymbolModel.symbolId
                && this.exchangeId == finFeedAPISymbolModel.exchangeId
                && this.securityCategory == finFeedAPISymbolModel.securityCategory
                && this.name == finFeedAPISymbolModel.name
                && this.r_date == finFeedAPISymbolModel.r_date
                && this.assetClass == finFeedAPISymbolModel.assetClass;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (symbolId == null ? 0 : System.hashCode(symbolId));
        hashCode = (17 * hashCode) + (exchangeId == null ? 0 : System.hashCode(exchangeId));
        hashCode = (17 * hashCode) + (securityCategory == null ? 0 : System.hashCode(securityCategory));
        hashCode = (17 * hashCode) + (name == null ? 0 : System.hashCode(name));
        hashCode = (17 * hashCode) + (r_date == null ? 0 : System.hashCode(r_date));
        hashCode = (17 * hashCode) + (assetClass == null ? 0 : System.hashCode(assetClass));
        return hashCode;
    }
}

