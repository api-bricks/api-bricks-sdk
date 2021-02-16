# ValidationError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** |  | [optional] 
**Title** | Pointer to **string** |  | [optional] 
**Status** | Pointer to **float32** |  | [optional] 
**TraceId** | Pointer to **string** |  | [optional] 
**Errors** | Pointer to **string** |  | [optional] 

## Methods

### NewValidationError

`func NewValidationError() *ValidationError`

NewValidationError instantiates a new ValidationError object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewValidationErrorWithDefaults

`func NewValidationErrorWithDefaults() *ValidationError`

NewValidationErrorWithDefaults instantiates a new ValidationError object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ValidationError) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ValidationError) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ValidationError) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ValidationError) HasType() bool`

HasType returns a boolean if a field has been set.

### GetTitle

`func (o *ValidationError) GetTitle() string`

GetTitle returns the Title field if non-nil, zero value otherwise.

### GetTitleOk

`func (o *ValidationError) GetTitleOk() (*string, bool)`

GetTitleOk returns a tuple with the Title field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTitle

`func (o *ValidationError) SetTitle(v string)`

SetTitle sets Title field to given value.

### HasTitle

`func (o *ValidationError) HasTitle() bool`

HasTitle returns a boolean if a field has been set.

### GetStatus

`func (o *ValidationError) GetStatus() float32`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *ValidationError) GetStatusOk() (*float32, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *ValidationError) SetStatus(v float32)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *ValidationError) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetTraceId

`func (o *ValidationError) GetTraceId() string`

GetTraceId returns the TraceId field if non-nil, zero value otherwise.

### GetTraceIdOk

`func (o *ValidationError) GetTraceIdOk() (*string, bool)`

GetTraceIdOk returns a tuple with the TraceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTraceId

`func (o *ValidationError) SetTraceId(v string)`

SetTraceId sets TraceId field to given value.

### HasTraceId

`func (o *ValidationError) HasTraceId() bool`

HasTraceId returns a boolean if a field has been set.

### GetErrors

`func (o *ValidationError) GetErrors() string`

GetErrors returns the Errors field if non-nil, zero value otherwise.

### GetErrorsOk

`func (o *ValidationError) GetErrorsOk() (*string, bool)`

GetErrorsOk returns a tuple with the Errors field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetErrors

`func (o *ValidationError) SetErrors(v string)`

SetErrors sets Errors field to given value.

### HasErrors

`func (o *ValidationError) HasErrors() bool`

HasErrors returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


