<?php

class CoinAPI
{
    public function $locale;

    var $ApiKey;
    function __construct($Key, $locale="en")
    {
        $this->ApiKey = $Key;
        $this->locale = $locale;
    }
    
    // Metadata
    function GetExchanges()
    {
        $url = 'https://rest.coinapi.io/v1/exchanges';
        return $this->CurlRequest($url);
    }
    function GetAssets()
    {
        $url = 'https://rest.coinapi.io/v1/assets';
        return $this->CurlRequest($url);
    }
    function GetSymbols()
    {
        $url = 'https://rest.coinapi.io/v1/symbols';
        return $this->CurlRequest($url);
    }
    
    // Exchange Rates
    function GetExchangeRate($asset_id_base, $asset_id_qoute, $time = null)
    {
        if ($asset_id_base == null)
        {
            throw new InvalidArgumentException("asset_id_base is required");
        }
        if ($asset_id_qoute == null)
        {
            throw new InvalidArgumentException("asset_id_qoute is required");
        }
        if ($time != null)
        {
            $time = $this->FormatDateTime($time);
            $url  = 'https://rest.coinapi.io/v1/exchangerate/' . $asset_id_base . '/' . $asset_id_qoute . '?time=' . $time;
        }
        else
        {
            $url = 'https://rest.coinapi.io/v1/exchangerate/' . $asset_id_base . '/' . $asset_id_qoute;
        }
        return $this->CurlRequest($url);
    }
    function GetExchangeRates($asset_id_base)
    {
        if ($asset_id_base == null)
        {
            throw new InvalidArgumentException("asset_id_base is required");
        }
        $url = 'https://rest.coinapi.io/v1/exchangerate/' . $asset_id_base;
        return $this->CurlRequest($url);
    }
    
    // OHCLV
    function GetPeriods()
    {
        $url = 'https://rest.coinapi.io/v1/ohlcv/periods';
        return $this->CurlRequest($url);
    }
    function GetOHLCVLatest($symbol_id, $period_id, $limit = null)
    {
        if ($symbol_id == null)
        {
            throw new InvalidArgumentException("symbol_id is required");
        }
        if ($period_id == null)
        {
            throw new InvalidArgumentException("period_id is required");
        }
        if ($limit == null)
        {
            $url = 'https://rest.coinapi.io/v1/ohlcv/' . $symbol_id . '/latest?period_id=' . $period_id;
        }
        else
        {
            $url = 'https://rest.coinapi.io/v1/ohlcv/' . $symbol_id . '/latest?period_id=' . $period_id . '&limit=' . $limit;
        }
        return $this->CurlRequest($url);
    }
    function GetOHLCVHistory($symbol_id, $period_id, $time_start, $time_end = null, $limit = null)
    {
        if ($symbol_id == null)
        {
            throw new InvalidArgumentException("symbol_id is required");
        }
        if ($period_id == null)
        {
            throw new InvalidArgumentException("period_id is required");
        }
        if ($time_start == null)
        {
            throw new InvalidArgumentException("time_start is required");
        }
        $time_start = $this->FormatDateTime($time_start);
        if ($time_end == null && $limit != null)
        {
            $url = 'https://rest.coinapi.io/v1/ohlcv/' . $symbol_id . '/history?period_id=' . $period_id . '&time_start=' . $time_start . '&limit=' . $limit;
        }
        else if ($limit == null && $time_end != null)
        {
            $time_end = $this->FormatDateTime($time_end);
            $url      = 'https://rest.coinapi.io/v1/ohlcv/' . $symbol_id . '/history?period_id=' . $period_id . '&time_start=' . $time_start . '&time_end=' . $time_end;
            //$limit = '100';
        }
        else if ($limit == null && $time_end == null)
        {
            $url = 'https://rest.coinapi.io/v1/ohlcv/' . $symbol_id . '/history?period_id=' . $period_id . '&time_start=' . $time_start;
        }
        else
        {
            $time_end = $this->FormatDateTime($time_end);
            $url      = 'https://rest.coinapi.io/v1/ohlcv/' . $symbol_id . '/history?period_id=' . $period_id . '&time_start=' . $time_start . '&time_end=' . $time_end . '&limit=' . $limit;
        }
        return $this->CurlRequest($url);
    }
    
    // Trades
    function GetTradesLatest($symbol_id = null, $limit = null)
    {
        if ($symbol_id == null && $limit == null)
        {
            $url = 'https://rest.coinapi.io/v1/trades/latest';
        }
        else if ($symbol_id == null && $limit != null)
        {
            $url = 'https://rest.coinapi.io/v1/trades/latest?limit=' . $limit;
        }
        else if ($limit == null && $symbol_id != null)
        {
            $url = 'https://rest.coinapi.io/v1/trades/' . $symbol_id . '/latest';
        }
        else
        {
            $url = 'https://rest.coinapi.io/v1/trades/' . $symbol_id . '/latest?limit=' . $limit;
        }
        return $this->CurlRequest($url);
    }
    function GetTradesHistory($symbol_id, $time_start, $time_end = null, $limit = null)
    {
        if ($symbol_id == null)
        {
            throw new InvalidArgumentException("symbol_id is required");
        }
        if ($time_start == null)
        {
            throw new InvalidArgumentException("time_start is required");
        }
        $time_start = $this->FormatDateTime($time_start);
        if ($time_end == null && $limit != null)
        {
            $url = 'https://rest.coinapi.io/v1/trades/' . $symbol_id . '/history?time_start=' . $time_start . '&limit=' . $limit;
        }
        else if ($limit == null && $time_end != null)
        {
            $time_end = $this->FormatDateTime($time_end);
            $url      = 'https://rest.coinapi.io/v1/trades/' . $symbol_id . '/history?time_start=' . $time_start . '&time_end=' . $time_end;
            //$limit = '100';
        }
        else if ($limit == null && $time_end == null)
        {
            $url = 'https://rest.coinapi.io/v1/trades/' . $symbol_id . '/history?time_start=' . $time_start;
        }
        else
        {
            $time_end = $this->FormatDateTime($time_end);
            $url      = 'https://rest.coinapi.io/v1/trades/' . $symbol_id . '/history?time_start=' . $time_start . '&time_end=' . $time_end . '&limit=' . $limit;
        }
        return $this->CurlRequest($url);
    }
    //Quotes
    function GetQuotesCurrent($symbol_id = null)
    {
        if ($symbol_id == null)
        {
            $url = 'https://rest.coinapi.io/v1/quotes/current';
        }
        else
        {
            $url = 'https://rest.coinapi.io/v1/quotes/' . $symbol_id . '/current';
        }
        return $this->CurlRequest($url);
    }
    function GetQuotesLatest($symbol_id = null, $limit = null)
    {
        if ($symbol_id == null && $limit == null)
        {
            $url = 'https://rest.coinapi.io/v1/quotes/latest';
        }
        else if ($symbol_id == null && $limit != null)
        {
            $url = 'https://rest.coinapi.io/v1/quotes/latest?limit=' . $limit;
        }
        else if ($limit == null && $symbol_id != null)
        {
            $url = 'https://rest.coinapi.io/v1/quotes/' . $symbol_id . '/latest';
        }
        else
        {
            $url = 'https://rest.coinapi.io/v1/quotes/' . $symbol_id . '/latest?limit=' . $limit;
        }
        return $this->CurlRequest($url);
    }
    function GetQuotesHistory($symbol_id, $time_start, $time_end = null, $limit = null)
    {
        if ($symbol_id == null)
        {
            throw new InvalidArgumentException("symbol_id is required");
        }
        if ($time_start == null)
        {
            throw new InvalidArgumentException("time_start is required");
        }
        $time_start = $this->FormatDateTime($time_start);
        if ($time_end == null && $limit != null)
        {
            $url = 'https://rest.coinapi.io/v1/quotes/' . $symbol_id . '/history?time_start=' . $time_start . '&limit=' . $limit;
        }
        else if ($limit == null && $time_end != null)
        {
            $time_end = $this->FormatDateTime($time_end);
            $url      = 'https://rest.coinapi.io/v1/quotes/' . $symbol_id . '/history?time_start=' . $time_start . '&time_end=' . $time_end;
        }
        else if ($limit == null && $time_end == null)
        {
            $url = 'https://rest.coinapi.io/v1/quotes/' . $symbol_id . '/history?time_start=' . $time_start;
        }
        else
        {
            $time_end = $this->FormatDateTime($time_end);
            $url      = 'https://rest.coinapi.io/v1/quotes/' . $symbol_id . '/history?time_start=' . $time_start . '&time_end=' . $time_end . '&limit=' . $limit;
        }
        return $this->CurlRequest($url);
    }
    //Order Books
    function GetOrderbookCurrent($symbol_id = null)
    {
        if ($symbol_id == null)
        {
            $url = 'https://rest.coinapi.io/v1/Orderbooks/current';
        }
        else
        {
            $url = 'https://rest.coinapi.io/v1/Orderbooks/' . $symbol_id . '/current';
        }
        return $this->CurlRequest($url);
    }
    function GetOrderbookLatest($symbol_id, $limit = null)
    {
        if ($symbol_id == null)
        {
            throw new InvalidArgumentException("symbol_id is required");
        }
        if ($limit == null)
        {
            $url = 'https://rest.coinapi.io/v1/Orderbooks/' . $symbol_id . '/latest';
        }
        else
        {
            $url = 'https://rest.coinapi.io/v1/Orderbooks/' . $symbol_id . '/latest?limit=' . $limit;
        }
        return $this->CurlRequest($url);
    }
    function GetOrderbookHistory($symbol_id, $time_start, $time_end = null, $limit = null)
    {
        if ($symbol_id == null)
        {
            throw new InvalidArgumentException("symbol_id is required");
        }
        if ($time_start == null)
        {
            throw new InvalidArgumentException("time_start is required");
        }
        $time_start = $this->FormatDateTime($time_start);
        if ($time_end == null && $limit != null)
        {
            $url = 'https://rest.coinapi.io/v1/Orderbooks/' . $symbol_id . '/history?time_start=' . $time_start . '&limit=' . $limit;
        }
        else if ($limit == null && $time_end != null)
        {
            $time_end = $this->FormatDateTime($time_end);
            $url      = 'https://rest.coinapi.io/v1/Orderbooks/' . $symbol_id . '/history?time_start=' . $time_start . '&time_end=' . $time_end;
        }
        else if ($limit == null && $time_end == null)
        {
            $url = 'https://rest.coinapi.io/v1/Orderbooks/' . $symbol_id . '/history?time_start=' . $time_start;
        }
        else
        {
            $time_end = $this->FormatDateTime($time_end);
            $url      = 'https://rest.coinapi.io/v1/Orderbooks/' . $symbol_id . '/history?time_start=' . $time_start . '&time_end=' . $time_end . '&limit=' . $limit;
        }
        return $this->CurlRequest($url);
    }
    //Formate DateTime Object
    function FormatDateTime($DateTimeObj)
    {
        $timestring = $DateTimeObj->format('Y-m-d H:i:s.u');
        $timestring = str_replace(' ', 'T', $timestring);
        return $timestring . '0Z';
    }
    //Curl Request
    function CurlRequest($url)
    {
        $ch = curl_init($url);
        
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
            'X-CoinAPI-Key: ' . $this->ApiKey,
            'Content-Type: application/json',
            'Accept-Language: ' . $this->locale,
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $output = curl_exec($ch);
        $info   = curl_getinfo($ch);
        if ($output === false)
        {
            if (curl_error($ch))
            {
                throw new Exception(curl_error($ch));
            }
            else
            {
                throw new Exception($info);
            }
        }
        $json_data = json_decode($output);
        if ($json_data == NULL)
        {
            // json parsing failed
            throw new Exception($output);
        }
        $http_status_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        if ($http_status_code != 200)
        {
            throw new Exception($json_data);
        }
        curl_close($ch);
        return $json_data;
    }
}
?>