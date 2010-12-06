package pe.edu.upc.dew.ventapasajesbus.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import pe.edu.upc.dew.ventapasajesbus.dao.Reserva;
import pe.edu.upc.dew.ventapasajesbus.service.ReservaImpl;
import pe.edu.upc.dew.ventapasajesbus.service.ReservaService;

public class ModificarReservaController extends AbstractController{

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest req, HttpServletResponse res) throws Exception {
        HttpSession session = req.getSession();

        List<Reserva> reservas;
        ReservaService reservaService = new ReservaImpl();

        reservas = reservaService.getReservas();

        session.setAttribute("reservas", reservas);
        
        //return new ModelAndView("reserva");

        return new ModelAndView("modreserva");
    }

}
