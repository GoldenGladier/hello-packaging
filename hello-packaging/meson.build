#project name and programming languaje
project('com.github.GoldenGladier.hello-packaging', 'vala', 'c')

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
install_data(
    join_paths('data', 'hello-world.desktop'),
    install_dir: join_paths(get_option('datadir'), 'applications'),
    rename: meson.project_name() + '.desktop'
)

#Install our .appdata.xml file so AppCenter will see it
install_data(
    join_paths('data', 'hello-world.appdata.xml'),
    install_dir: join_paths(get_option('datadir'), 'metainfo'),
    rename: meson.project_name() + '.appdata.xml'
)