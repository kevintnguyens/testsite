; Drupal.org release file.
core = 7.x
api = 2

; Basic contributed modules.
projects[jquery_update][subdir] = "contrib"
projects[entity][subdir] = "contrib"
projects[token][subdir] = "contrib"
projects[rules][subdir] = "contrib"
projects[extlink][subdir] = "contrib"
projects[libraries][subdir] = "contrib"
projects[advanced_help][subdir] = "contrib"
projects[advanced_help][version] = 1.x-dev
projects[ctools][subdir] = "contrib"
projects[admin_views][subdir] = "contrib"
projects[backup_migrate][subdir] = "contrib"
; projects[nodeblock][subdir] = "contrib"
projects[navbar][subdir] = "contrib"
projects[bean][subdir] = "contrib"
projects[block_class][subdir] = "contrib"
projects[flood_control][subdir] = "contrib"
projects[masquerade][subdir] = "contrib"
projects[pathologic][subdir] = "contrib"
projects[favicon][subdir] = "contrib"
projects[touch_icons][subdir] = "contrib"
projects[variable][subdir] = "contrib"
projects[variable_email][subdir] = "contrib"
projects[backports][subdir] = "contrib"
projects[speedboxes][subdir] = "contrib"
projects[speedboxes][download][type] = "git"
projects[speedboxes][download][url] = "git@git.kwallcompany.com:kwall-internal/speedboxes.git"
projects[logintoboggan][subdir] = "contrib"
projects[listing_view][download][type] = "git"
projects[listing_view][type] = "module"
projects[listing_view][download][url] = "git@git.kwallcompany.com:kwall-features-drupal-7/listing-view.git"
projects[listing_view][subdir] = "contrib"
projects[module_filter][subdir] = "contrib"

; Menu
projects[bean][subdir] = "contrib"
projects[menu_block][subdir] = "contrib"
projects[menu_position][subdir] = "contrib"
projects[superfish][subdir] = "contrib"
projects[superfish][version] = "1.x-dev"

; Fields
projects[viewfield][subdir] = "contrib"
projects[viewfield][patch][] = "https://www.drupal.org/files/viewfield-token_dialog-1784880.patch"
projects[entityreference][subdir] = "contrib"
projects[field_group][subdir] = "contrib"
projects[options_element][subdir] = "contrib"
projects[title][subdir] = "contrib"
projects[field_formatter_css_class][subdir] = "contrib"
projects[field_formatter_css_class][version] = 1.x-dev

; Input Filters
projects[ckeditor][subdir] = "contrib"
projects[ckeditor_filter][subdir] = "contrib"
projects[simplehtmldom][subdir] = "contrib"
projects[imce][subdir] = "contrib"

; Messaging
projects[absolute_messages][subdir] = "contrib"

; Views
projects[views][subdir] = "contrib"
projects[views_bulk_operations][subdir] = "contrib"
projects[views_data_export][subdir] = "contrib"
projects[views_php][subdir] = "contrib"
projects[views_slideshow][subdir] = "contrib"

; Javascript
projects[jquery_placeholder][subdir] = "contrib"
projects[colorbox][subdir] = "contrib"

; Date
projects[date][subdir] = "contrib"

; Media
projects[media][subdir] = "contrib"
projects[media][version] = 2
projects[file_entity][subdir] = "contrib"
projects[transliteration][subdir] = "contrib"

; SEO
projects[globalredirect][subdir] = "contrib"
projects[google_analytics][subdir] = "contrib"
projects[xmlsitemap][subdir] = "contrib"
projects[redirect][subdir] = "contrib"
projects[redirect][version] = 1.0-rc3
;projects[redirect][patch][] = "https://www.drupal.org/files/issues/1796596-516.patch"
projects[pathauto][subdir] = "contrib"
projects[metatag][subdir] = "contrib"

; Spam
projects[captcha][subdir] = "contrib"
projects[recaptcha][subdir] = "contrib"

; Mail
projects[mailsystem][subdir] = "contrib"
projects[mimemail][subdir] = "contrib"
projects[smtp][subdir] = "contrib"

; Development
projects[devel][subdir] = "contrib"
projects[features][subdir] = "contrib"
projects[strongarm][subdir] = "contrib"

; Themes
projects[zen][subdir] = "contrib"
projects[zen][type] = "theme"
projects[ember][subdir] = "contrib"
projects[ember][type] = "theme"
projects[html5_tools][subdir] = "contrib"
projects[elements][subdir] = "contrib"
projects[fences][subdir] = "contrib"
projects[fences][patch][] = "http://drupal.org/files/undefined-index-1561244-7.patch"
projects[css_injector][subdir] = "contrib"
projects[less][subdir] = "contrib"
projects[less][version] = 3

; Libraries
libraries[ckeditor][type] = "libraries"
libraries[ckeditor][download][type] = "git"
libraries[ckeditor][download][url] = "git@git.kwallcompany.com:kwall-internal/ckeditor.git"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[colorbox][type] = "libraries"
libraries[colorbox][download][type] = "git"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox.git"
libraries[colorbox][directory_name] = "colorbox"
libraries[cycle][type] = "libraries"
libraries[cycle][download][type] = "git"
libraries[cycle][download][url] = "https://github.com/malsup/cycle.git"
libraries[cycle][directory_name] = "jquery.cycle"
libraries[jquery_placeholder][type] = "libraries"
libraries[jquery_placeholder][download][type] = "git"
libraries[jquery_placeholder][download][url] = "https://github.com/mathiasbynens/jquery-placeholder.git"
libraries[jquery_placeholder][directory_name] = "jquery.placeholder"
libraries[superfish][type] = "libraries"
libraries[superfish][download][type] = "git"
libraries[superfish][download][url] = "https://github.com/mehrpadin/Superfish-for-Drupal.git"
libraries[superfish][directory_name] = "superfish"
libraries[less][type] = "libraries"
libraries[less][download][type] = "git"
libraries[less][download][url] = "https://github.com/oyejorge/less.php"
libraries[less][directory_name] = "lessphp"