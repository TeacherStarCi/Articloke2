package Utils;

public class JSPComponent {

    public static String activeTab(String tabName) {
        return "<button class=\"nav-link active\" id=\"nav-home-tab\" data-bs-toggle=\"tab\" data-bs-target=\"#nav-home\" type=\"button\" role=\"tab\" aria-controls=\"nav-home\" aria-selected=\"true\"><span class = \"h3\">" + tabName + "</span> </button>\n";
    }

    public static String passiveTab(String tabName) {
        return "<button class=\"nav-link\" id=\"nav-profile-tab\" data-bs-toggle=\"tab\" data-bs-target=\"#nav-profile\" type=\"button\" role=\"tab\" aria-controls=\"nav-profile\" aria-selected=\"false\"><span class = \"h3\">" + tabName + "</span></button>";
    }
    public static String activePane(){
        return "<div class=\"tab-pane active show\" id=\"nav-home\" role=\"tabpanel\" aria-labelledby=\"nav-home-tab\">";
    }
    public static String passivePane(){
        return "<div class=\"tab-pane\" id=\"nav-profile\" role=\"tabpanel\" aria-labelledby=\"nav-profile-tab\">\n";
    }

}
