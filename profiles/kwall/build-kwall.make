api = 2
core = 7.x

; Include the definition for how to build Drupal core directly, including patches:
includes[] = drupal-org-core.make

; Install for the normal method
projects[kwall][type] = "profile"
projects[kwall][download][type] = "git"
projects[kwall][download][url] = "git@git.kwallcompany.com:kwall-internal/install-profile.git"