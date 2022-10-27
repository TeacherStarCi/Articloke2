package Repository.Paper;

import java.sql.Date;
import java.sql.SQLException;
import java.sql.Timestamp;

public class Test {

    public static void main(String[] args)
            throws SQLException, ClassNotFoundException {
        Timestamp date1 = new Timestamp(2012 - 3 - 2);
        Timestamp date2 = null;
        PaperDTO paper = new PaperDTO("AR1", "StarCi", "12", "Mathematics", "ublic class Test {\n"
                + "     public static void main(String[] args) \n"
                + "            throws SQLException, ClassNotFoundException{\n"
                + "         Date date1 = new Date(2012-3-2);\n"
                + "         Date date2 = null;\n"
                + "   PaperDTO paper = new PaperDTO(PaperDAO.getNextID(), \"Zugi\", \"12\", \"Mathematics\", \"non\", \"non\", date1, null, \"starci\", \"ds\", true);\n"
                + "//        System.out.println(PaperDAO.addPaper(paper));\n"
                + "System.out.println(PaperDAO.addPaper(pap", "ublic class Test {\n"
                + "     public static void main(String[] args) \n"
                + "            throws SQLException, ClassNotFoundException{\n"
                + "         Date date1 = new Date(2012-3-2);\n"
                + "         Date date2 = null;\n"
                + "   PaperDTO paper = new PaperDTO(PaperDAO.getNextID(), \"Zugi\", \"12\", \"Mathematics\", \"non\", \"non\", date1, null, \"starci\", \"ds\", true);\n"
                + "//        System.out.println(PaperDAO.addPaper(paper));\n"
                + "System.out.println(PaperDAO.addPaper(pap", date1, null, "starci", "ds", true);
        System.out.println(PaperDAO.updatePaper(paper));
//System.out.println(PaperDAO.addPaper(paper));
    }
}
