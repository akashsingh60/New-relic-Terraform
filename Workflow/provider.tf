terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.27.4"
    }
  }
}

provider "newrelic" {
  # Configuration options
  api_key="NRAK-5IWGBDCV9NJF0QHEQGOX0MC2ECG"
  account_id=4038258
}