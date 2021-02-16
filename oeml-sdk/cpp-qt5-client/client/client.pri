QT += network

HEADERS += \
# Models
    $${PWD}/OAIBalance.h \
    $${PWD}/OAIBalance_data.h \
    $${PWD}/OAIFills.h \
    $${PWD}/OAIMessage.h \
    $${PWD}/OAIOrdSide.h \
    $${PWD}/OAIOrdStatus.h \
    $${PWD}/OAIOrdType.h \
    $${PWD}/OAIOrderCancelAllRequest.h \
    $${PWD}/OAIOrderCancelSingleRequest.h \
    $${PWD}/OAIOrderExecutionReport.h \
    $${PWD}/OAIOrderExecutionReport_allOf.h \
    $${PWD}/OAIOrderNewSingleRequest.h \
    $${PWD}/OAIPosition.h \
    $${PWD}/OAIPosition_data.h \
    $${PWD}/OAISeverity.h \
    $${PWD}/OAITimeInForce.h \
    $${PWD}/OAIValidationError.h \
# APIs
    $${PWD}/OAIBalancesApi.h \
    $${PWD}/OAIOrdersApi.h \
    $${PWD}/OAIPositionsApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h \
    $${PWD}/OAIServerConfiguration.h \
    $${PWD}/OAIServerVariable.h 
    
SOURCES += \
# Models
    $${PWD}/OAIBalance.cpp \
    $${PWD}/OAIBalance_data.cpp \
    $${PWD}/OAIFills.cpp \
    $${PWD}/OAIMessage.cpp \
    $${PWD}/OAIOrdSide.cpp \
    $${PWD}/OAIOrdStatus.cpp \
    $${PWD}/OAIOrdType.cpp \
    $${PWD}/OAIOrderCancelAllRequest.cpp \
    $${PWD}/OAIOrderCancelSingleRequest.cpp \
    $${PWD}/OAIOrderExecutionReport.cpp \
    $${PWD}/OAIOrderExecutionReport_allOf.cpp \
    $${PWD}/OAIOrderNewSingleRequest.cpp \
    $${PWD}/OAIPosition.cpp \
    $${PWD}/OAIPosition_data.cpp \
    $${PWD}/OAISeverity.cpp \
    $${PWD}/OAITimeInForce.cpp \
    $${PWD}/OAIValidationError.cpp \
# APIs
    $${PWD}/OAIBalancesApi.cpp \
    $${PWD}/OAIOrdersApi.cpp \
    $${PWD}/OAIPositionsApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp

