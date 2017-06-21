/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pacotesturisticos.dao;

import com.pacotesturisticos.model.CUsuarioSistema;
import com.pacotesturisticos.model.CPessoa;
import br.com.Login.util.Conexao;
import com.pacotesturisticos.model.CPacotes;
import com.pacotesturisticos.model.CPessoaEndereco;
import com.pacotesturisticos.model.CPessoaFisica;
import com.pacotesturisticos.model.Pessoa;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Avell 1513
 */
public class PacotesDao {

    private Connection connection;

    Timestamp dataDeHoje = new Timestamp(System.currentTimeMillis());
    Date d = new Date(System.currentTimeMillis());
//    

    public PacotesDao() {
        connection = Conexao.getConnection();

    }

    public boolean ConsultarLogin(CUsuarioSistema login) {

        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from public.pessoa where uemail=? and usenha = ?");
            preparedStatement.setString(1, login.getEmail());
            preparedStatement.setString(2, login.getSenha());

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

    public void addPacoteCadastro(CPacotes pacote) {

        try {

            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into pacotes( codigopacote, regiao, "
                            + " descpacote, item1, item2, item3, valor) "
                            + "values (?, ?, ?, ?, ?, ?, ?)");

            preparedStatement.setInt(1, pacote.getCodigopacote());
            preparedStatement.setString(2, pacote.getRegiao());
            preparedStatement.setString(3, pacote.getDescpacote());
            preparedStatement.setString(4, pacote.getItem1());
            preparedStatement.setString(5, pacote.getItem2());
            preparedStatement.setString(6, pacote.getItem3());
            preparedStatement.setString(7, pacote.getPreco());
            
            

           preparedStatement.executeQuery();
           
            

//          preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addPessoaEndereco(CPessoaFisica cliente) {

        try {

            PreparedStatement preparedStatement = connection
                    .prepareStatement("INSERT INTO public.enderecos("
                            + " logradouro, numero, complemento, bairro, estado, cidade, codigopostal,"
                            + " codigocliente, pais) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

            preparedStatement.setString(1, cliente.getLogradouro());
            preparedStatement.setInt(2, cliente.getNumero());
            preparedStatement.setString(3, cliente.getComplemento());
            preparedStatement.setString(4, cliente.getBairro());
            preparedStatement.setString(5, cliente.getEstado());
            preparedStatement.setString(6, cliente.getCidade());
            preparedStatement.setString(7, cliente.getCod_postal());
            preparedStatement.setInt(8, cliente.getCodigoCliente());
//         JOptionPane.showMessageDialog(null, cliente.getCodigoCliente());
            preparedStatement.setString(9, cliente.getPais());

            preparedStatement.executeUpdate();
            preparedStatement.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addPessoa(CPessoaFisica cliente) {
        try {

            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into pessoa(cpf, tipo_pessoa, nome, telefone, email, senha, dt_cadastro,"
                            + " status_usuario, dt_ult_acesso, dt_ultimo_status, tipo_usuario) "
                            + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            preparedStatement.setString(1, cliente.getCpf());
            preparedStatement.setInt(2, cliente.getTipoPessoa());
            preparedStatement.setString(3, cliente.getNome());
            preparedStatement.setString(4, cliente.getTelefoneMovel());
            preparedStatement.setString(5, cliente.getEmail());
            preparedStatement.setString(6, cliente.getSenha());
            preparedStatement.setTimestamp(7, dataDeHoje);

            preparedStatement.setTimestamp(9, dataDeHoje);
            preparedStatement.setTimestamp(10, dataDeHoje);

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void inativaPacote(int codigo) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update pacotes set statuspacote=? WHERE codigopacote=?");
            // Parameters start with 1
           
            preparedStatement.setString(1, "inativo");
             preparedStatement.setInt(2, codigo);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void ativaPacote(int codigo) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update pacotes set statuspacote=? WHERE codigopacote=?");
            // Parameters start with 1
           
            preparedStatement.setString(1, "ativo");
             preparedStatement.setInt(2, codigo);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updatePessoa(CPessoaFisica srv) {
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

    public List<CPacotes> getAllPacotes() {
        List<CPacotes> srvs = new ArrayList<CPacotes>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from pacotes");
            while (rs.next()) {
                CPacotes srv = new CPacotes();
                    srv.setCodigopacote(rs.getInt("codigopacote"));
                    srv.setRegiao(rs.getString("regiao"));
                    srv.setDescpacote(rs.getString("descpacote"));
                    srv.setItem1(rs.getString("item1"));
                    srv.setItem2(rs.getString("item2"));
                    srv.setItem3(rs.getString("item3"));
                    srv.setPreco(rs.getString("valor"));
                    srv.setStatus(rs.getString("statuspacote"));
                    
                    srvs.add(srv);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return srvs;
    }

    public CPacotes getPacoteById(int codigo) {
        CPacotes srv = new CPacotes();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from pacotes where codigopacote=?");
            preparedStatement.setInt(1, codigo);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {

                srv.setRegiao(rs.getString("regiao"));
               
                
                

            }
            rs.close();
            
            
            
            } catch (SQLException e) {
            e.printStackTrace();
        }

        return srv;
    }

    public CPessoaFisica getPessoaByEmail(String Email) {
        CPessoaFisica srv = new CPessoaFisica();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from pessoa where uemail=?");
            preparedStatement.setString(1, Email);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {

                srv.setDocumento(rs.getString("pdocumento"));
                srv.setDt_nasc(rs.getDate("pdtnascimento"));
                srv.setSexo(rs.getString("psexo"));
                srv.setTelefoneFixo(rs.getString("ptelefonefixo"));
                srv.setTelefoneMovel(rs.getString("ptelefonemovel"));
                srv.setOrgaoExpeditor(rs.getString("porgaoexpeditor"));
                srv.setCpf(rs.getString("pcpfcnpj"));
                srv.setNome(rs.getString("pnome"));
                srv.setTipoPessoa(Integer.parseInt(rs.getString("ptipopessoa")));
                srv.setTipoUsuario(Integer.parseInt(rs.getString("utipousuario")));
                srv.setEmail(rs.getString("uemail"));
                srv.setSenha(rs.getString("usenha"));
                srv.setDt_nasc(rs.getDate("udtcadastro"));
                srv.setDtAcesso(rs.getDate("udtultacesso"));
                srv.setCodigoCliente(Integer.parseInt(rs.getString("codigocliente")));
                
                

            }
            rs.close();
            
            srv.CPessoaEndereco(getEnderecoByID(srv.getCodigoCliente()));
            
            return srv;

//            JOptionPane.showMessageDialog(null,srv.getNome() );
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return srv;
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

}
