//Importando bibliotecas
import UIKit
import PlaygroundSupport

//PRIMEIRA PERGUNTA
class Pag2ViewController:UIViewController{
    
    //MANDANDO PARA A PROXIMA TELA
    @IBAction func prox2(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina3 = Pag3ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina3, animated: true) //Animacaozinha da transicao
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white //Carregando a cor da proxima tela
        title = "Yamauquiz" //Titulo da proxima tela
        
        //Label da PRIMEIRA PERGUNTA
        let label = UILabel()
        label.frame = CGRect(x: 110, y: 200, width: 200, height: 20)
        label.text = "PRIMEIRA PERGUNTA"
        label.textColor = .black
        
        
        //QUESTOES
        let Botao = UIButton();
        Botao.setTitle("Pipi", for: .normal); //TITULO DO BOTAO
        Botao.backgroundColor = .black; //Cor do botao
        Botao.frame = CGRect(x:  60, y: 300, width: 120, height: 40); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(prox2), for: .touchUpInside); //Evento do botao
        
        //QUESTAO DOIS
        let Botao2 = UIButton();
        Botao2.setTitle("Pipi", for: .normal); //TITULO DO BOTAO
        Botao2.backgroundColor = .black; //Cor do botao
        Botao2.frame = CGRect(x: 190, y: 300, width: 120, height: 40); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(prox2), for: .touchUpInside); //Evento do botao
        
        //QUESTAO TRES
        let Botao3 = UIButton();
        Botao3.setTitle("Pipi", for: .normal);
        Botao3.backgroundColor = .black; //Cor do botao
        Botao3.frame = CGRect(x: 60, y: 400, width: 120, height: 40); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(prox2), for: .touchUpInside); //Evento do botao
        
        //QUESTAO QUATRO
        let Botao4 = UIButton();
        Botao4.setTitle("Pipi", for: .normal);
        Botao4.backgroundColor = .black; //Cor do botao
        Botao4.frame = CGRect(x: 190, y: 400, width: 120, height: 40); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(prox2), for: .touchUpInside); //Evento do botao
        
        
        //Adicionando os elementos a VIEW
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}

//SEGUNDA PERGUNTA
class Pag3ViewController:UIViewController{
    
    //Mandando para a proxima tela
    @IBAction func prox3(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina3 = Pag2ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina3, animated: true) //Animacaozinha da transicao
    }
    
    //Mandando para a tela de erro
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Erro = ErroViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Erro, animated: true) //Animacaozinha da transicao
    }
    
    //CARREGANDO A TELA
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white//Carregando a cor da proxima tela
        title = "Yamauquiz" //Titulo da proxima tela
        
        //Label da tela do meio
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        label.text = "SEGUNDA PERGUNTA"
        label.textColor = .black
        
        
        //Botao ta funcionando direitinho
        let Botao = UIButton();
        Botao.setTitle("Certa", for: .normal);
        Botao.backgroundColor = .black; //Cor do botao
        Botao.frame = CGRect(x:  60, y: 300, width: 120, height: 40); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(prox3), for: .touchUpInside); //Evento do botao
        
        let Botao2 = UIButton();
        Botao2.setTitle("Errado", for: .normal);
        Botao2.backgroundColor = .black; //Cor do botao
        Botao2.frame = CGRect(x: 190, y: 300, width: 120, height: 40); //Dimensoes do botao
        Botao2.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        let Botao3 = UIButton();
        Botao3.setTitle("Errado", for: .normal);
        Botao3.backgroundColor = .black; //Cor do botao
        Botao3.frame = CGRect(x: 60, y: 400, width: 120, height: 40); //Dimensoes do botao
        Botao3.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        let Botao4 = UIButton();
        Botao4.setTitle("Errado", for: .normal);
        Botao4.backgroundColor = .black; //Cor do botao
        Botao4.frame = CGRect(x: 190, y: 400, width: 120, height: 40); //Dimensoes do botao
        Botao4.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        
        //Adicionando a label a view
        view.addSubview(Botao);
        view.addSubview(Botao2);
        view.addSubview(Botao3);
        view.addSubview(Botao4);
        view.addSubview(label);
        self.view = view
        
    }
}

//VIEW DA PAGINA DE ERRO
class ErroViewController:UIViewController{
    
    @IBAction func erro(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina3 = Pag2ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina3, animated: true) //Animacaozinha da transicao
    }
    override func viewDidLoad(){
        super.viewDidLoad();
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Errou.jpg")!) //cor da tela de erro
        
        //Label da tela do meio
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 300, height: 50)
        label.text = "ERRROOO"
        label.textColor = .white
        
        let BotaoErro = UIButton();
        BotaoErro.setTitle("RECOMECAR", for: .normal);
        BotaoErro.backgroundColor = .black; //Cor do botao
        BotaoErro.frame = CGRect(x: 90, y: 400, width: 220, height: 70); //Dimensoes do botao
        BotaoErro.addTarget(self, action: #selector(erro), for: .touchUpInside); //Evento do botao
        
        //Adicionando a label a view
        view.addSubview(label);
        view.addSubview(BotaoErro);
        self.view = view
        
    }
}


//View da tela principal
class PrincipalViewController:UIViewController{ //Criando a view da tela inicial do QUIZ
    
    @IBAction func prox(selection:UIBarButtonItem){ //Funcao da proxima tela
        let Pagina2 = Pag2ViewController() //Chamando a proxima view ao clique do PROXIMO
        navigationController?.pushViewController(Pagina2, animated: true) //Animacaozinha da transicao
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        //Propriedades de cor da tela principal
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "PaiCelta.jpg")!)//Cor de fundo da tela principal
        self.view.translatesAutoresizingMaskIntoConstraints = false
        //Titulo da Barra de navegacao principal
        
        //Label do henlo
        let label = UILabel()
        label.frame = CGRect(x: 140, y: 200, width: 200, height: 18);
        label.text = "Yamauquiz :)";
        label.numberOfLines = 40;
        label.textColor = .black
        
        //Botao ta funcionando direitinho
        let Botao = UIButton();
        Botao.setTitle("COMECAR", for: .normal);
        Botao.backgroundColor = .black; //Cor do botao
        Botao.frame = CGRect(x: 130, y: 300, width: 120, height: 40); //Dimensoes do botao
        Botao.addTarget(self, action: #selector(prox), for: .touchUpInside); //Evento do botao
        
        //COLOCANDO OS ITENS NA VIEW
        view.addSubview(label)
        view.addSubview(Botao)
        self.view = view
    }
}

//Iniciando as views
let rootViewController = PrincipalViewController()
let navigationController = UINavigationController(rootViewController: rootViewController)
PlaygroundPage.current.liveView = navigationController
