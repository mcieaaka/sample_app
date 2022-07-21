const { webpackConfig } = require('@rails/webpacker')

const webpack = require('webpack')
webpackConfig.plugins.prepend('Provide', new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
    })
)

module.exports = webpackConfig
