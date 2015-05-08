IntlPolyfill = require 'intl/Intl'
IntlPolyfill.__addLocaleData require 'intl/locale-data/json/es'
IntlPolyfill.__addLocaleData require 'intl/locale-data/json/es-ES'
IntlPolyfill.__addLocaleData require 'intl/locale-data/json/en'
IntlPolyfill.__addLocaleData require 'intl/locale-data/json/en-US'
IntlPolyfill.__addLocaleData require 'intl/locale-data/json/en-GB'

module.exports = IntlPolyfill