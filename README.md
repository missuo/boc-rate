# Bank of China (BOC) Exchange Rates API

This project is a Flask-based API for fetching real-time exchange rates from the Bank of China. It retrieves currency data from the BOC's official exchange rate webpage and provides an easy-to-use JSON API endpoint.

## Features

- Fetches exchange rates in real-time for 26 supported currencies.
- Data includes foreign exchange buying rate, cash buying rate, foreign exchange selling rate, cash selling rate, and conversion rate.
- Caching with a configurable timeout for optimizing performance.
- CORS enabled for cross-origin requests.

## Installation

1. **Clone the repository:**
    ```bash
    git clone https://github.com/missuo/boc-rate.git
    cd boc-rate
    ```

2. **Install the dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

3. **Run the Flask app:**
    ```bash
    python boc-rate.py
    ```

   By default, the API runs on `http://0.0.0.0:6666`.

## Deploy with Docker Compose

1. **Clone the repository:**
    ```bash
    git clone https://github.com/missuo/boc-rate.git
    cd boc-rate
    ```

2. **Start the service:**
    ```bash
    docker compose up -d
    ```

3. **Stop the service:**
    ```bash
    docker compose down
    ```

   The API will be accessible at `http://localhost:6666`.

## API Usage

### Endpoint

`GET /`

### Parameters

- `currency` (required): 3-letter currency code (e.g., `USD`, `EUR`).

### Supported Currency Codes

| Code | Currency         |
|------|-------------------|
| AED  | UAE Dirham       |
| AUD  | Australian Dollar|
| BRL  | Brazilian Real   |
| CAD  | Canadian Dollar  |
| CHF  | Swiss Franc      |
| DKK  | Danish Krone     |
| EUR  | Euro             |
| GBP  | British Pound    |
| HKD  | Hong Kong Dollar |
| IDR  | Indonesian Rupiah|
| INR  | Indian Rupee     |
| JPY  | Japanese Yen     |
| KRW  | Korean Won       |
| MOP  | Macanese Pataca  |
| MYR  | Malaysian Ringgit|
| NOK  | Norwegian Krone  |
| NZD  | New Zealand Dollar |
| PHP  | Philippine Peso  |
| RUB  | Russian Ruble    |
| SAR  | Saudi Riyal      |
| SEK  | Swedish Krona    |
| SGD  | Singapore Dollar |
| THB  | Thai Baht        |
| TRY  | Turkish Lira     |
| TWD  | New Taiwan Dollar|
| USD  | US Dollar        |
| ZAR  | South African Rand|

### Example Request

```http
GET http://<server_ip>:6666/?currency=USD
```

### Example Response

On success:

```json
{
    "code": 200,
    "message": "success",
    "data": [
        {
            "currencyName": "USD",
            "foreignExchangeBuyingRate": "6.8647",
            "cashBuyingRate": "6.8301",
            "foreignExchangeSellingRate": "6.8997",
            "cashSellingRate": "6.9301",
            "bocConversionRate": "6.8821",
            "releaseTime": "2024-11-01 01:35:27"
        }
    ]
}
```

### Error Codes

- **400**: Invalid or unsupported currency code.
- **404**: No exchange rate data found for the specified currency.
- **500**: Internal server error.

### License

This project is licensed under the [Apache-2.0 License](./LICENSE) © 2024. All Rights Reserved.