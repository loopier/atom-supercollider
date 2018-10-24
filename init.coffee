# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# requires:
#   - supercollider
atom.commands.add 'atom-text-editor[data-grammar~=\'supercollider\']', 'supercollider:eval-paragraph', (event)->
  atom.commands.dispatch event.target, 'editor:move-to-beginning-of-next-paragraph'
  atom.commands.dispatch event.target, 'editor:select-to-beginning-of-previous-paragraph'
  atom.commands.dispatch event.target, 'supercollider:eval'
