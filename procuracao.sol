pragma solidity 0.8.9;

contract procuracaoEmCausaPropria {
    
    string mandante;
    string procurador;
    string public imovel;
    string public cartorio;
    uint public matricula;
    uint Valorimovel = 100000;
    uint public PorcentagemITBI = 2;
    
    constructor (
        string memory _imovel,
        string memory _cartorio,
        uint _matricula,
        uint _Valorimovel,
        uint _PorcentagemITBI
        )
       
        { 
            imovel = _imovel;
            cartorio = _cartorio;
            Valorimovel = _Valorimovel;
            PorcentagemITBI = _PorcentagemITBI;
        }
    
        
       function ValorITBI(uint _PorcentagemITBI) public returns(uint, string memory) {
        PorcentagemITBI = _PorcentagemITBI*Valorimovel/100;        
        return(Valorimovel, "Valor do ITBI");
        }

}
