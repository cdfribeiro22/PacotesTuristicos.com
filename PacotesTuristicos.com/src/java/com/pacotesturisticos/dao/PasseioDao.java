/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.pacotesturisticos.dao;


import com.pacotesturisticos.model.CUsuarioSistema;
import com.pacotesturisticos.model.CPessoa;
import br.com.Login.util.Conexao;
import com.pacotesturisticos.model.CPasseios;
import com.pacotesturisticos.model.CPessoaEndereco;
import com.pacotesturisticos.model.CPessoaFisica;
import com.pacotesturisticos.model.Pessoa;
import com.pacotesturisticos.model.CPessoaGuia;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Avell 1513
 */
public class PasseioDao {
    
    private Connection connection;
 
     Timestamp dataDeHoje = new Timestamp(System.currentTimeMillis());
     Date d = new Date(System.currentTimeMillis());
//    
    public PasseioDao(){
        connection = Conexao.getConnection();
        
    }
    
//    public boolean ConsultarLogin(Pessoa login) {
//		
//		try {
//			PreparedStatement preparedStatement = connection.
//					prepareStatement("select * from public.guia where email=? and senha = ?");
//			preparedStatement.setString(1, login.getEmail());
//			preparedStatement.setString(2, login.getSenha());
//                        
//			ResultSet rs = preparedStatement.executeQuery();
////			                 JOptionPane.showMessageDialog(null, "teste Dao");
//			if (rs.next()) {
//				return true;
//				
//                               
//				
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//		return false;
//	}
    
        public void addPasseioCadastro(CPasseios passeio) {
            
        try {
           
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into passeio ( nomepasseio,  descpasseio, periodo,"
                                                        + "pontodeencontro, codigoguia, valor)"
                                                        + "values ( ?, ?, ?, ?, ?, ?)");   


        preparedStatement.setString(1, passeio.getNomepasseio());
        preparedStatement.setString(2, passeio.getDescpasseio());
        preparedStatement.setString(3, passeio.getPeriodo());
        preparedStatement.setString(4, passeio.getPontodeencontro());
        preparedStatement.setInt(5, passeio.getCodigoguia());
        preparedStatement.setString(6, passeio.getValor());

        
        preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
//        public void addPessoa(Pessoa cliente) {
//        try {
//           
//            PreparedStatement preparedStatement = connection
//                    .prepareStatement("insert into pessoa(cpf, tipo_pessoa, nome, telefone, email, senha, dt_cadastro,"
//                                    + " status_usuario, dt_ult_acesso, dt_ultimo_status, tipo_usuario) "
//                                    + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
//     
//   
//        preparedStatement.setInt(2, cliente.getTipoPessoa());
//        preparedStatement.setString(3, cliente.getNome());
//   
//        preparedStatement.setString(5, cliente.getEmail());
//        preparedStatement.setString(6, cliente.getSenha());
//        preparedStatement.setTimestamp(7, dataDeHoje);
//        preparedStatement.setInt(8, cliente.getStatus());
//        preparedStatement.setTimestamp(9, dataDeHoje);
//        preparedStatement.setTimestamp(10, dataDeHoje);
//        preparedStatement.setInt(11, cliente.getTipo_usuario());
//
//
//            preparedStatement.executeUpdate();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public void deleteCliente(int codigo) {
//        try {
//            PreparedStatement preparedStatement = connection
//                    .prepareStatement("delete from servicos where codigo=?");
//            // Parameters start with 1
//            preparedStatement.setInt(1, codigo);
//            preparedStatement.executeUpdate();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public void updatePessoa(CPessoa srv) {
//        try {
//            PreparedStatement preparedStatement = connection
//                    .prepareStatement("update servicos set nome=?,tipoServ=?,descServ=?");
//            // Parameters start with 1
//
////            preparedStatement.setString(1, srv.getNome());
////            preparedStatement.setString(2, srv.getTipoServ());
////            preparedStatement.setString(3, srv.getDescServ());
////
////
////            preparedStatement.setInt(4, srv.getCodigo());
//            preparedStatement.executeUpdate();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
   public List<CPasseios> getAllPasseio() {
        List<CPasseios> srvs = new ArrayList<CPasseios>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from passeio");
            
             while (rs.next()) {
                    CPasseios srv = new CPasseios();
                    srv.setCodigopasseio(rs.getInt("codigopasseio"));
                    srv.setNomepasseio(rs.getString("nomepasseio"));
                    srv.setDescpasseio(rs.getString("descpasseio"));
                    srv.setPeriodo(rs.getString("periodo"));
                    srv.setPontodeencontro(rs.getString("pontodeencontro"));
                    srv.setCodigoguia(rs.getInt("codigoguia"));
                    srv.setValor(rs.getString("valor"));
                    srv.setStatus(rs.getString("status"));
                  
                    srvs.add(srv);
                 
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return srvs;
    }
   
    public CPessoaEndereco getEnderecoByID(int codigo) {
        CPessoaEndereco srv = new CPessoaEndereco();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from enderecos where codigocliente=?");
            preparedStatement.setInt(1, codigo);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {

                srv.setLogradouro(rs.getString("logradouro"));
                srv.setNumero(Integer.parseInt(rs.getString("numero")));
                srv.setComplemento(rs.getString("complemento"));
                srv.setBairro(rs.getString("bairro"));
                srv.setEstado(rs.getString("estado"));
                srv.setCidade(rs.getString("cidade"));
                srv.setCod_postal(rs.getString("codigopostal"));
                srv.setPais(rs.getString("pais"));

            }
            
             rs.close();
            
            return srv;


//            JOptionPane.showMessageDialog(null,srv.getNome() );
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return srv;
    }
//
    public CPessoaGuia getGuiaById(int codigo) {
        CPessoaGuia srv = new CPessoaGuia();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from guia where codigocliente=?");
            preparedStatement.setInt(1, codigo);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                srv.setCodigocliente(rs.getInt("codigocliente"));
                srv.setNumerodoregistro(rs.getString("numeroderegistro"));
                srv.setCategoria1(rs.getString("categoria1"));
                srv.setCategoria2(rs.getString("categoria2"));
                srv.setDataexpedicao(rs.getDate("dataexpedicao"));
                srv.setIdioma1(rs.getString("idioma1"));
                srv.setIdioma2(rs.getString("idioma2"));
                srv.setIdioma3(rs.getString("idioma3"));
                srv.setCnh(rs.getString("cnh"));
                srv.setDtcnhvencimento(rs.getDate("dtchnvencimento"));
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return srv;
    }
    
    public boolean ConsultarGuiaExistente(CPessoaFisica guia) {

        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from public.guia where codigocliente=?");
            preparedStatement.setInt(1, guia.getCodigoCliente());
            

            ResultSet rs = preparedStatement.executeQuery();
//			                 JOptionPane.showMessageDialog(null, "teste Dao");
            if (rs.next()) {
                return true;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
    
     public String getPessoaIdGuia(int codigoCliente) {
      
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from guia where codigocliente=?");
            preparedStatement.setInt(1, codigoCliente);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {

               return "SIM";
               
            }
            rs.close();
            
           
//            JOptionPane.showMessageDialog(null,srv.getNome() );
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "-";
    }
    
}
