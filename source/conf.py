# Configuration file for the Sphinx documentation builder.

import os
import sys
sys.path.insert(0, os.path.abspath('.'))

# -- Project information -----------------------------------------------------

project = 'LEAN Buch'
subtitle = 'Taylorpolynom'
author = 'Lea Soffel'
copyright = '2023, ' + author
book_file_name = 'lean_buch'

# The full version, including alpha/beta/rc tags
release = '0.1'

# -- General configuration ------------------------------------------------

# If your documentation needs a minimal Sphinx version, state it here.
#
# needs_sphinx = '1.0'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = ['sphinx.ext.mathjax', 'sphinx.ext.githubpages', 'lean_sphinx']

highlight_language = "lean"

# Allows for numerical references to sections
numfig = True

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This patterns also effect to html_static_path and html_extra_path
exclude_patterns = ['build', 'Thumbs.db', '.DS_Store', '.venv', 'exclude']

# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
#
# source_suffix = ['.rst', '.md']
source_suffix = '.rst'

# The master toctree document.
master_doc = 'index'


# -- Options for HTML output ----------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
html_theme = 'sphinx_rtd_theme'

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
#
# html_theme_options = { }

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']

html_favicon = '_static/favicon.ico'

html_output_encoding = 'ascii'

html_css_files = ['css/custom.css']


# -- Options for LaTeX output ---------------------------------------------

latex_engine = 'xelatex'

latex_additional_files = ['unixode.sty']

latex_elements = {
    # The paper size ('letterpaper' or 'a4paper').
    #
    # 'papersize': 'letterpaper',

    # The font size ('10pt', '11pt' or '12pt').
    #
    # 'pointsize': '10pt',

    # Additional stuff for the LaTeX preamble.
   # load packages and make box around code lighter
    'preamble': r'''
\usepackage{unixode}
\definecolor{VerbatimBorderColor}{rgb}{0.7,0.7,0.7}
% from sphinxmanual.cls: put authors on separate lines
\DeclareRobustCommand{\and}{%
   \end{tabular}\kern-\tabcolsep\\\begin{tabular}[t]{c}%
}
''',

    # Latex figure (float) alignment
    #
    # 'figure_align': 'htbp',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
    (master_doc, book_file_name + '.tex', project, author, 'manual'),
]


# -- Options for manual page output ---------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    (master_doc, book_file_name, project, [author], 1)
]

# -- Options for Texinfo output -------------------------------------------

# Grouping the document tree into Texinfo files. List of tuples
# (source start file, target name, title, author,
#  dir menu entry, description, category)
texinfo_documents = [
    (master_doc, book_file_name, project, author, book_file_name, subtitle, 'Miscellaneous'),
]
