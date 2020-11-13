public class MyApp : Gtk.Application{
    public MyApp () {
        Object(
            application_id: "com.github.GoldenGladier.hello-packaging",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

protected override void activate () {
    var main_window = new Gtk.ApplicationWindow (this){
        default_height = 300,
        default_width = 500,
        title = "Hello World - Packaging"
    };

    var label = new Gtk.Label("Hello world!");
    
    main_window.add  (label);
    main_window.show_all ();
    }

    public static int main (string[] args){
        return new MyApp ().run (args);
    }

}