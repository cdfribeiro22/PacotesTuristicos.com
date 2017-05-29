
//valida numero inteiro com mascara
function mascaraInteiro() {
            if (event.keyCode < 48 || event.keyCode > 57) {
                        event.returnValue = false;
                        return false;
            }
            return true;
}

function formataCampo(campo, Mascara, evento) {
            var boleanoMascara;

            var Digitato = evento.keyCode;
            exp = /\-|\.|\/|\(|\)| /g;
            campoSoNumeros = campo.value.toString().replace(exp, "");

            var posicaoCampo = 0;    
            var NovoValorCampo = "";
            var TamanhoMascara = campoSoNumeros.length;
    ;

            if (Digitato !== 8) { // backspace 
                        for (i = 0; i <= TamanhoMascara; i++) {
                                    boleanoMascara  = ((Mascara.charAt(i) === "-") || (Mascara.charAt(i) === ".") || (Mascara.charAt(i) === "/"));
                                    boleanoMascara  = boleanoMascara || ((Mascara.charAt(i) === "(") || (Mascara.charAt(i) === ")") || (Mascara.charAt(i) === " "));
                                    if (boleanoMascara) {
                                                NovoValorCampo += Mascara.charAt(i);
                                                  TamanhoMascara++;
                                    } else {
                                                NovoValorCampo += campoSoNumeros.charAt(posicaoCampo);
                                                posicaoCampo++;
                                      }              
                          }      
                        campo.value = NovoValorCampo;
                          return true;
            } else {
                        return true;
            }
}

function MascaraCPF(cpf) {
    if (mascaraInteiro(cpf) === false) {
        event.returnValue = false;
    }
    return formataCampo(cpf, '000.000.000-00', event);
}



function ValidarCPF(Objcpf) {
    var cpf = Objcpf.value;
    exp = /\.|\-/g;
    cpf = cpf.toString().replace(exp, "");
    var digitoDigitado = eval(cpf.charAt(9) + cpf.charAt(10));
    var soma1 = 0, soma2 = 0;
    var vlr = 11;

    for (i = 0; i < 9; i++) {
        soma1 += eval(cpf.charAt(i) * (vlr - 1));
        soma2 += eval(cpf.charAt(i) * vlr);
        vlr--;
    }
    soma1 = (((soma1 * 10) % 11) === 10 ? 0 : ((soma1 * 10) % 11));
    soma2 = (((soma2 + (2 * soma1)) * 10) % 11);

    var digitoGerado = (soma1 * 10) + soma2;
   

    if ((digitoGerado !== digitoDigitado)){
      
        document.getElementById("cpfinvalido").innerHTML="<font color='red'>OPS! CPF Invalido! </font>" ;
//        document.getElementById("cpf").value='' ;
        document.form1.cpf.focus();
    } else {    
       
        document.getElementById("cpfinvalido").innerHTML="OK! CPF Valido!>" ;
        
    }
}

//adiciona mascara de cep
function MascaraCep(cep) {
    if (mascaraInteiro(cep) === false) {
        event.returnValue = false;
    }
    return formataCampo(cep, '00.000-000', event);
}

//valida CEP
function ValidaCep(cep) {
    exp === /\d{2}\.\d{3}\-\d{3}/;
    if (!exp.test(cep.value))
        alert('Numero de Cep Invalido!');
}

//adiciona mascara ao telefone
function MascaraTelefone(tel) {
    if (mascaraInteiro(tel) === false) {
        event.returnValue = false;
    }
    return formataCampo(tel, '(00) 0000-0000', event);
}

//valida telefone
function ValidaTelefone(tel) {
    exp === /\(\d{2}\)\ \d{4}\-\d{4}/;
    if (!exp.test(tel.value))
        alert('Numero de Telefone Invalido!');
}

function validacaoEmail(field) {
    usuario = field.value.substring(0, field.value.indexOf("@"));
    dominio = field.value.substring(field.value.indexOf("@") + 1, field.value.length);
    var alerta;
    if ((usuario.length >= 1) &&
            (dominio.length >= 3) &&
            (usuario.search("@") === -1) &&
            (dominio.search("@") === -1) &&
            (usuario.search(" ") === -1) &&
            (dominio.search(" ") === -1) &&
            (dominio.search(".") !== -1) &&
            (dominio.indexOf(".") >= 1) &&
            (dominio.lastIndexOf(".") < dominio.length - 1)) {
        document.getElementById("emailinvalido").innerHTML = "E-mail válido";
//        alert("E-mail valido");
    } else {
        document.getElementById("emailinvalido").innerHTML = "<font color='red'>E-mail inválido </font>";
//        alert("E-mail invalido");
    }
}

  //Valida senhas Iguais


function validarSenha(form1){ 
	senha = document.form1.senha.value;
	senhaRepetida = document.form1.repetir_senha.value;
        
	if (senha !== senhaRepetida){
		document.getElementById("senhainvalida").innerHTML = "<font color='red'><b>As senhas não coincidem! Digite Novamente</b></font>";
		document.getElementById("txtSenha").value='' ;
                document.getElementById("repetir_senha").value='' ;
                document.form1.txtSenha.focus();
                
                
		return false;
	}
}