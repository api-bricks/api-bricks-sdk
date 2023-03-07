import localVarRequest from 'request';

export * from './cRYPTOPUNKSBidDTO';
export * from './cRYPTOPUNKSCollectionDTO';
export * from './cRYPTOPUNKSCollectionDailySnapshotDTO';
export * from './cRYPTOPUNKSDataSourcesDTO';
export * from './cRYPTOPUNKSItemDTO';
export * from './cRYPTOPUNKSMarketPlaceDTO';
export * from './cRYPTOPUNKSMarketplaceDailySnapshotDTO';
export * from './cRYPTOPUNKSTradeDTO';
export * from './cRYPTOPUNKSUserDTO';
export * from './cowOrderDTO';
export * from './cowSettlementDTO';
export * from './cowTokenDTO';
export * from './cowTradeDTO';
export * from './cowUserDTO';
export * from './curveAccountDTO';
export * from './curveAddLiquidityEventDTO';
export * from './curveAdminFeeChangeLogDTO';
export * from './curveAmplificationCoeffChangeLogDTO';
export * from './curveCoinDTO';
export * from './curveContractDTO';
export * from './curveContractVersionDTO';
export * from './curveDailyVolumeDTO';
export * from './curveExchangeDTO';
export * from './curveFeeChangeLogDTO';
export * from './curveGaugeDTO';
export * from './curveGaugeDepositDTO';
export * from './curveGaugeLiquidityDTO';
export * from './curveGaugeTotalWeightDTO';
export * from './curveGaugeTypeDTO';
export * from './curveGaugeTypeWeightDTO';
export * from './curveGaugeWeightDTO';
export * from './curveGaugeWeightVoteDTO';
export * from './curveGaugeWithdrawDTO';
export * from './curveHourlyVolumeDTO';
export * from './curveLpTokenDTO';
export * from './curvePoolDTO';
export * from './curveProposalDTO';
export * from './curveProposalVoteDTO';
export * from './curveRemoveLiquidityEventDTO';
export * from './curveRemoveLiquidityOneEventDTO';
export * from './curveSystemStateDTO';
export * from './curveTokenDTO';
export * from './curveTransferOwnershipEventDTO';
export * from './curveUnderlyingCoinDTO';
export * from './curveVotingAppDTO';
export * from './curveWeeklyVolumeDTO';
export * from './dexBatchDTO';
export * from './dexDepositDTO';
export * from './dexOrderDTO';
export * from './dexPriceDTO';
export * from './dexSolutionDTO';
export * from './dexStatsDTO';
export * from './dexTokenDTO';
export * from './dexTradeDTO';
export * from './dexUserDTO';
export * from './dexWithdrawDTO';
export * from './dexWithdrawRequestDTO';
export * from './numericsBigInteger';
export * from './sushiswapBundleDTO';
export * from './sushiswapBurnDTO';
export * from './sushiswapDayDataDTO';
export * from './sushiswapFactoryDTO';
export * from './sushiswapHourDataDTO';
export * from './sushiswapLiquidityPositionDTO';
export * from './sushiswapLiquidityPositionSnapshotDTO';
export * from './sushiswapMintDTO';
export * from './sushiswapPairDTO';
export * from './sushiswapPairDayDataDTO';
export * from './sushiswapPairHourDataDTO';
export * from './sushiswapSwapDTO';
export * from './sushiswapTokenDTO';
export * from './sushiswapTokenDayDataDTO';
export * from './sushiswapTransactionDTO';
export * from './sushiswapUserDTO';
export * from './transactionsETradeAggressiveSide';
export * from './uniswapV2BundleDTO';
export * from './uniswapV2BurnDTO';
export * from './uniswapV2LiquidityPositionDTO';
export * from './uniswapV2LiquidityPositionSnapshotDTO';
export * from './uniswapV2MintDTO';
export * from './uniswapV2PairDTO';
export * from './uniswapV2PairDayDataDTO';
export * from './uniswapV2PairHourDataDTO';
export * from './uniswapV2SwapDTO';
export * from './uniswapV2TokenDTO';
export * from './uniswapV2TokenDayDataDTO';
export * from './uniswapV2TransactionDTO';
export * from './uniswapV2UniswapDayDataDTO';
export * from './uniswapV2UniswapFactoryDTO';
export * from './uniswapV2UserDTO';
export * from './uniswapV3BundleDTO';
export * from './uniswapV3BurnDTO';
export * from './uniswapV3FactoryDTO';
export * from './uniswapV3MintDTO';
export * from './uniswapV3PoolDTO';
export * from './uniswapV3PoolDayDataDTO';
export * from './uniswapV3PoolHourDataDTO';
export * from './uniswapV3PositionDTO';
export * from './uniswapV3PositionSnapshotDTO';
export * from './uniswapV3SwapDTO';
export * from './uniswapV3TickDTO';
export * from './uniswapV3TickDayDataDTO';
export * from './uniswapV3TokenDTO';
export * from './uniswapV3TokenHourDataDTO';
export * from './uniswapV3TokenV3DayDataDTO';
export * from './uniswapV3TransactionDTO';
export * from './uniswapV3UniswapDayDataDTO';

import * as fs from 'fs';

export interface RequestDetailedFile {
    value: Buffer;
    options?: {
        filename?: string;
        contentType?: string;
    }
}

export type RequestFile = string | Buffer | fs.ReadStream | RequestDetailedFile;


import { CRYPTOPUNKSBidDTO } from './cRYPTOPUNKSBidDTO';
import { CRYPTOPUNKSCollectionDTO } from './cRYPTOPUNKSCollectionDTO';
import { CRYPTOPUNKSCollectionDailySnapshotDTO } from './cRYPTOPUNKSCollectionDailySnapshotDTO';
import { CRYPTOPUNKSDataSourcesDTO } from './cRYPTOPUNKSDataSourcesDTO';
import { CRYPTOPUNKSItemDTO } from './cRYPTOPUNKSItemDTO';
import { CRYPTOPUNKSMarketPlaceDTO } from './cRYPTOPUNKSMarketPlaceDTO';
import { CRYPTOPUNKSMarketplaceDailySnapshotDTO } from './cRYPTOPUNKSMarketplaceDailySnapshotDTO';
import { CRYPTOPUNKSTradeDTO } from './cRYPTOPUNKSTradeDTO';
import { CRYPTOPUNKSUserDTO } from './cRYPTOPUNKSUserDTO';
import { CowOrderDTO } from './cowOrderDTO';
import { CowSettlementDTO } from './cowSettlementDTO';
import { CowTokenDTO } from './cowTokenDTO';
import { CowTradeDTO } from './cowTradeDTO';
import { CowUserDTO } from './cowUserDTO';
import { CurveAccountDTO } from './curveAccountDTO';
import { CurveAddLiquidityEventDTO } from './curveAddLiquidityEventDTO';
import { CurveAdminFeeChangeLogDTO } from './curveAdminFeeChangeLogDTO';
import { CurveAmplificationCoeffChangeLogDTO } from './curveAmplificationCoeffChangeLogDTO';
import { CurveCoinDTO } from './curveCoinDTO';
import { CurveContractDTO } from './curveContractDTO';
import { CurveContractVersionDTO } from './curveContractVersionDTO';
import { CurveDailyVolumeDTO } from './curveDailyVolumeDTO';
import { CurveExchangeDTO } from './curveExchangeDTO';
import { CurveFeeChangeLogDTO } from './curveFeeChangeLogDTO';
import { CurveGaugeDTO } from './curveGaugeDTO';
import { CurveGaugeDepositDTO } from './curveGaugeDepositDTO';
import { CurveGaugeLiquidityDTO } from './curveGaugeLiquidityDTO';
import { CurveGaugeTotalWeightDTO } from './curveGaugeTotalWeightDTO';
import { CurveGaugeTypeDTO } from './curveGaugeTypeDTO';
import { CurveGaugeTypeWeightDTO } from './curveGaugeTypeWeightDTO';
import { CurveGaugeWeightDTO } from './curveGaugeWeightDTO';
import { CurveGaugeWeightVoteDTO } from './curveGaugeWeightVoteDTO';
import { CurveGaugeWithdrawDTO } from './curveGaugeWithdrawDTO';
import { CurveHourlyVolumeDTO } from './curveHourlyVolumeDTO';
import { CurveLpTokenDTO } from './curveLpTokenDTO';
import { CurvePoolDTO } from './curvePoolDTO';
import { CurveProposalDTO } from './curveProposalDTO';
import { CurveProposalVoteDTO } from './curveProposalVoteDTO';
import { CurveRemoveLiquidityEventDTO } from './curveRemoveLiquidityEventDTO';
import { CurveRemoveLiquidityOneEventDTO } from './curveRemoveLiquidityOneEventDTO';
import { CurveSystemStateDTO } from './curveSystemStateDTO';
import { CurveTokenDTO } from './curveTokenDTO';
import { CurveTransferOwnershipEventDTO } from './curveTransferOwnershipEventDTO';
import { CurveUnderlyingCoinDTO } from './curveUnderlyingCoinDTO';
import { CurveVotingAppDTO } from './curveVotingAppDTO';
import { CurveWeeklyVolumeDTO } from './curveWeeklyVolumeDTO';
import { DexBatchDTO } from './dexBatchDTO';
import { DexDepositDTO } from './dexDepositDTO';
import { DexOrderDTO } from './dexOrderDTO';
import { DexPriceDTO } from './dexPriceDTO';
import { DexSolutionDTO } from './dexSolutionDTO';
import { DexStatsDTO } from './dexStatsDTO';
import { DexTokenDTO } from './dexTokenDTO';
import { DexTradeDTO } from './dexTradeDTO';
import { DexUserDTO } from './dexUserDTO';
import { DexWithdrawDTO } from './dexWithdrawDTO';
import { DexWithdrawRequestDTO } from './dexWithdrawRequestDTO';
import { NumericsBigInteger } from './numericsBigInteger';
import { SushiswapBundleDTO } from './sushiswapBundleDTO';
import { SushiswapBurnDTO } from './sushiswapBurnDTO';
import { SushiswapDayDataDTO } from './sushiswapDayDataDTO';
import { SushiswapFactoryDTO } from './sushiswapFactoryDTO';
import { SushiswapHourDataDTO } from './sushiswapHourDataDTO';
import { SushiswapLiquidityPositionDTO } from './sushiswapLiquidityPositionDTO';
import { SushiswapLiquidityPositionSnapshotDTO } from './sushiswapLiquidityPositionSnapshotDTO';
import { SushiswapMintDTO } from './sushiswapMintDTO';
import { SushiswapPairDTO } from './sushiswapPairDTO';
import { SushiswapPairDayDataDTO } from './sushiswapPairDayDataDTO';
import { SushiswapPairHourDataDTO } from './sushiswapPairHourDataDTO';
import { SushiswapSwapDTO } from './sushiswapSwapDTO';
import { SushiswapTokenDTO } from './sushiswapTokenDTO';
import { SushiswapTokenDayDataDTO } from './sushiswapTokenDayDataDTO';
import { SushiswapTransactionDTO } from './sushiswapTransactionDTO';
import { SushiswapUserDTO } from './sushiswapUserDTO';
import { TransactionsETradeAggressiveSide } from './transactionsETradeAggressiveSide';
import { UniswapV2BundleDTO } from './uniswapV2BundleDTO';
import { UniswapV2BurnDTO } from './uniswapV2BurnDTO';
import { UniswapV2LiquidityPositionDTO } from './uniswapV2LiquidityPositionDTO';
import { UniswapV2LiquidityPositionSnapshotDTO } from './uniswapV2LiquidityPositionSnapshotDTO';
import { UniswapV2MintDTO } from './uniswapV2MintDTO';
import { UniswapV2PairDTO } from './uniswapV2PairDTO';
import { UniswapV2PairDayDataDTO } from './uniswapV2PairDayDataDTO';
import { UniswapV2PairHourDataDTO } from './uniswapV2PairHourDataDTO';
import { UniswapV2SwapDTO } from './uniswapV2SwapDTO';
import { UniswapV2TokenDTO } from './uniswapV2TokenDTO';
import { UniswapV2TokenDayDataDTO } from './uniswapV2TokenDayDataDTO';
import { UniswapV2TransactionDTO } from './uniswapV2TransactionDTO';
import { UniswapV2UniswapDayDataDTO } from './uniswapV2UniswapDayDataDTO';
import { UniswapV2UniswapFactoryDTO } from './uniswapV2UniswapFactoryDTO';
import { UniswapV2UserDTO } from './uniswapV2UserDTO';
import { UniswapV3BundleDTO } from './uniswapV3BundleDTO';
import { UniswapV3BurnDTO } from './uniswapV3BurnDTO';
import { UniswapV3FactoryDTO } from './uniswapV3FactoryDTO';
import { UniswapV3MintDTO } from './uniswapV3MintDTO';
import { UniswapV3PoolDTO } from './uniswapV3PoolDTO';
import { UniswapV3PoolDayDataDTO } from './uniswapV3PoolDayDataDTO';
import { UniswapV3PoolHourDataDTO } from './uniswapV3PoolHourDataDTO';
import { UniswapV3PositionDTO } from './uniswapV3PositionDTO';
import { UniswapV3PositionSnapshotDTO } from './uniswapV3PositionSnapshotDTO';
import { UniswapV3SwapDTO } from './uniswapV3SwapDTO';
import { UniswapV3TickDTO } from './uniswapV3TickDTO';
import { UniswapV3TickDayDataDTO } from './uniswapV3TickDayDataDTO';
import { UniswapV3TokenDTO } from './uniswapV3TokenDTO';
import { UniswapV3TokenHourDataDTO } from './uniswapV3TokenHourDataDTO';
import { UniswapV3TokenV3DayDataDTO } from './uniswapV3TokenV3DayDataDTO';
import { UniswapV3TransactionDTO } from './uniswapV3TransactionDTO';
import { UniswapV3UniswapDayDataDTO } from './uniswapV3UniswapDayDataDTO';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

let enumsMap: {[index: string]: any} = {
        "TransactionsETradeAggressiveSide": TransactionsETradeAggressiveSide,
}

let typeMap: {[index: string]: any} = {
    "CRYPTOPUNKSBidDTO": CRYPTOPUNKSBidDTO,
    "CRYPTOPUNKSCollectionDTO": CRYPTOPUNKSCollectionDTO,
    "CRYPTOPUNKSCollectionDailySnapshotDTO": CRYPTOPUNKSCollectionDailySnapshotDTO,
    "CRYPTOPUNKSDataSourcesDTO": CRYPTOPUNKSDataSourcesDTO,
    "CRYPTOPUNKSItemDTO": CRYPTOPUNKSItemDTO,
    "CRYPTOPUNKSMarketPlaceDTO": CRYPTOPUNKSMarketPlaceDTO,
    "CRYPTOPUNKSMarketplaceDailySnapshotDTO": CRYPTOPUNKSMarketplaceDailySnapshotDTO,
    "CRYPTOPUNKSTradeDTO": CRYPTOPUNKSTradeDTO,
    "CRYPTOPUNKSUserDTO": CRYPTOPUNKSUserDTO,
    "CowOrderDTO": CowOrderDTO,
    "CowSettlementDTO": CowSettlementDTO,
    "CowTokenDTO": CowTokenDTO,
    "CowTradeDTO": CowTradeDTO,
    "CowUserDTO": CowUserDTO,
    "CurveAccountDTO": CurveAccountDTO,
    "CurveAddLiquidityEventDTO": CurveAddLiquidityEventDTO,
    "CurveAdminFeeChangeLogDTO": CurveAdminFeeChangeLogDTO,
    "CurveAmplificationCoeffChangeLogDTO": CurveAmplificationCoeffChangeLogDTO,
    "CurveCoinDTO": CurveCoinDTO,
    "CurveContractDTO": CurveContractDTO,
    "CurveContractVersionDTO": CurveContractVersionDTO,
    "CurveDailyVolumeDTO": CurveDailyVolumeDTO,
    "CurveExchangeDTO": CurveExchangeDTO,
    "CurveFeeChangeLogDTO": CurveFeeChangeLogDTO,
    "CurveGaugeDTO": CurveGaugeDTO,
    "CurveGaugeDepositDTO": CurveGaugeDepositDTO,
    "CurveGaugeLiquidityDTO": CurveGaugeLiquidityDTO,
    "CurveGaugeTotalWeightDTO": CurveGaugeTotalWeightDTO,
    "CurveGaugeTypeDTO": CurveGaugeTypeDTO,
    "CurveGaugeTypeWeightDTO": CurveGaugeTypeWeightDTO,
    "CurveGaugeWeightDTO": CurveGaugeWeightDTO,
    "CurveGaugeWeightVoteDTO": CurveGaugeWeightVoteDTO,
    "CurveGaugeWithdrawDTO": CurveGaugeWithdrawDTO,
    "CurveHourlyVolumeDTO": CurveHourlyVolumeDTO,
    "CurveLpTokenDTO": CurveLpTokenDTO,
    "CurvePoolDTO": CurvePoolDTO,
    "CurveProposalDTO": CurveProposalDTO,
    "CurveProposalVoteDTO": CurveProposalVoteDTO,
    "CurveRemoveLiquidityEventDTO": CurveRemoveLiquidityEventDTO,
    "CurveRemoveLiquidityOneEventDTO": CurveRemoveLiquidityOneEventDTO,
    "CurveSystemStateDTO": CurveSystemStateDTO,
    "CurveTokenDTO": CurveTokenDTO,
    "CurveTransferOwnershipEventDTO": CurveTransferOwnershipEventDTO,
    "CurveUnderlyingCoinDTO": CurveUnderlyingCoinDTO,
    "CurveVotingAppDTO": CurveVotingAppDTO,
    "CurveWeeklyVolumeDTO": CurveWeeklyVolumeDTO,
    "DexBatchDTO": DexBatchDTO,
    "DexDepositDTO": DexDepositDTO,
    "DexOrderDTO": DexOrderDTO,
    "DexPriceDTO": DexPriceDTO,
    "DexSolutionDTO": DexSolutionDTO,
    "DexStatsDTO": DexStatsDTO,
    "DexTokenDTO": DexTokenDTO,
    "DexTradeDTO": DexTradeDTO,
    "DexUserDTO": DexUserDTO,
    "DexWithdrawDTO": DexWithdrawDTO,
    "DexWithdrawRequestDTO": DexWithdrawRequestDTO,
    "NumericsBigInteger": NumericsBigInteger,
    "SushiswapBundleDTO": SushiswapBundleDTO,
    "SushiswapBurnDTO": SushiswapBurnDTO,
    "SushiswapDayDataDTO": SushiswapDayDataDTO,
    "SushiswapFactoryDTO": SushiswapFactoryDTO,
    "SushiswapHourDataDTO": SushiswapHourDataDTO,
    "SushiswapLiquidityPositionDTO": SushiswapLiquidityPositionDTO,
    "SushiswapLiquidityPositionSnapshotDTO": SushiswapLiquidityPositionSnapshotDTO,
    "SushiswapMintDTO": SushiswapMintDTO,
    "SushiswapPairDTO": SushiswapPairDTO,
    "SushiswapPairDayDataDTO": SushiswapPairDayDataDTO,
    "SushiswapPairHourDataDTO": SushiswapPairHourDataDTO,
    "SushiswapSwapDTO": SushiswapSwapDTO,
    "SushiswapTokenDTO": SushiswapTokenDTO,
    "SushiswapTokenDayDataDTO": SushiswapTokenDayDataDTO,
    "SushiswapTransactionDTO": SushiswapTransactionDTO,
    "SushiswapUserDTO": SushiswapUserDTO,
    "UniswapV2BundleDTO": UniswapV2BundleDTO,
    "UniswapV2BurnDTO": UniswapV2BurnDTO,
    "UniswapV2LiquidityPositionDTO": UniswapV2LiquidityPositionDTO,
    "UniswapV2LiquidityPositionSnapshotDTO": UniswapV2LiquidityPositionSnapshotDTO,
    "UniswapV2MintDTO": UniswapV2MintDTO,
    "UniswapV2PairDTO": UniswapV2PairDTO,
    "UniswapV2PairDayDataDTO": UniswapV2PairDayDataDTO,
    "UniswapV2PairHourDataDTO": UniswapV2PairHourDataDTO,
    "UniswapV2SwapDTO": UniswapV2SwapDTO,
    "UniswapV2TokenDTO": UniswapV2TokenDTO,
    "UniswapV2TokenDayDataDTO": UniswapV2TokenDayDataDTO,
    "UniswapV2TransactionDTO": UniswapV2TransactionDTO,
    "UniswapV2UniswapDayDataDTO": UniswapV2UniswapDayDataDTO,
    "UniswapV2UniswapFactoryDTO": UniswapV2UniswapFactoryDTO,
    "UniswapV2UserDTO": UniswapV2UserDTO,
    "UniswapV3BundleDTO": UniswapV3BundleDTO,
    "UniswapV3BurnDTO": UniswapV3BurnDTO,
    "UniswapV3FactoryDTO": UniswapV3FactoryDTO,
    "UniswapV3MintDTO": UniswapV3MintDTO,
    "UniswapV3PoolDTO": UniswapV3PoolDTO,
    "UniswapV3PoolDayDataDTO": UniswapV3PoolDayDataDTO,
    "UniswapV3PoolHourDataDTO": UniswapV3PoolHourDataDTO,
    "UniswapV3PositionDTO": UniswapV3PositionDTO,
    "UniswapV3PositionSnapshotDTO": UniswapV3PositionSnapshotDTO,
    "UniswapV3SwapDTO": UniswapV3SwapDTO,
    "UniswapV3TickDTO": UniswapV3TickDTO,
    "UniswapV3TickDayDataDTO": UniswapV3TickDayDataDTO,
    "UniswapV3TokenDTO": UniswapV3TokenDTO,
    "UniswapV3TokenHourDataDTO": UniswapV3TokenHourDataDTO,
    "UniswapV3TokenV3DayDataDTO": UniswapV3TokenV3DayDataDTO,
    "UniswapV3TransactionDTO": UniswapV3TransactionDTO,
    "UniswapV3UniswapDayDataDTO": UniswapV3UniswapDayDataDTO,
}

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap[expectedType]) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    if(typeMap[discriminatorType]){
                        return discriminatorType; // use the type given in the discriminator
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string) {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.serialize(datum, subType));
            }
            return transformedData;
        } else if (type === "Date") {
            return data.toISOString();
        } else {
            if (enumsMap[type]) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string) {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.deserialize(datum, subType));
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap[type]) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type);
            }
            return instance;
        }
    }
}

export interface Authentication {
    /**
    * Apply authentication settings to header and query params.
    */
    applyToRequest(requestOptions: localVarRequest.Options): Promise<void> | void;
}

export class HttpBasicAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        requestOptions.auth = {
            username: this.username, password: this.password
        }
    }
}

export class HttpBearerAuth implements Authentication {
    public accessToken: string | (() => string) = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            const accessToken = typeof this.accessToken === 'function'
                            ? this.accessToken()
                            : this.accessToken;
            requestOptions.headers["Authorization"] = "Bearer " + accessToken;
        }
    }
}

export class ApiKeyAuth implements Authentication {
    public apiKey: string = '';

    constructor(private location: string, private paramName: string) {
    }

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (this.location == "query") {
            (<any>requestOptions.qs)[this.paramName] = this.apiKey;
        } else if (this.location == "header" && requestOptions && requestOptions.headers) {
            requestOptions.headers[this.paramName] = this.apiKey;
        } else if (this.location == 'cookie' && requestOptions && requestOptions.headers) {
            if (requestOptions.headers['Cookie']) {
                requestOptions.headers['Cookie'] += '; ' + this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
            else {
                requestOptions.headers['Cookie'] = this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
        }
    }
}

export class OAuth implements Authentication {
    public accessToken: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            requestOptions.headers["Authorization"] = "Bearer " + this.accessToken;
        }
    }
}

export class VoidAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(_: localVarRequest.Options): void {
        // Do nothing
    }
}

export type Interceptor = (requestOptions: localVarRequest.Options) => (Promise<void> | void);
