package br.com.coti.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.coti.entity.Produto;
import br.com.coti.persistence.ProdutoDao;

@WebServlet("/ProdutoController")
public class ProdutoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProdutoController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		if (action != null) {
			if (action.equals("consultar")) {
				ProdutoDao produtoDao = new ProdutoDao();

				try {
					request.setAttribute("dadosProduto", produtoDao.listarTodosProdutos());
				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("msg", "Erro na Consulta");
				} finally {
					request.getRequestDispatcher("listarProdutos.jsp").forward(request, response);

				}
			}
		}

		// try {
		// executar(request, response);
		// } catch (Exception e) {
		// e.printStackTrace();
		// request.setAttribute("msg", "Erro na chamada da função executar");
		// }

	}

	protected void executar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String action = request.getParameter("action");
		if (action != null) {
			if (action.equals("cadastrar")) {
				ProdutoDao produtoDao = new ProdutoDao();

				try {
					Produto p = new Produto();
					p.setNome(request.getParameter("nome"));
					p.setDescricao(request.getParameter("descricao"));
					p.setPreco(new Double(request.getParameter("preco")));
					p.setImagem(request.getParameter("imagem"));
					new ProdutoDao().gravar(p);
					request.setAttribute("msg", "Dados Gravados com Sucesso");
				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("msg", "Erro ao Inserir um Produto");
				} finally {
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
			} else if (action.equals("excluir")) {
				try {
					ProdutoDao pdao = new ProdutoDao();
					String[] itens = request.getParameterValues("itens");
					if (itens == null) {
						throw new Exception("Erro marque algum produto");
					} else {
						for (String id : itens) {
							pdao.deletar(new Integer(id));
						}

						request.setAttribute("mensagem", "Produtos Excluidos com Sucesso");

					}
				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("msg", "Erro ao excluir o produto");
				} finally {
					request.getRequestDispatcher("produto?action=consultar").forward(request, response);
				}
			} else if (action.equals("consultar")) {

				ProdutoDao produtoDao = new ProdutoDao();

				try {
					request.setAttribute("dadosProduto", produtoDao.listarTodosProdutos());
				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("msg", "Erro na Consulta");
				} finally {
					request.getRequestDispatcher("listarProdutos.jsp").forward(request, response);

				}
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			executar(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "Erro na chamda da funçao executar");
		}

		// try {
		// Produto p = new Produto();
		// p.setNome(request.getParameter("nome"));
		// p.setDescricao(request.getParameter("descricao"));
		// p.setPreco(new Double(request.getParameter("preco")));
		// p.setImagem(request.getParameter("imagem"));
		// new ProdutoDao().gravar(p);
		// request.setAttribute("msg", "Dados Gravados com Sucesso");
		// } catch (Exception e) {
		// e.printStackTrace();
		// request.setAttribute("msg", "Ocorreu um erro na gravação dos Dados");
		// } finally {
		// request.getRequestDispatcher("index.jsp").forward(request, response);
		// }
		//
		// }
	}

}
