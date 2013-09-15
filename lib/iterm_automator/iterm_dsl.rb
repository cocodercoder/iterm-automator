module ItermAutomator
  class DSL
    def iterm
      @iterm ||= Iterm.new
    end

    def window(&block)
      iterm.open_window

      if block_given?
        instance_eval &block
      end
    end

    def tab(&block)
      tab = iterm.open_tab

      if block_given?
        instance_eval &block
      end
    end

    def verticle_pane(&block)
      iterm.vertical_split

      if block_given?
        instance_eval &block
      end
    end

    def horizontal_pane(&block)
      iterm.horizontal_split

      if block_given?
        instance_eval &block
      end
    end

    def execute(command)
      iterm.execute_command(command)
    end
  end
end
