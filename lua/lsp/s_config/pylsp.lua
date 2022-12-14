return require 'utils'.appendTable({
    settings = {
        pylsp = {
            plugins = {
                autopep8 = {
                    enabled = false,
                },
                jedi_completion = {
                    enabled = false
                },
                pyflakes = {
                    enabled = false
                }
            },
        }
    }
}, require 'lsp.s_config.default')
