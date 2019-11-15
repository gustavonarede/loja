<?php
class Correios{
	
	public       
		$frete = array(),
		$error,
		$servico,
		$servico2,
		$cepOrigem,
		$cepDestino,
		$peso,
		$formato = '1',
		$comprimento,
		$altura,
		$largura,
		$diametro,
		$maoPropria = 'N',
		$valordeclarado = '0',
		$avisoRecebimento = 'N',
		$retorno = 'xml';

	private $url   = 'http://ws.correios.com.br/calculador/CalcPrecoPrazo.aspx?';
	private $sedex = '04014';
	private $pac   = '04510';
	/**
	* @param string cep destino
	* @param  float peso 
	*/

	function __construct($destino,$peso) {

		//tipo de servicos, ou seja, sedex, pac, sedex 10, esses codigos voce encontra no PDF que mencionei acima
		$this->servico 	    = $this->pac;  // PAC
		$this->servico2 	= $this->sedex; // sedex

		//cep de origem, ou seja, de onde parte
		$this->cepOrigem 	= Config::SITE_CEP;

		//cep destino, ou seja, para onde vai ser mandado
		$this->cepDestino 	= $destino;

		//peso em kilogramas
		$this->peso 		= $peso;
		$this->comprimento  = '35';//em cm
		$this->altura 		= '35';//em cm
		$this->largura     	= '35';//em cm
		$this->diametro 	= '90';//em cm

	}

	/** monta a url padrão de acesso a API */
	public function url_padrao()
	{
		return $this->url.
				"sCepOrigem=".           $this->cepOrigem   	."&".
				"sCepDestino=".          $this->cepDestino  	."&".
				"nVlPeso=".              $this->peso        	."&".
				"nCdFormato=".           $this->formato         ."&".
				"nVlComprimento=".       $this->comprimento     ."&".
				"nVlAltura=".            $this->altura          ."&".
				"nVlLargura=".           $this->largura         ."&".
				"sCdMaoPropria=".		 $this->maoPropria      ."&".
				"nVlValorDeclarado=".	 $this->valordeclarado  ."&".
				"sCdAvisoRecebimento=".	 $this->avisoRecebimento."&".
				"nVlDiametro=".          $this->diametro        ."&".
				"StrRetorno=".           $this->retorno;
	}
	
	/** incrementa a url padrão de acesso a API com o serviço sedex */
	public function url_sedex()
	{				
		return $this->url_padrao()."&nCdServico=".$this->servico2;
	}
	
	/** incrementa a url padrão de acesso a API com o serviço pac */
	public function url_pac()
	{				
		return $this->url_padrao()."&nCdServico=".$this->servico;
	}
	
	public function Calcular_Servico($url_servico)
	{
		$cURL = curl_init(sprintf($url_servico));
		curl_setopt($cURL, CURLOPT_RETURNTRANSFER, true);

		$string = curl_exec($cURL);

		curl_close($cURL);
		return simplexml_load_string($string);
	}
	/**
	faz a verificação e calculo do frete
	**/
	public function Calcular(){
		
		// por padrão obtém sempre o PAC primeiro
		$xml = $this->Calcular_Servico($this->url_pac());

		if($xml->Erro != ''):

			$this->error = array($xml->cServico->Erro, $xml->cServico->MgsErro);
			return false;

		// se não der erro, obtém o SEDEX também
		else:
			// crio o array que vai aramazenar o retono do xml
			$array_xmls = array();
			
			// armazeno dentro do array o primeiro xml, o PAC
			array_push($array_xmls, $xml);
			// consulto a API e armazeno dentro do array o segundo xml, o SEDEX
			array_push($array_xmls, $this->Calcular_Servico($this->url_sedex()));

			$i = 0;
			// percorro o array de xmls
			foreach ($array_xmls as $xml):
				// percorro o xml
				foreach ($xml->cServico as $servico):

					switch ($servico->Codigo):
						case $this->pac   : 
							$this->frete[$i]['tipo']   = 'PAC';
							break;
						case $this->sedex : 
							$this->frete[$i]['tipo']   = 'SEDEX';
							break;
					endswitch;

					$this->frete[$i]['valor']  	= $servico->ValorSemAdicionais;                          
					$this->frete[$i]['Prazo']  	= $servico->PrazoEntrega;    
					$this->frete[$i]['erro']   	= $servico->Erro;    
					$this->frete[$i]['MsgErro'] = $servico->MsgErro;    
					$this->frete[$i]['Codigo']  = $servico->Codigo;    

					$i++;   

				endforeach; 
			endforeach; 

			//var_dump($xml);
			return $xml;

		endif;
	}

/*
* mostrando erros 
*/
	public function error(){
		if(is_null($this->error)){
			return false;
		}else{
			return $this->error;
		}
	}
}
