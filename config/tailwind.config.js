module.exports = {
    content: [
        './app/views/**/*.{erb,haml,html,slim}',
        './public/*.html',
        './app/helpers/**/*.rb',
        './app/assets/stylesheets/**/*.css',
        './app/javascript/**/*.js'
    ],

    plugins: [
        require("daisyui")
    ],
}