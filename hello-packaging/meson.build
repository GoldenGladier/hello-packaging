#project name and programming language
project('com.github.GoldenGladier.hello-packaging', 'vala', 'c')

#Include the translations module
i18n = import('i18n')

#Set our translation domain
add_global_arguments('-DGETTEXT_PACKAGE= "@0@"'.format(meson.project_name()), language: 'c')

#create a new executable, list the files wa want to compile, 
#list the dependencies we need, and install
executable(
    meson.project_name(),
    'src/Application.vala',
    dependencies: [
        dependency('gtk+-3.0')
    ],
    install: true
)

#Install our .desktop file so the Applications menu will see it
# install_data(
#     join_paths('data', 'hello-world.desktop'),
#     install_dir: join_paths(get_option('datadir'), 'applications'),
#     rename: meson.project_name() + '.desktop'
# )

#Install our .appdata.xml file so AppCenter will see it
# install_data(
#     join_paths('data', 'hello-world.appdata.xml'),
#     install_dir: join_paths(get_option('datadir'), 'metainfo'),
#     rename: meson.project_name() + '.appdata.xml'
# )

#Translate and install our .desktop file
i18n.merge_file(
    input: join_paths('data', 'hello-packaging.desktop.in'),
    output: meson.project_name() + '.desktop',
    po_dir: join_paths(meson.source_root(), 'po'),
    type: 'desktop',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'applications')
)

#Translate and install our .appdata file
i18n.merge_file(
    input: join_paths('data', 'hello-packaging.appdata.xml.in'),
    output: meson.project_name() + '.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po'),
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo')
)

subdir('po')