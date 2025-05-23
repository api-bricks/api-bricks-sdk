/**
 * REST API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: v1
 * Contact: support@apibricks.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 7.13.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "CppRestOpenAPIClient/model/DTO_FilingExtractResultDto.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

DTO_FilingExtractResultDto::DTO_FilingExtractResultDto()
{
    m_Accession_number = utility::conversions::to_string_t("");
    m_Accession_numberIsSet = false;
    m_Form_type = utility::conversions::to_string_t("");
    m_Form_typeIsSet = false;
    m_ItemsIsSet = false;
}

DTO_FilingExtractResultDto::~DTO_FilingExtractResultDto()
{
}

void DTO_FilingExtractResultDto::validate()
{
    // TODO: implement validation
}

web::json::value DTO_FilingExtractResultDto::toJson() const
{
    web::json::value val = web::json::value::object();
    if(m_Accession_numberIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("accession_number"))] = ModelBase::toJson(m_Accession_number);
    }
    if(m_Form_typeIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("form_type"))] = ModelBase::toJson(m_Form_type);
    }
    if(m_ItemsIsSet)
    {   
        
        val[utility::conversions::to_string_t(U("items"))] = ModelBase::toJson(m_Items);
    }

    return val;
}

bool DTO_FilingExtractResultDto::fromJson(const web::json::value& val)
{
    bool ok = true;
    if(val.has_field(utility::conversions::to_string_t(U("accession_number"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("accession_number")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setAccessionNumber;
            ok &= ModelBase::fromJson(fieldValue, refVal_setAccessionNumber);
            setAccessionNumber(refVal_setAccessionNumber);
            
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("form_type"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("form_type")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setFormType;
            ok &= ModelBase::fromJson(fieldValue, refVal_setFormType);
            setFormType(refVal_setFormType);
            
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("items"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("items")));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<DTO_FilingItemDto>> refVal_setItems;
            ok &= ModelBase::fromJson(fieldValue, refVal_setItems);
            setItems(refVal_setItems);
            
        }
    }
    return ok;
}

void DTO_FilingExtractResultDto::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_Accession_numberIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("accession_number")), m_Accession_number));
    }
    if(m_Form_typeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("form_type")), m_Form_type));
    }
    if(m_ItemsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("items")), m_Items));
    }
}

bool DTO_FilingExtractResultDto::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("accession_number"))))
    {
        utility::string_t refVal_setAccessionNumber;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("accession_number"))), refVal_setAccessionNumber );
        setAccessionNumber(refVal_setAccessionNumber);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("form_type"))))
    {
        utility::string_t refVal_setFormType;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("form_type"))), refVal_setFormType );
        setFormType(refVal_setFormType);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("items"))))
    {
        std::vector<std::shared_ptr<DTO_FilingItemDto>> refVal_setItems;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("items"))), refVal_setItems );
        setItems(refVal_setItems);
    }
    return ok;
}


utility::string_t DTO_FilingExtractResultDto::getAccessionNumber() const
{
    return m_Accession_number;
}


void DTO_FilingExtractResultDto::setAccessionNumber(const utility::string_t& value)
{
    m_Accession_number = value;
    m_Accession_numberIsSet = true;
}

bool DTO_FilingExtractResultDto::accessionNumberIsSet() const
{
    return m_Accession_numberIsSet;
}

void DTO_FilingExtractResultDto::unsetAccession_number()
{
    m_Accession_numberIsSet = false;
}
utility::string_t DTO_FilingExtractResultDto::getFormType() const
{
    return m_Form_type;
}


void DTO_FilingExtractResultDto::setFormType(const utility::string_t& value)
{
    m_Form_type = value;
    m_Form_typeIsSet = true;
}

bool DTO_FilingExtractResultDto::formTypeIsSet() const
{
    return m_Form_typeIsSet;
}

void DTO_FilingExtractResultDto::unsetForm_type()
{
    m_Form_typeIsSet = false;
}
std::vector<std::shared_ptr<DTO_FilingItemDto>> DTO_FilingExtractResultDto::getItems() const
{
    return m_Items;
}


void DTO_FilingExtractResultDto::setItems(const std::vector<std::shared_ptr<DTO_FilingItemDto>>& value)
{
    m_Items = value;
    m_ItemsIsSet = true;
}

bool DTO_FilingExtractResultDto::itemsIsSet() const
{
    return m_ItemsIsSet;
}

void DTO_FilingExtractResultDto::unsetItems()
{
    m_ItemsIsSet = false;
}

}
}
}
}


