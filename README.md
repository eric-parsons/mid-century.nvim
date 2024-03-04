# Mid-Century Modern Theme for Neovim

This is a color scheme for Neovim that uses a palette inspired by mid-century
modern design. It was created with [Lush](http://git.io/lush.nvim).

Here is the config for the Lazy.nvim package manager (should hopefully be easy
to adapt to your favorite package manager):

```
{
    "eric-parsons/mid-century.nvim",
    dependencies = {
        "rktjmp/lush.nvim",
    },
    -- Optional, to set it on startup.
    config = function()
        vim.cmd.colorscheme "mid-century"
    end
}
```

While I really enjoy the color palette used by "gruvbox" (similarly inspired by
the same era) and many of the other popular (Neo)vim color schemes, I find that
they don't always really work well in practice. They make my code look colorful
and pretty, but I found they either draw too much attention to the wrong parts
of my code, or try to highlight too many things at once, which isn't helpful. 

This scheme attempts to use color in a more subtle way in order to emphasize
semantics (the meaning of the code) a bit more over syntax (its grammar). With
this scheme, the brightest parts of the text are the identifiers, followed by
types (for strongly-typed languages). To me, these are the most important parts
of my code and what I am focused on and thinking about the majority of the
time. Things like keywords are colored darker so that they take more of a
backseat. The tonal range is also reduced a bit to avoid situations where there
are multiple strong colors competing for attention.

The result isn't perfect, but I am reasonably pleased with it. This is my first
color scheme and I am still relatively new to Vim, so I expect that there is
still quite a bit of room for tweaking and improvement.
