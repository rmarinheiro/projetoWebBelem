package br.com.coti.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.coti.entity.Cliente;
import br.com.coti.entity.Endereco;
import br.com.coti.persistence.ClienteDao;

/**
 * Servlet implementation class ClienteController
 */
@WebServlet("/ClienteController")
public class ClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ClienteController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		if (action != null) {
			if (action.equals("consultar")) {

				try {

					ClienteDao cdao = new ClienteDao();

					request.setAttribute("dadosCliente", cdao.listarTodosFuncionarios());

				} catch (Exception e) {
					request.setAttribute("msg", "Erro ao consultar um cliente");
				}
			}

		}

		request.getRequestDispatcher("listarClientes.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Cliente c = new Cliente(null, request.getParameter("nome"), request.getParameter("email"));

			c.setEndereco(new Endereco(null, request.getParameter("logradouro"), request.getParameter("bairro"),
					request.getParameter("cidade"), request.getParameter("estado"),
					new Integer(request.getParameter("cep"))));

			new ClienteDao().gravar(c);

			request.setAttribute("msg", "Dados Gravados com Sucesso");

		} catch (Exception e) {
			request.setAttribute("msg", "Erro ao incluir o Cliente");

		}

		request.getRequestDispatcher("cliente.jsp").forward(request, response);

	}

}
