package pe.edu.upc.dew.ventapasajesbus.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import pe.edu.upc.dew.ventapasajesbus.dao.Reserva;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.service.ReservaImpl;
import pe.edu.upc.dew.ventapasajesbus.service.ReservaService;

public class CancelarReservaController extends AbstractController{

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest req, HttpServletResponse res) throws Exception {
        HttpSession session = req.getSession();

        Reserva reserva = (Reserva) session.getAttribute("reserva");
//        if (reserva == null) {
//            Ruta ruta = ((List<Ruta>)session.getAttribute("rutas")).get(100);
//        }

/*      String asiento = req.getParameter("asiento");
        String nombre = req.getParameter("nombre");
        String dni = req.getParameter("dni");
        String telefono = req.getParameter("telefono");
        String direccion = req.getParameter("direccion");*/

        ReservaService rs = new ReservaImpl();
        rs.cancelarReserva(reserva.getCoTicket());
        reserva=rs.getReserva();
        //session.setAttribute("reserva", reserva);

        return new ModelAndView("cancelareserva");
    }

}
