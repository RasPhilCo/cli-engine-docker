FROM rasphilco/cli-engine-devcenter:v0.1.1

# Update devcenter
RUN \
  gem install devcenter --no-ri --no-rdoc

# Remove old gems
RUN \
  gem cleanup
