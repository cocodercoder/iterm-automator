# Iterm Automator

This Gem offers the possibility to control the iterm-console with ruby. It is based on the consular iterm gem (https://github.com/achiu/consular-iterm) which brings the same or even more features to controle iterm. But this gem have a strict binding to consular gem which dosen't fit to my special needs.

#Usage

```ruby
window do
  execute 'ls'      # first pane level => vertical split

  tab do
    vericle_pane do  # first pane
      execute 'irb'
    end
  end

  horizontal_pane do  # first pane
    execute 'ps -ax'
  end
end
```