begin
  require 'hirb'
rescue LoadError
  # Missing goodies, bummer
end

if defined? Hirb
  # Dirty hack to support in-session Hirb.disable/enable
  Hirb::View.instance_eval do
    def enable_output_method
      @output_method = true
      old_print = Pry.config.print
      Pry.config.print = proc do |*args|
	Hirb::View.view_or_page_output(args[1]) || old_print.call(*args)
      end
    end

    def disable_output_method
      Pry.config.print = proc { |output, value| Pry::DEFAULT_PRINT.call(output, value) }
      @output_method = nil
    end
  end

  Hirb.enable
  extend Hirb::Console
end

Pry.config.editor = 'vim'

if Kernel.const_defined?(:Rails) && Rails.env
  require File.join(Rails.root,"config","environment")
  require 'rails/console/app'
  require 'rails/console/helpers'

  extend Rails::ConsoleMethods
end
