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
import pe.edu.upc.dew.ventapasajesbus.service.Transporte;
import pe.edu.upc.dew.ventapasajesbus.service.TransporteImpl;

public class CancelarModReservaController extends AbstractController{

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest req, HttpServletResponse res) throws Exception {
        HttpSession session = req.getSession();

        Integer reservaSeleccion = Integer.parseInt(req.getParameter("reservaSeleccion"));
        String pagar = req.getParameter("pagar");
        String borrar = req.getParameter("borrar");

        ReservaService rs = new ReservaImpl();

        if(borrar != null){
            Reserva reserva = rs.eliminarReserva(reservaSeleccion);
            session.setAttribute("reserva", reserva);
            return new ModelAndView("eliminamodreserva");
        }else{
            Reserva reserva = rs.cancelarReserva(reservaSeleccion);
            session.setAttribute("reserva", reserva);

            return new ModelAndView("cancelamodreserva");
        }
        
    }
}
