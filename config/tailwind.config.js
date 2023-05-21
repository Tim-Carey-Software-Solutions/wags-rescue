module.exports = {
    content: [
        './app/views/**/*.{erb,haml,html,slim}',
        './public/*.html',
        './app/helpers/**/*.rb',
        './app/assets/stylesheets/**/*.css',
        './app/javascript/**/*.js'
    ],
    theme: {
        listStyleType: {
            decimal: 'decimal',
            disc: "disc"
        },
    },

    plugins: [
        require("daisyui")],
}