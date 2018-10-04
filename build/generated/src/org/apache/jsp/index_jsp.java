package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;
import model.Category;
import impl.CategoryDAOImpl;
import dao.CategoryDAO;
import model.Product;
import dao.ProductDAO;
import impl.ProductDAOImpl;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items_end;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_forEach_var_items_end = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_forEach_var_items_end.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

    ProductDAO udao = new ProductDAOImpl();

    request.setAttribute("Product", udao.getProduct());

    CategoryDAO cdao = new CategoryDAOImpl();

    List<Category> cats = cdao.getCategory();

    Map<String, List<Product>> catMap = new HashMap();

    for (Category c : cats) {
        catMap.put(c.getCategoryname(), null);
    }

    for (Product p : udao.getProduct()) {

        if (catMap.get(p.getCategoryname()) == null) {

            List<Product> l = new ArrayList();

            l.add(p);

            catMap.put(p.getCategoryname(), l);

        } else {

            List<Product> l = catMap.get(p.getCategoryname());

            l.add(p);

            catMap.put(p.getCategoryname(), l);

        }

    }

    request.setAttribute("catMap", catMap);


      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"shortcut icon\" href=\"image/Logo.png\" />\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Foodies</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-2.2.4.js\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/home.css\">\n");
      out.write("        <script src=\"home.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/home.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                var minDate = new Date();\n");
      out.write("                $(\"#depart\").datepicker({\n");
      out.write("                    showAnim: 'drop',\n");
      out.write("                    numberOfMonth: 1,\n");
      out.write("                    minDate: minDate,\n");
      out.write("                    dateFormat: 'dd/mm/yy',\n");
      out.write("                    onClose: function (selectedDate) {\n");
      out.write("                        $('#return').datepicker(\"option\", \"minDate\", selectedDate);\n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            .bg {\n");
      out.write("                background-image: url(\"image/bg2.jpg\");\n");
      out.write("                height: 90%; \n");
      out.write("                padding-top: 60px;\n");
      out.write("                padding-left: 50px;\n");
      out.write("                background-position: center;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                background-attachment: fixed;\n");
      out.write("            }\n");
      out.write("            .bgimg1{\n");
      out.write("                background-image: url(\"image/salad4.jpg\");\n");
      out.write("                height: 80%; \n");
      out.write("                background-position: center;\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                background-attachment: fixed;\n");
      out.write("            }\n");
      out.write("            .btn-11 {\n");
      out.write("                padding: 10px 20px;\n");
      out.write("                background-color: orange;\n");
      out.write("                color: #f1f1f1;\n");
      out.write("                font-weight: bold;\n");
      out.write("                border-radius: 8;\n");
      out.write("                transition: .2s;\n");
      out.write("                margin-top: 190px;\n");
      out.write("            }\n");
      out.write("            .btn-11:hover, .btn:focus {\n");
      out.write("                border: 1px solid #333;\n");
      out.write("                background-color: transparent;\n");
      out.write("                border: none;\n");
      out.write("                color: orange;\n");
      out.write("                font-size: 30px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("            } \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-custom navbar-default navbar-fixed-top\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\" onclick=\"myFunction(this)\">\n");
      out.write("                        <div class=\"icon-bar\" id=\"bar1\"></div>\n");
      out.write("                        <div class=\"icon-bar\" id=\"bar2\"></div>\n");
      out.write("                        <div class=\"icon-bar\" id=\"bar3\"></div>  \n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"#\"><img src=\"image/Logo.png\"></a>\n");
      out.write("                    <a class=\"navbar-brand1\" href=\"#\"><img src=\"image/d1.png\"></a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"collapse navbar-nav2 navbar-collapse\" id=\"myNavbar\">\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-nav1  navbar-left\">\n");
      out.write("                        <li><a href=\"index.jsp\">HOME</a></li>\n");
      out.write("                        <li><a href=\"About.jsp?email=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">ABOUT US</a></li>\n");
      out.write("                        <li><a href=\"Menu.jsp?email=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">MENU</a></li>\n");
      out.write("                        <li><a href=\"Contact.jsp?email=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">CONTACT US</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                        <li><a href=\"AddUsers.jsp\"><span class=\"glyphicon glyphicon-user\"></span>SIGN UP</a></li>\n");
      out.write("                        <li><a href=\"Login.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span>LOGIN</a></li>\n");
      out.write("                    </ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"bg\">\n");
      out.write("            <a href=\"Menu.jsp?email=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${param.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"><button class=\"btn btn-11\">I'Am Hungery</button></a>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"COMBO\" class=\"bg-1\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <h3 class=\"text-center\">TODAY SPECIAL COMBO</h3>\n");
      out.write("                <p class=\"text-center\">Best combo you ever get.<br> Remember to order your combo!</p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"row text-center\">\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write(" \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                \n");
      out.write("\n");
      out.write("                    ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"bg-101\">\n");
      out.write("                <div class=\"row\" tex-center>\n");
      out.write("                    <div class=\"col-sm-3\" style=\"background-color:rgb(255,224,189);\"><h2>When India Win, Kid Eat Free</h2>\n");
      out.write("                        <p>Kid eat free the day after the India win. Some restriction apply.</p><br>\n");
      out.write("                        <button class=\"btn-101\" data-toggle=\"#\" data-target=\"#\">LEARN MORE</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-3\" style=\"background-color:rgb(255,205,148);\"><h2>Happy Hours at the Bar</h2>\n");
      out.write("                        <p>&#x20B9; 300 full size appetizers* & great drinks specilals M-F 3-6 P.M & 8 P.M Close.</p><br>\n");
      out.write("                        <button class=\"btn-101\" data-toggle=\"#\" data-target=\"#\">LEARN MORE</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-3\" style=\"background-color:rgb(255,224,189);\"><h2>Take On Trivia</h2>\n");
      out.write("                        <p>Compete every Thursday night to win pair of Red Sox ticket* or FoodHub Gift Card**9/13-10/11</p>\n");
      out.write("                        <button class=\"btn-101\" data-toggle=\"#\" data-target=\"#\">LEARN MORE</button>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-3\" style=\"background-color:rgb(255,205,148);\"><h2>Thank You!</h2>\n");
      out.write("                        <p>Thank you to everyone who donated and helped us raise over $200,000 to s FoodHub Funds.</p>\n");
      out.write("                        <button class=\"btn-101\" data-toggle=\"#\" data-target=\"#\">LEARN MORE</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"section1\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-6\"><img src=\"image/s1.webp\" style=\"padding-left: 50px; padding-top: 70px;\">\n");
      out.write("                        <br><br><br>\n");
      out.write("                        <img src=\"image/s4.webp\" style=\"padding-left: 50px;\">\n");
      out.write("                        <h1 style=\"color: black; padding-left: 50px;padding-top: 25px; font-style: italic; font-size: 16px; font-weight: bold;\">SPINACH LOVERS MONTH</h1>\n");
      out.write("                        <h1 style=\"color:#DAA520; padding-left: 50px; padding-top: 10px; font-style: italic;\">Spinach month is<br> finally here</h1>\n");
      out.write("                        <p style=\"color: black;padding-left: 50px;padding-right: 70px; font-style: italic;\">This is another great breakfast option and it only takes a few minutes to do. Just saute a cup or 2 of spinach in olive oil on the stove top and throw it in your omelette with other veggies or meat.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-6\"><h1 style=\"background-color: white;  font-style: italic; color:black; font-size: 16px; font-weight: bold;\">OUR RESTAURANT</h1>\n");
      out.write("                        <h1 style=\"color:#DAA520; letter-spacing:1px; font-style: italic;\">Local fresh cuisine<br>for everyone</h1>\n");
      out.write("                        <p style=\"color:black; font-style: italic;\">Our Chefs offer you perfect cooking, best served dishes with fresh ingredients and old recipes. We have only carefully sourced and seasonal ingredients in our disposal to make rustic dishes. We provide you with daily self-made bread, sourdough pizza, roasted fish-meat-vegetables and many more.</p>\n");
      out.write("                        <br><br>\n");
      out.write("                        <img src=\"image/s2.webp\">\n");
      out.write("                        <br><br>\n");
      out.write("                        <img src=\"image/s3.webp\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-12\">\n");
      out.write("                        <img src=\"image/s5.webp\" style=\"padding-left: 180px; padding-top: 50px;\">\n");
      out.write("                        <div class=\"text-block\">\n");
      out.write("                            <h1 style=\"font-size:20px;\">GREENS JUST GOT FASTER!</h1>\n");
      out.write("                            <p style=\"text-decoration: none;\"><a href=\"\">Order Online</a></p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"bgimg1\">\n");
      out.write("            <div class=\"reserv\">\n");
      out.write("                <h1>Reservations</h1>\n");
      out.write("            </div>\n");
      out.write("            <form action=\"\" id=\"booking\" method=\"post\">\n");
      out.write("                <input type=\"text\" name=\"date\" id=\"depart\" placeholder=\"Date\">\n");
      out.write("                <select name=\"time\" id=\"Time\" required>\n");
      out.write("                    <option name=\"time\" value=\"\">Time</option>\n");
      out.write("                    <option name=\"time\" value=\"1\">12:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"2\">12:15 Am</option>\n");
      out.write("                    <option name=\"time\" value=\"3\">12:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"4\">12:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"5\">01:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"6\">01:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"7\">01:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"8\">01:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"9\">02:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"10\">02:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"11\">02:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"12\">03:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"13\">03:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"14\">03:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"15\">03:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"16\">04:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"17\">04:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"18\">04:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"19\">04:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"20\">05:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"21\">05:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"22\">05:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"23\">05:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"24\">06:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"25\">06:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"26\">06:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"27\">06:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"28\">07:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"29\">07:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"30\">07:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"31\">07:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"32\">08:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"33\">08:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"34\">08:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"35\">08:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"36\">09:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"37\">09:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"38\">09:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"39\">09:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"40\">10:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"41\">10:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"42\">10:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"43\">10:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"44\">11:00 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"45\">11:15 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"46\">11:30 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"47\">11:45 AM</option>\n");
      out.write("                    <option name=\"time\" value=\"48\">12:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"49\">12:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"50\">12:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"51\">12:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"52\">01:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"53\">01:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"54\">01:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"55\">01:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"56\">02:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"57\">02:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"58\">02:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"59\">03:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"60\">03:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"61\">03:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"62\">03:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"63\">04:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"64\">04:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"65\">04:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"66\">04:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"67\">05:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"68\">05:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"69\">05:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"70\">05:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"71\">06:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"72\">06:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"73\">06:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"74\">06:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"75\">07:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"76\">07:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"77\">07:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"78\">07:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"79\">08:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"80\">08:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"81\">08:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"82\">08:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"83\">09:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"84\">09:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"85\">09:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"86\">09:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"87\">10:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"88\">10:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"89\">10:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"90\">10:45 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"91\">11:00 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"92\">11:15 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"93\">11:30 PM</option>\n");
      out.write("                    <option name=\"time\" value=\"94\">11:45 PM</option>\n");
      out.write("                </select>\n");
      out.write("                <select id=\"Size\" required>\n");
      out.write("                    <optionTime</option>\n");
      out.write("                        <option name=\"size\" value=\"\">Party Size</option>\n");
      out.write("                        <option name=\"size\" value=\"1\">1 Person</option>\n");
      out.write("                        <option name=\"size\" value=\"2\">2 Person</option>\n");
      out.write("                        <option name=\"size\" value=\"3\">3 Person</option>\n");
      out.write("                        <option name=\"size\" value=\"4\">4 Person</option>\n");
      out.write("                        <option name=\"size\" value=\"5\">5 Person</option>\n");
      out.write("                        <option name=\"size\" value=\"6\">6 Person</option>\n");
      out.write("                </select>\n");
      out.write("                <input type=\"submit\" class=\"btn btn-booking\" value=\"Book\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <form action=\"\" method=\"post\"><br>\n");
      out.write("                            <label style=\"color:white;margin-left: 150px;\"><h3>Subscribe Newsletter.</h3></label>\n");
      out.write("                            <input type=\"email\" name=\"emailsub\" class=\"input-sub\" placeholder=\"Email Address\">\n");
      out.write("                            <button class=\"btn btn-sub\">Subscribe Now</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <div class=\"footerp\"><p>Copyright © 2018 . All Content Reseverd <a href=\"#\" data-toggle=\"tooltip\" title=\"Visit FoodHub\">www.FoodHub.com</a></p></div>\n");
      out.write("                        <span class=\"fa fa-facebook\" style=\"color: white; font-size: 25px; padding-left: 120px;\" title=\"facebook\">\n");
      out.write("                            <span class=\"fa fa-twitter\" style=\"color: white; font-size: 25px; padding-left: 15px;\" title=\"twitter\">\n");
      out.write("                                <span class=\"fa fa-instagram\" style=\"color: white; font-size: 25px; padding-left: 15px;\" title=\"instagram\"\n");
      out.write("                                      </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    </footer>\n");
      out.write("                                    <script>\n");
      out.write("                                        $(document).ready(function () {\n");
      out.write("                                            // Initialize Tooltip\n");
      out.write("                                            $('[data-toggle=\"tooltip\"]').tooltip();\n");
      out.write("\n");
      out.write("                                            // Add smooth scrolling to all links in navbar + footer link\n");
      out.write("                                            $(\".navbar a, footer a[href='#myPage']\").on('click', function (event) {\n");
      out.write("\n");
      out.write("                                                // Make sure this.hash has a value before overriding default behavior\n");
      out.write("                                                if (this.hash !== \"\") {\n");
      out.write("\n");
      out.write("                                                    // Prevent default anchor click behavior\n");
      out.write("                                                    event.preventDefault();\n");
      out.write("\n");
      out.write("                                                    // Store hash\n");
      out.write("                                                    var hash = this.hash;\n");
      out.write("\n");
      out.write("                                                    // Using jQuery's animate() method to add smooth page scroll\n");
      out.write("                                                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area\n");
      out.write("                                                    $('html, body').animate({\n");
      out.write("                                                        scrollTop: $(hash).offset().top\n");
      out.write("                                                    }, 900, function () {\n");
      out.write("\n");
      out.write("                                                        // Add hash (#) to URL when done scrolling (default click behavior)\n");
      out.write("                                                        window.location.hash = hash;\n");
      out.write("                                                    });\n");
      out.write("                                                } // End if\n");
      out.write("                                            });\n");
      out.write("                                        }\n");
      out.write("                                        )\n");
      out.write("                                    </script>\n");
      out.write("                                    </body>\n");
      out.write("                                    </html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items_end.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Product}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("x");
    _jspx_th_c_forEach_0.setEnd(2);
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                        <div class=\"col-sm-4\">\n");
          out.write("                            <div class=\"thumbnail\">\n");
          out.write("                                <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.getImage()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"Paris\">\n");
          out.write("                                <input type=\"hidden\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" />\n");
          out.write("                                <p><strong>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.getProductname()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</strong></p>\n");
          out.write("                                <p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.getCategoryname()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p><br>\n");
          out.write("                                <a href=\"ViewSingleProduct.jsp?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"btn btn-1\">Add To Cart</a>\n");
          out.write("                            </div>\n");
          out.write("                        </div>\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items_end.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${catMap.keySet()}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("x");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                        <h1>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${x}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h1>\n");
          out.write("                        <div class=\"row text-center\">\n");
          out.write("                        ");
          if (_jspx_meth_c_forEach_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_1, _jspx_page_context, _jspx_push_body_count_c_forEach_1))
            return true;
          out.write("\n");
          out.write("                            </div>\n");
          out.write("                        <hr>\n");
          out.write("                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_1, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_1)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_2 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_2.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_1);
    _jspx_th_c_forEach_2.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${catMap.get(x)}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_2.setVar("y");
    int[] _jspx_push_body_count_c_forEach_2 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_2 = _jspx_th_c_forEach_2.doStartTag();
      if (_jspx_eval_c_forEach_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <div class=\"col-sm-4\">\n");
          out.write("                                <div class=\"thumbnail\">\n");
          out.write("                                    <img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${y.getImage()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"Paris\">\n");
          out.write("                                    <input type=\"hidden\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${y.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" />\n");
          out.write("                                    <p><strong>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${y.getProductname()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</strong></p>\n");
          out.write("                                    <p>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${y.getCategoryname()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</p><br>\n");
          out.write("                                    <a href=\"ViewSingleProduct.jsp?id=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${y.getId()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"btn btn-1\">Add To Cart</a>\n");
          out.write("                                </div>\n");
          out.write("                            </div>\n");
          out.write("                            \n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_2.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_2[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_2.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_2.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_2);
    }
    return false;
  }
}
