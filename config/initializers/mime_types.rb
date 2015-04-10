# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf

Mime::Type.unregister(:pdf)
Mime::Type.register "application/force-download", :pdf, [], %w(pdf)