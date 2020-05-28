package covidjstl.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import covidjpa.dao.MensajeDao;
import covidjpa.entities.Mensaje;

/**
 * Servlet implementation class MensajeController
 */
@WebServlet("/MensajeController")
public class MensajeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MensajeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	//	String accionAgregar = (String)request.getParameter("accion");

		System.out.println(request.getParameter("accion"));
		
		String validar = String.valueOf(request.getParameter("accion"));
		
		if (request.getParameter("id") == null && validar.equals("null")) {

			MensajeDao mDao = new MensajeDao();
			RequestDispatcher rd = request.getRequestDispatcher("mensajes.jsp");
			rd.forward(request, response);

		}

		if (request.getParameter("id") != null) {

			Integer id = Integer.parseInt(request.getParameter("id"));
			String nombre = (String) request.getParameter("nombre");
			String email = (String) request.getParameter("email");
			String website = (String) request.getParameter("website");
			String mensaje = (String) request.getParameter("mensaje");
			String usuario = (String) request.getParameter("usuario");

			Mensaje m = new Mensaje(id, nombre, email, website, mensaje, usuario);

			String accion = request.getParameter("accion");
			System.out.println(accion);

			if (accion.equals("1")) {
				
				MensajeDao mDao = new MensajeDao();
				mDao.delete(String.valueOf(m.getId()) );

				RequestDispatcher index = request.getRequestDispatcher("index.jsp");
				index.forward(request, response);

			} else if (accion.equals("2")) { // Indicativo de actualizar

				request.setAttribute("nombre", nombre);
				request.setAttribute("email", email);
				request.setAttribute("website", website);
				request.setAttribute("mensaje", mensaje);
				request.setAttribute("id", id);
				request.setAttribute("usuario", usuario);
				request.setAttribute("idA", 2);
				request.setAttribute("accionBoton", "Actualizar");
				RequestDispatcher index = request.getRequestDispatcher("agregarActualizar.jsp");
				index.forward(request, response);

			}


		}
		if (validar.equals("0")) {
			request.setAttribute("usuario", "bb");
			request.setAttribute("idA", 0);
			request.setAttribute("accionBoton", "Agregar");
			RequestDispatcher index = request.getRequestDispatcher("agregarActualizar.jsp");
			index.forward(request, response);
			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		

		
		String nombre = (String) request.getParameter("nombre");
		String email = (String) request.getParameter("email");
		String website = (String) request.getParameter("website");
		String mensaje = (String) request.getParameter("mensaje");
		String usuario = (String) request.getParameter("usuario");
		System.out.println(nombre);
		System.out.println(email);
		System.out.println(website);
		System.out.println(mensaje);
		System.out.println(usuario);
		Mensaje ma = new Mensaje(nombre, email, website, mensaje, usuario);
		if (request.getParameter("idA").equals("2")) {
			
			Integer id = Integer.parseInt(request.getParameter("id"));
			Mensaje m = new Mensaje(id, nombre, email, website, mensaje, usuario);


			MensajeDao mDao = new MensajeDao();
			mDao.update(m);
			request.setAttribute("id", null);

			RequestDispatcher index = request.getRequestDispatcher("index.jsp");
			index.forward(request, response);
		}
		
		else if(request.getParameter("idA").equals("0")){
			MensajeDao mDao = new MensajeDao();
			mDao.insertar(ma);
			request.setAttribute("id", null);
			RequestDispatcher index = request.getRequestDispatcher("index.jsp");
			index.forward(request, response);
		}

	}

}
