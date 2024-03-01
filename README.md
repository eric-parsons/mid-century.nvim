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
    }
}
```

While I really enjoy the color palette used by "gruvbox" (similarly inspired by
the same era) and many of the other popular (Neo)Vim color schemes, I find that
they don't always really work well in practice. They make my code look colorful
and pretty, but I found they either draw too much attention to the wrong parts
of my code, or try to highlight too many things at once, which isn't helpful. 

This scheme attempts to use color in a more subtle way in order to emphasize
semantics (the meaning of the code) a bit more over syntax (its grammar). For
example, imagine that all of the verbs in this paragraph were blue, and the
nouns red, and the adjectives green, and so on. Would that be helpful? Not
really. Of course, at the end of the day, color highlighting works off of
syntax a tree, so there is only so much that can be done. 

With this scheme, the brighest parts of the text are the identifiers (names of
functions, parameters, local variables, etc.), followed by types (for
strongly-typed languages). To me, these are the most important parts of my code
and what I am focused on and thinking about the majority of the time. Next down
the list are literals, which also convey meaning (especially string constants).
Keywords are distinct, but they are colored darker so that they take a
backseat. Punctuation and operators are colored brighter since they are only
one or two characters, and are supposed to act as separators. Comments are also
very important, but are colored in a way that makes them very different from
the code itself since they require a context switch between natural and
computer languages. Markup like HTML (or TSX/JSX) is a case where I do like actual *syntax* highlighting, since you often need to pick out a specific attribute for example, so those are given more distinction. 

The result isn't perfect, but I am reasonably pleased with it. This is my first color scheme and I am still relatively new to Vim, so I expect
that there is still quite a bit of room for tweaking and improvment.
