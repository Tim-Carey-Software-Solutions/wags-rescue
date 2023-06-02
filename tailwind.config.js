module.exports = {
  content: [
    './app/views/**/*.{erb,haml,html,slim}',
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js',
    './app/components/**/*.html.erb',
    './app/components/**/*.rb',
  ],

  plugins: [
    require("daisyui"),
  ],
}