#ifndef _CurveManager_H_
#define _CurveManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Curve.AccountDTO.h"
#include "Curve.AddLiquidityEventDTO.h"
#include "Curve.AdminFeeChangeLogDTO.h"
#include "Curve.AmplificationCoeffChangeLogDTO.h"
#include "Curve.CoinDTO.h"
#include "Curve.ContractDTO.h"
#include "Curve.ContractVersionDTO.h"
#include "Curve.DailyVolumeDTO.h"
#include "Curve.ExchangeDTO.h"
#include "Curve.FeeChangeLogDTO.h"
#include "Curve.GaugeDTO.h"
#include "Curve.GaugeDepositDTO.h"
#include "Curve.GaugeLiquidityDTO.h"
#include "Curve.GaugeTotalWeightDTO.h"
#include "Curve.GaugeTypeDTO.h"
#include "Curve.GaugeTypeWeightDTO.h"
#include "Curve.GaugeWeightDTO.h"
#include "Curve.GaugeWeightVoteDTO.h"
#include "Curve.GaugeWithdrawDTO.h"
#include "Curve.HourlyVolumeDTO.h"
#include "Curve.LpTokenDTO.h"
#include "Curve.PoolDTO.h"
#include "Curve.ProposalDTO.h"
#include "Curve.ProposalVoteDTO.h"
#include "Curve.RemoveLiquidityEventDTO.h"
#include "Curve.RemoveLiquidityOneEventDTO.h"
#include "Curve.SystemStateDTO.h"
#include "Curve.TokenDTO.h"
#include "Curve.TransferOwnershipEventDTO.h"
#include "Curve.UnderlyingCoinDTO.h"
#include "Curve.VotingAppDTO.h"
#include "Curve.WeeklyVolumeDTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Curve Curve
 * \ingroup Operations
 *  @{
 */
class CurveManager {
public:
	CurveManager();
	virtual ~CurveManager();

/*! \brief Accounts (current). *Synchronous*
 *
 * Gets accounts.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveAccounts (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.AccountDTO>, Error, void* )
	, void* userData);

/*! \brief Accounts (current). *Asynchronous*
 *
 * Gets accounts.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveAccounts (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.AccountDTO>, Error, void* )
	, void* userData);


/*! \brief AddLiquidityEvents (current). *Synchronous*
 *
 * Gets addLiquidityEvents.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveAddLiquidityEvents (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.AddLiquidityEventDTO>, Error, void* )
	, void* userData);

/*! \brief AddLiquidityEvents (current). *Asynchronous*
 *
 * Gets addLiquidityEvents.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveAddLiquidityEvents (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.AddLiquidityEventDTO>, Error, void* )
	, void* userData);


/*! \brief AdminFeeChangeLogs (current). *Synchronous*
 *
 * Gets adminFeeChangeLogs.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveAdminFeeChangeLogs (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.AdminFeeChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief AdminFeeChangeLogs (current). *Asynchronous*
 *
 * Gets adminFeeChangeLogs.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveAdminFeeChangeLogs (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.AdminFeeChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief AmplificationCoeffChangeLogs (current). *Synchronous*
 *
 * Gets amplificationCoeffChangeLogs.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveAmplificationCoeffChangeLogs (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.AmplificationCoeffChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief AmplificationCoeffChangeLogs (current). *Asynchronous*
 *
 * Gets amplificationCoeffChangeLogs.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveAmplificationCoeffChangeLogs (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.AmplificationCoeffChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief Coins (current). *Synchronous*
 *
 * Gets coins.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveCoins (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.CoinDTO>, Error, void* )
	, void* userData);

/*! \brief Coins (current). *Asynchronous*
 *
 * Gets coins.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveCoins (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.CoinDTO>, Error, void* )
	, void* userData);


/*! \brief ContractVersions (current). *Synchronous*
 *
 * Gets contractVersions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveContractVersions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.ContractVersionDTO>, Error, void* )
	, void* userData);

/*! \brief ContractVersions (current). *Asynchronous*
 *
 * Gets contractVersions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveContractVersions (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.ContractVersionDTO>, Error, void* )
	, void* userData);


/*! \brief Contracts (current). *Synchronous*
 *
 * Gets contracts.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveContracts (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.ContractDTO>, Error, void* )
	, void* userData);

/*! \brief Contracts (current). *Asynchronous*
 *
 * Gets contracts.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveContracts (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.ContractDTO>, Error, void* )
	, void* userData);


/*! \brief DailyVolumes (current). *Synchronous*
 *
 * Gets dailyVolumes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveDailyVolumes (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.DailyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief DailyVolumes (current). *Asynchronous*
 *
 * Gets dailyVolumes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveDailyVolumes (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.DailyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief Exchanges (current). *Synchronous*
 *
 * Gets exchanges.
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveExchanges (current)Sync(char * accessToken,
	std::string pool, 
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);

/*! \brief Exchanges (current). *Asynchronous*
 *
 * Gets exchanges.
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveExchanges (current)Async(char * accessToken,
	std::string pool, 
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);


/*! \brief FeeChangeLogs (current). *Synchronous*
 *
 * Gets feeChangeLogs.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveFeeChangeLogs (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.FeeChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief FeeChangeLogs (current). *Asynchronous*
 *
 * Gets feeChangeLogs.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveFeeChangeLogs (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.FeeChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeDeposits (current). *Synchronous*
 *
 * Gets gaugeDeposits.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeDeposits (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeDepositDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeDeposits (current). *Asynchronous*
 *
 * Gets gaugeDeposits.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeDeposits (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeDepositDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeLiquidities (current). *Synchronous*
 *
 * Gets gaugeLiquidities.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeLiquidities (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeLiquidityDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeLiquidities (current). *Asynchronous*
 *
 * Gets gaugeLiquidities.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeLiquidities (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeLiquidityDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeTotalWeights (current). *Synchronous*
 *
 * Gets gaugeTotalWeights.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeTotalWeights (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeTotalWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeTotalWeights (current). *Asynchronous*
 *
 * Gets gaugeTotalWeights.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeTotalWeights (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeTotalWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeTypeWeights (current). *Synchronous*
 *
 * Gets gaugeTypeWeights.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeTypeWeights (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeTypeWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeTypeWeights (current). *Asynchronous*
 *
 * Gets gaugeTypeWeights.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeTypeWeights (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeTypeWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeTypes (current). *Synchronous*
 *
 * Gets gaugeTypes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeTypes (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeTypeDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeTypes (current). *Asynchronous*
 *
 * Gets gaugeTypes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeTypes (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeTypeDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeWeightVotes (current). *Synchronous*
 *
 * Gets gaugeWeightVotes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeWeightVotes (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeWeightVoteDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeWeightVotes (current). *Asynchronous*
 *
 * Gets gaugeWeightVotes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeWeightVotes (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeWeightVoteDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeWeights (current). *Synchronous*
 *
 * Gets gaugeWeights.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeWeights (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeWeights (current). *Asynchronous*
 *
 * Gets gaugeWeights.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeWeights (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeWithdraws (current). *Synchronous*
 *
 * Gets gaugeWithdraws.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeWithdraws (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeWithdrawDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeWithdraws (current). *Asynchronous*
 *
 * Gets gaugeWithdraws.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGaugeWithdraws (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeWithdrawDTO>, Error, void* )
	, void* userData);


/*! \brief Gauges (current). *Synchronous*
 *
 * Gets gauges.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGauges (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeDTO>, Error, void* )
	, void* userData);

/*! \brief Gauges (current). *Asynchronous*
 *
 * Gets gauges.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGauges (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.GaugeDTO>, Error, void* )
	, void* userData);


/*! \brief Accounts (historical). *Synchronous*
 *
 * Gets accounts.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAccounts (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, 
	void(* handler)(std::list<Curve.AccountDTO>, Error, void* )
	, void* userData);

/*! \brief Accounts (historical). *Asynchronous*
 *
 * Gets accounts.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAccounts (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, 
	void(* handler)(std::list<Curve.AccountDTO>, Error, void* )
	, void* userData);


/*! \brief AddLiquidityEvents (historical). *Synchronous*
 *
 * Gets addLiquidityEvents.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAddLiquidityEvents (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.AddLiquidityEventDTO>, Error, void* )
	, void* userData);

/*! \brief AddLiquidityEvents (historical). *Asynchronous*
 *
 * Gets addLiquidityEvents.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAddLiquidityEvents (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.AddLiquidityEventDTO>, Error, void* )
	, void* userData);


/*! \brief AdminFeeChangeLogs (historical). *Synchronous*
 *
 * Gets adminFeeChangeLogs.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAdminFeeChangeLogs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.AdminFeeChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief AdminFeeChangeLogs (historical). *Asynchronous*
 *
 * Gets adminFeeChangeLogs.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAdminFeeChangeLogs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.AdminFeeChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief AmplificationCoeffChangeLogs (historical). *Synchronous*
 *
 * Gets amplificationCoeffChangeLogs.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAmplificationCoeffChangeLogs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.AmplificationCoeffChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief AmplificationCoeffChangeLogs (historical). *Asynchronous*
 *
 * Gets amplificationCoeffChangeLogs.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAmplificationCoeffChangeLogs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.AmplificationCoeffChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief Coins (historical). *Synchronous*
 *
 * Gets coins.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool_id)-(coin_index).
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetCoins (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.CoinDTO>, Error, void* )
	, void* userData);

/*! \brief Coins (historical). *Asynchronous*
 *
 * Gets coins.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: (pool_id)-(coin_index).
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetCoins (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.CoinDTO>, Error, void* )
	, void* userData);


/*! \brief ContractVersions (historical). *Synchronous*
 *
 * Gets contractVersions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContractVersions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, 
	void(* handler)(std::list<Curve.ContractVersionDTO>, Error, void* )
	, void* userData);

/*! \brief ContractVersions (historical). *Asynchronous*
 *
 * Gets contractVersions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContractVersions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, 
	void(* handler)(std::list<Curve.ContractVersionDTO>, Error, void* )
	, void* userData);


/*! \brief Contracts (historical). *Synchronous*
 *
 * Gets contracts.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContracts (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.ContractDTO>, Error, void* )
	, void* userData);

/*! \brief Contracts (historical). *Asynchronous*
 *
 * Gets contracts.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContracts (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.ContractDTO>, Error, void* )
	, void* userData);


/*! \brief DailyVolumes (historical). *Synchronous*
 *
 * Gets dailyVolumes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetDailyVolumes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.DailyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief DailyVolumes (historical). *Asynchronous*
 *
 * Gets dailyVolumes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetDailyVolumes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.DailyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief Exchanges (historical). *Synchronous*
 *
 * Gets exchanges.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetExchanges (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);

/*! \brief Exchanges (historical). *Asynchronous*
 *
 * Gets exchanges.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetExchanges (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);


/*! \brief FeeChangeLogs (historical). *Synchronous*
 *
 * Gets feeChangeLogs.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetFeeChangeLogs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.FeeChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief FeeChangeLogs (historical). *Asynchronous*
 *
 * Gets feeChangeLogs.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetFeeChangeLogs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.FeeChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeDeposits (historical). *Synchronous*
 *
 * Gets gaugeDeposits.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeDeposits (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeDepositDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeDeposits (historical). *Asynchronous*
 *
 * Gets gaugeDeposits.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeDeposits (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeDepositDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeLiquidities (historical). *Synchronous*
 *
 * Gets gaugeLiquidities.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param user 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeLiquidities (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Curve.GaugeLiquidityDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeLiquidities (historical). *Asynchronous*
 *
 * Gets gaugeLiquidities.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param user 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeLiquidities (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Curve.GaugeLiquidityDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeTotalWeights (historical). *Synchronous*
 *
 * Gets gaugeTotalWeights.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTotalWeights (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeTotalWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeTotalWeights (historical). *Asynchronous*
 *
 * Gets gaugeTotalWeights.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTotalWeights (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeTotalWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeTypeWeights (historical). *Synchronous*
 *
 * Gets gaugeTypeWeights.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTypeWeights (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeTypeWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeTypeWeights (historical). *Asynchronous*
 *
 * Gets gaugeTypeWeights.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTypeWeights (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeTypeWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeTypes (historical). *Synchronous*
 *
 * Gets gaugeTypes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param name 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTypes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string name, 
	void(* handler)(std::list<Curve.GaugeTypeDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeTypes (historical). *Asynchronous*
 *
 * Gets gaugeTypes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param name 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTypes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string name, 
	void(* handler)(std::list<Curve.GaugeTypeDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeWeightVotes (historical). *Synchronous*
 *
 * Gets gaugeWeightVotes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param user 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWeightVotes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Curve.GaugeWeightVoteDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeWeightVotes (historical). *Asynchronous*
 *
 * Gets gaugeWeightVotes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param user 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWeightVotes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, 
	void(* handler)(std::list<Curve.GaugeWeightVoteDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeWeights (historical). *Synchronous*
 *
 * Gets gaugeWeights.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWeights (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeWeights (historical). *Asynchronous*
 *
 * Gets gaugeWeights.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWeights (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeWithdraws (historical). *Synchronous*
 *
 * Gets gaugeWithdraws.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWithdraws (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeWithdrawDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeWithdraws (historical). *Asynchronous*
 *
 * Gets gaugeWithdraws.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWithdraws (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.GaugeWithdrawDTO>, Error, void* )
	, void* userData);


/*! \brief Gauges (historical). *Synchronous*
 *
 * Gets gauges.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGauges (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, std::string pool, 
	void(* handler)(std::list<Curve.GaugeDTO>, Error, void* )
	, void* userData);

/*! \brief Gauges (historical). *Asynchronous*
 *
 * Gets gauges.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGauges (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, std::string pool, 
	void(* handler)(std::list<Curve.GaugeDTO>, Error, void* )
	, void* userData);


/*! \brief HourlyVolumes (historical). *Synchronous*
 *
 * Gets hourlyVolumes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetHourlyVolumes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.HourlyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief HourlyVolumes (historical). *Asynchronous*
 *
 * Gets hourlyVolumes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetHourlyVolumes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.HourlyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief LpTokens (historical). *Synchronous*
 *
 * Gets lpTokens.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param name 
 * \param symbol 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetLpTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, std::string name, std::string symbol, std::string pool, 
	void(* handler)(std::list<Curve.LpTokenDTO>, Error, void* )
	, void* userData);

/*! \brief LpTokens (historical). *Asynchronous*
 *
 * Gets lpTokens.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param name 
 * \param symbol 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetLpTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, std::string name, std::string symbol, std::string pool, 
	void(* handler)(std::list<Curve.LpTokenDTO>, Error, void* )
	, void* userData);


/*! \brief Pools (historical). *Synchronous*
 *
 * Gets pools.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Pool address.
 * \param name Pool's human-readable name.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetPools (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string name, 
	void(* handler)(std::list<Curve.PoolDTO>, Error, void* )
	, void* userData);

/*! \brief Pools (historical). *Asynchronous*
 *
 * Gets pools.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Pool address.
 * \param name Pool's human-readable name.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetPools (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string name, 
	void(* handler)(std::list<Curve.PoolDTO>, Error, void* )
	, void* userData);


/*! \brief ProposalVotes (historical). *Synchronous*
 *
 * Gets proposalVotes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposalVotes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.ProposalVoteDTO>, Error, void* )
	, void* userData);

/*! \brief ProposalVotes (historical). *Asynchronous*
 *
 * Gets proposalVotes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposalVotes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.ProposalVoteDTO>, Error, void* )
	, void* userData);


/*! \brief Proposals (historical). *Synchronous*
 *
 * Gets proposals.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposals (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.ProposalDTO>, Error, void* )
	, void* userData);

/*! \brief Proposals (historical). *Asynchronous*
 *
 * Gets proposals.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposals (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.ProposalDTO>, Error, void* )
	, void* userData);


/*! \brief RemoveLiquidityEvents (historical). *Synchronous*
 *
 * Gets removeLiquidityEvents.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityEvents (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.RemoveLiquidityEventDTO>, Error, void* )
	, void* userData);

/*! \brief RemoveLiquidityEvents (historical). *Asynchronous*
 *
 * Gets removeLiquidityEvents.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityEvents (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.RemoveLiquidityEventDTO>, Error, void* )
	, void* userData);


/*! \brief RemoveLiquidityOneEvents (historical). *Synchronous*
 *
 * Gets removeLiquidityOneEvents.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityOneEvents (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.RemoveLiquidityOneEventDTO>, Error, void* )
	, void* userData);

/*! \brief RemoveLiquidityOneEvents (historical). *Asynchronous*
 *
 * Gets removeLiquidityOneEvents.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityOneEvents (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.RemoveLiquidityOneEventDTO>, Error, void* )
	, void* userData);


/*! \brief SystemStates (historical). *Synchronous*
 *
 * Gets systemStates.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Singleton ID, equals to 'current'.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetSystemStates (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.SystemStateDTO>, Error, void* )
	, void* userData);

/*! \brief SystemStates (historical). *Asynchronous*
 *
 * Gets systemStates.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Singleton ID, equals to 'current'.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetSystemStates (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Curve.SystemStateDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (historical). *Synchronous*
 *
 * Gets tokens.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param name 
 * \param symbol 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, std::string name, std::string symbol, 
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (historical). *Asynchronous*
 *
 * Gets tokens.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param address 
 * \param name 
 * \param symbol 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, std::string name, std::string symbol, 
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief TransferOwnershipEvents (historical). *Synchronous*
 *
 * Gets transferOwnershipEvents.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetTransferOwnershipEvents (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.TransferOwnershipEventDTO>, Error, void* )
	, void* userData);

/*! \brief TransferOwnershipEvents (historical). *Asynchronous*
 *
 * Gets transferOwnershipEvents.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetTransferOwnershipEvents (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.TransferOwnershipEventDTO>, Error, void* )
	, void* userData);


/*! \brief UnderlyingCoins (historical). *Synchronous*
 *
 * Gets underlyingCoins.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Equals to: (pool_id)-(coin_index).
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetUnderlyingCoins (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.UnderlyingCoinDTO>, Error, void* )
	, void* userData);

/*! \brief UnderlyingCoins (historical). *Asynchronous*
 *
 * Gets underlyingCoins.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Equals to: (pool_id)-(coin_index).
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetUnderlyingCoins (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.UnderlyingCoinDTO>, Error, void* )
	, void* userData);


/*! \brief VotingApps (historical). *Synchronous*
 *
 * Gets votingApps.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id App address.
 * \param address 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetVotingApps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, 
	void(* handler)(std::list<Curve.VotingAppDTO>, Error, void* )
	, void* userData);

/*! \brief VotingApps (historical). *Asynchronous*
 *
 * Gets votingApps.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id App address.
 * \param address 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetVotingApps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string address, 
	void(* handler)(std::list<Curve.VotingAppDTO>, Error, void* )
	, void* userData);


/*! \brief WeeklyVolumes (historical). *Synchronous*
 *
 * Gets weeklyVolumes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetWeeklyVolumes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.WeeklyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief WeeklyVolumes (historical). *Asynchronous*
 *
 * Gets weeklyVolumes.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetWeeklyVolumes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<Curve.WeeklyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief HourlyVolumes (current). *Synchronous*
 *
 * Gets hourlyVolumes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveHourlyVolumes (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.HourlyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief HourlyVolumes (current). *Asynchronous*
 *
 * Gets hourlyVolumes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveHourlyVolumes (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.HourlyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief LpTokens (current). *Synchronous*
 *
 * Gets lpTokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveLpTokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.LpTokenDTO>, Error, void* )
	, void* userData);

/*! \brief LpTokens (current). *Asynchronous*
 *
 * Gets lpTokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveLpTokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.LpTokenDTO>, Error, void* )
	, void* userData);


/*! \brief Pools (current). *Synchronous*
 *
 * Gets pools.
 * \param id Pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curvePools (current)Sync(char * accessToken,
	std::string id, 
	void(* handler)(std::list<Curve.PoolDTO>, Error, void* )
	, void* userData);

/*! \brief Pools (current). *Asynchronous*
 *
 * Gets pools.
 * \param id Pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curvePools (current)Async(char * accessToken,
	std::string id, 
	void(* handler)(std::list<Curve.PoolDTO>, Error, void* )
	, void* userData);


/*! \brief ProposalVotes (current). *Synchronous*
 *
 * Gets proposalVotes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveProposalVotes (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.ProposalVoteDTO>, Error, void* )
	, void* userData);

/*! \brief ProposalVotes (current). *Asynchronous*
 *
 * Gets proposalVotes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveProposalVotes (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.ProposalVoteDTO>, Error, void* )
	, void* userData);


/*! \brief Proposals (current). *Synchronous*
 *
 * Gets proposals.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveProposals (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.ProposalDTO>, Error, void* )
	, void* userData);

/*! \brief Proposals (current). *Asynchronous*
 *
 * Gets proposals.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveProposals (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.ProposalDTO>, Error, void* )
	, void* userData);


/*! \brief RemoveLiquidityEvents (current). *Synchronous*
 *
 * Gets removeLiquidityEvents.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveRemoveLiquidityEvents (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.RemoveLiquidityEventDTO>, Error, void* )
	, void* userData);

/*! \brief RemoveLiquidityEvents (current). *Asynchronous*
 *
 * Gets removeLiquidityEvents.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveRemoveLiquidityEvents (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.RemoveLiquidityEventDTO>, Error, void* )
	, void* userData);


/*! \brief RemoveLiquidityOneEvents (current). *Synchronous*
 *
 * Gets removeLiquidityOneEvents.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveRemoveLiquidityOneEvents (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.RemoveLiquidityOneEventDTO>, Error, void* )
	, void* userData);

/*! \brief RemoveLiquidityOneEvents (current). *Asynchronous*
 *
 * Gets removeLiquidityOneEvents.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveRemoveLiquidityOneEvents (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.RemoveLiquidityOneEventDTO>, Error, void* )
	, void* userData);


/*! \brief SystemStates (current). *Synchronous*
 *
 * Gets systemStates.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveSystemStates (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.SystemStateDTO>, Error, void* )
	, void* userData);

/*! \brief SystemStates (current). *Asynchronous*
 *
 * Gets systemStates.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveSystemStates (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.SystemStateDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current). *Synchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveTokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current). *Asynchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveTokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief TransferOwnershipEvents (current). *Synchronous*
 *
 * Gets transferOwnershipEvents.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveTransferOwnershipEvents (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.TransferOwnershipEventDTO>, Error, void* )
	, void* userData);

/*! \brief TransferOwnershipEvents (current). *Asynchronous*
 *
 * Gets transferOwnershipEvents.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveTransferOwnershipEvents (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.TransferOwnershipEventDTO>, Error, void* )
	, void* userData);


/*! \brief UnderlyingCoins (current). *Synchronous*
 *
 * Gets underlyingCoins.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveUnderlyingCoins (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.UnderlyingCoinDTO>, Error, void* )
	, void* userData);

/*! \brief UnderlyingCoins (current). *Asynchronous*
 *
 * Gets underlyingCoins.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveUnderlyingCoins (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.UnderlyingCoinDTO>, Error, void* )
	, void* userData);


/*! \brief VotingApps (current). *Synchronous*
 *
 * Gets votingApps.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveVotingApps (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.VotingAppDTO>, Error, void* )
	, void* userData);

/*! \brief VotingApps (current). *Asynchronous*
 *
 * Gets votingApps.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveVotingApps (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.VotingAppDTO>, Error, void* )
	, void* userData);


/*! \brief WeeklyVolumes (current). *Synchronous*
 *
 * Gets weeklyVolumes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveWeeklyVolumes (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.WeeklyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief WeeklyVolumes (current). *Asynchronous*
 *
 * Gets weeklyVolumes.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveWeeklyVolumes (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.WeeklyVolumeDTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* CurveManager_H_ */
