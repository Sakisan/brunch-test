module.exports = config:
  files:
    javascripts: joinTo: 'app.js'
    stylesheets: joinTo: 'app.css'
  plugins:
    sass:
      options:
        includePaths: ["node_modules/bootstrap-sass/assets/stylesheets"], # tell sass-brunch where to look for files to @import
      precision: 8 # minimum precision required by bootstrap-sass
    copycat:
      "fonts": ["node_modules/bootstrap-sass/assets/fonts/bootstrap"] # copy node_modules/bootstrap-sass/assets/fonts/bootstrap/* to priv/static/fonts/
  npm:
    enabled: true,
    whitelist: ["jquery", "bootstrap-sass"], # pull jquery and bootstrap-sass in as front-end assets
    globals: # bootstrap-sass' JavaScript requires both '$' and 'jQuery' in global scope
      $: 'jquery',
      jQuery: 'jquery'
