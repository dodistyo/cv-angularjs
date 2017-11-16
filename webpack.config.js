/**
 * Created by juke on 15-Nov-17.
 */
var BrowserSyncPlugin = require('browser-sync-webpack-plugin');

module.exports = {
    entry: './backend/test.js',
    output: {
        filename: './javascript/bundle.js'
    },
    watch: true,
    plugins: [
        new BrowserSyncPlugin({
            // browse to http://localhost:3000/ during development,
            // ./public directory is being served
            host: 'localhost',
            port: 3000,
            files: ['./**/*.html','./**/*.php','./**/*.js'],
            server: { baseDir: [''] }
        })
    ]
};