module.exports = {
    content: [
        './app/views/**/*.{erb,haml,html,slim}',
        './public/*.html',
        './app/helpers/**/*.rb',
        './app/assets/stylesheets/**/*.css',
        './app/javascript/**/*.js'
    ],

    plugins: [
        require("daisyui"),
    ],

    daisyui: {
        themes: [
            {
                light: {
                    ...require("daisyui/src/colors/themes")["[data-theme=light]"],
                    primary: "#2170bd",
                    "primary-focus": "#6fa3e1",
                },
            },
        ],
    },
}