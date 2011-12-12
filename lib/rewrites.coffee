###
 * Rewrite settings to be exported from the design doc
###

module.exports = [
    {from: '/static/*', to: 'static/*'},
    {from: '/', to: '_list/toc/pattern_toc'},
    {from: '/:id', to: '_show/pattern/:id'},
    {from: '*', to: '_show/not_found'}
]
