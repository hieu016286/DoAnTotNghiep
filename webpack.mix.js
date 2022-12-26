let mix = require(__dirname + '/node_modules/laravel-mix/src/index');
let webpack = require('webpack');

// Set path output
let directory_asset = 'public';
mix.setPublicPath(path.normalize(directory_asset));
let build_js = [
    {
        from: 'resources/js/pages/home.js',
        to: 'js/home.js'
    },
    {
        from: 'resources/js/pages/product_detail.js',
        to: 'js/product_detail.js'
    },
    {
        from: 'resources/js/pages/product_search.js',
        to: 'js/product_search.js'
    },
    {
        from: 'resources/js/pages/cart.js',
        to: 'js/cart.js'
    },
    {
        from: 'resources/js/pages/static.js',
        to: 'js/static.js'
    },
    {
        from: 'resources/js/pages/blog.js',
        to: 'js/blog.js'
    },
    {
        from: 'resources/js/pages/blog_detail.js',
        to: 'js/blog_detail.js'
    },
    {
        from: 'resources/js/pages/document.js',
        to: 'js/document.js'
    },
];
let build_scss = [
    {
        from: 'resources/scss/pages/home/home.scss',
        to: 'css/home.css'
    },
    {
        from: 'resources/scss/pages/home/home_insights.scss',
        to: 'css/home_insights.css'
    },
    {
        from: 'resources/scss/pages/product_detail/product_detail_insights.scss',
        to: 'css/product_detail_insights.css'
    },
    {
        from: 'resources/scss/pages/product_detail/product_detail.scss',
        to: 'css/product_detail.css'
    },
    {
        from: 'resources/scss/pages/product_search/product_search.scss',
        to: 'css/product_search.css'
    },
    {
        from: 'resources/scss/pages/product_search/product_insights.scss',
        to: 'css/product_insights.css'
    },
    {
        from: 'resources/scss/pages/ratings/ratings_insights.scss',
        to: 'css/ratings_insights.css'
    },
    {
        from: 'resources/scss/pages/ratings/ratings.scss',
        to: 'css/ratings.css'
    },
    {
        from: 'resources/scss/pages/cart/cart.scss',
        to: 'css/cart.css'
    },
    {
        from: 'resources/scss/pages/static/static.scss',
        to: 'css/static.css'
    },
    {
        from: 'resources/scss/pages/blog/blog.scss',
        to: 'css/blog.css'
    },
    {
        from: 'resources/scss/pages/blog_detail/blog_detail.scss',
        to: 'css/blog_detail.css'
    },
    {
        from: 'resources/scss/pages/auth/auth.scss',
        to: 'css/auth.css'
    },
    {
        from: 'resources/scss/pages/user/user.scss',
        to: 'css/user.css'
    },
    {
        from: 'resources/scss/pages/user/user_view_product.scss',
        to: 'css/user_view_product.css'
    },
    {
        from: 'resources/scss/pages/document.scss',
        to: 'css/document.css'
    },
];

build_js.map((file) => {
    mix.js(file.from, file.to);
});

build_scss.map((file) => {
    mix.sass(file.from, file.to).minify(directory_asset + '/' + file.to);
});

mix.options({
    processCssUrls: false
})
    .autoload({
        jquery: ['$', 'window.jQuery', 'jQuery'],
    });
// mix.disableNotifications();
mix.webpackConfig({
    plugins: [
        new webpack.ContextReplacementPlugin(/\.\/locale$/, 'empty-module', false, /js$/),
        new webpack.IgnorePlugin(/^codemirror$/),
    ],
    node: {
        fs: "empty"
    },
    module: {
        rules: [
            {
                test: /\.modernizrrc.js$/,
                use: ['modernizr-loader']
            },
            {
                test: /\.modernizrrc(\.json)?$/,
                use: ['modernizr-loader', 'json-loader']
            }
        ]
    },
    resolve: {
        alias: {
            "handlebars": "handlebars/dist/handlebars.js",
            modernizr$: path.resolve(__dirname, "resources/assets/js/.modernizrrc"),
        }
    },
});
if (mix.inProduction()) {
    mix.version();
}
new webpack.LoaderOptionsPlugin({
    test: /\.s[ac]ss$/,
    options: {
        includePaths: [
            path.resolve(__dirname, './public/')
        ]
    }
});
// mix.copyDirectory('node_modules/summernote/dist/font', 'public/fonts');
