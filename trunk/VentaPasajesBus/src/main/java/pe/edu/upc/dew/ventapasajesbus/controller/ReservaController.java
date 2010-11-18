package pe.edu.upc.dew.ventapasajesbus.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import pe.edu.upc.dew.ventapasajesbus.model.Reserva;
import pe.edu.upc.dew.ventapasajesbus.model.Ruta;
import pe.edu.upc.dew.ventapasajesbus.service.ReservaImpl;
import pe.edu.upc.dew.ventapasajesbus.service.ReservaService;

public class ReservaController extends AbstractController{
    private Reserva reserva;

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest req, HttpServletResponse res) throws Exception {
        HttpSession session = req.getSession();
        Ruta ruta = ((List<Ruta>)session.getAttribute("rutas")).get(0);
        
        String asiento = req.getParameter("asiento");
        String nombre = req.getParameter("nombre");
        String dni = req.getParameter("dni");
        String telefono = req.getParameter("telefono");
        String direccion = req.getParameter("direccion");

        ReservaService rs = new ReservaImpl();
        rs.setReserva(ruta, asiento, nombre, dni, telefono, direccion);
        reserva=rs.getReserva();

        session.setAttribute("reserva", reserva);
        session.setAttribute("msj", "prueba test");
        return new ModelAndView("confirmareserva");
    }

}
