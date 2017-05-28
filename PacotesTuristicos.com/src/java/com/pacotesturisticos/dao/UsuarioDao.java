/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.pacotesturisticos.dao;


import com.pacotesturisticos.model.LoginUsuario;
import com.pacotesturisticos.model.Pessoa;
import br.com.Login.util.Conexao;
import com.pacotesturisticos.model.UsuarioSistema;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Avell 1513
 */
public class UsuarioDao {
    
    private Connection connection;
 
     Timestamp dataDeHoje = new Timestamp(System.currentTimeMillis());
    
    
    public UsuarioDao(){
        connection = Conexao.getConnection();
        
    }
    
    public boolean ConsultarLogin(UsuarioSistema login) {
		
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from public.pessoa where email=? and senha = ?");
			preparedStatement.setString(1, login.getEmail());
			preparedStatement.setString(2, login.getSenha());
                        
			ResultSet rs = preparedStatement.executeQuery();
			                 JOptionPane.showMessageDialog(null, "teste Dao");
			if (rs.next()) {
				return true;
				
                               
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
    
        public void addPessoa(UsuarioSistema cliente) {
        try {
           
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into pessoa(cpf, tipo_pessoa, nome, telefone, email, senha, dt_cadastro,"
                                    + " status_usuario, dt_ult_acesso, dt_ultimo_status, tipo_usuario) "
                                    + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
     
        preparedStatement.setString(1,cliente.getCpf());
        preparedStatement.setInt(2, cliente.getPessoa());
        preparedStatement.setString(3, cliente.getNome());
        preparedStatement.setString(4, cliente.getTelefone());
        preparedStatement.setString(5, cliente.getEmail());
        preparedStatement.setString(6, cliente.getSenha());
        preparedStatement.setTimestamp(7, dataDeHoje);
        preparedStatement.setInt(8, cliente.getStatus());
        preparedStatement.setTimestamp(9, dataDeHoje);
        preparedStatement.setTimestamp(10, dataDeHoje);
        preparedStatement.setInt(11, cliente.getTipo_usuario());


            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteCliente(int codigo) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from servicos where codigo=?");
            // Parameters start with 1
            preparedStatement.setInt(1, codigo);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updatePessoa(Pessoa srv) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update servicos set nome=?,tipoServ=?,descServ=?");
            // Parameters start with 1

//            preparedStatement.setString(1, srv.getNome());
//            preparedStatement.setString(2, srv.getTipoServ());
//            preparedStatement.setString(3, srv.getDescServ());
//
//
//            preparedStatement.setInt(4, srv.getCodigo());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Pessoa> getAllCliente() {
        List<Pessoa> srvs = new ArrayList<Pessoa>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from servicos");
            while (rs.next()) {
                Pessoa srv = new Pessoa();
                
//                srv.setCodigo(rs.getInt("codigo"));
//                srv.setNome(rs.getString("nome"));
//                srv.setTipoServ(rs.getString("tipoServ"));
//                srv.setDescServ(rs.getString("descServ"));
                

               
                srvs.add(srv);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return srvs;
    }

    public UsuarioSistema getPessoaById(int cpfCnpj) {
        UsuarioSistema srv = new UsuarioSistema();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from servicos where codigo=?");
//            preparedStatement.setInt(1, codigo);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
//                srv.setCodigo(rs.getInt("codigo"));
//                srv.setNome(rs.getString("nome"));
//                srv.setTipoServ(rs.getString("tipoServ"));
//                srv.setDescServ(rs.getString("descServ"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return srv;
    }
    
    
    
}
