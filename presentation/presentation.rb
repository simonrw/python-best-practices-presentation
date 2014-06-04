# Overwrite this function to set the rendering style
def render_code(code, lexer)
  render_block(Pygments.highlight(code, :formatter => "terminal256",
                                  :lexer => lexer,
                                  :options => {
                                    :style => "monokai",
                                  }))
end

center <<-EOS
  \e[1mPython best practices\e[0m

  Simon Walker
  @mindriot101
EOS

section "Template script" do
  File.open("resources/template.py") do |f|
    code f.read, lexer = :python
  end

  code <<-EOS
  #!/usr/bin/env python
  EOS

  code <<-EOS
  # -*- coding: utf-8 -*-
  EOS

  code <<-EOS
  '''
  Usage:
      script.py [options] <arg>

  Options:
      -h, --help                  Show this help
  '''
  EOS

  code <<-EOS
  import numpy as np
  import matplotlib.pyplot as plt
  from docopt import docopt
  EOS

  code <<-EOS
  def main(args):
      pass

  if __name__ == '__main__':
      main(docopt(__doc__))
  EOS

  File.open("resources/template.py") do |f|
    code f.read, lexer = :python
  end
end

section "Makefiles" do
end
