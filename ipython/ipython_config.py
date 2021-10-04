c.TerminalIPythonApp.display_banner = False
c.InteractiveShell.color_info = True

## Set the color scheme (NoColor, Neutral, Linux, or LightBG).
c.InteractiveShell.colors = 'Linux'

c.InteractiveShell.history_length = 10000

## Options for displaying tab completions, 'column', 'multicolumn', and
#  'readlinelike'. These options are for `prompt_toolkit`, see `prompt_toolkit`
#  documentation for more information.
c.TerminalInteractiveShell.display_completions = 'multicolumn'

## Shortcut style to use at the prompt. 'vi' or 'emacs'.
c.TerminalInteractiveShell.editing_mode = 'vi'

## Set the editor used by IPython (default to $EDITOR/vi/notepad).
c.TerminalInteractiveShell.editor = 'vi'

c.TerminalInteractiveShell.mouse_support = False
c.TerminalInteractiveShell.prompt_includes_vi_mode = True
c.TerminalInteractiveShell.term_title = True
c.TerminalInteractiveShell.term_title_format = 'IPython: {cwd}'
