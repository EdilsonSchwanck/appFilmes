//
//  ViewController.swift
//  MeusFilmes
//
//  Created by Edilson Schwanck Borges on 15/02/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme( titulo: "007- Spectre", descricao: "Descrição 1", imagem: UIImage(named: "filme1")! )
        filmes.append(filme)
        
        filme = Filme(titulo:"Start Wars", descricao: "descrição 2", imagem: UIImage(named: "filme2")!)
        filmes.append(filme)
        
        filme = Filme( titulo: "Impacto Mortal", descricao: "Descrição 3", imagem: UIImage(named: "filme3")! )
        filmes.append(filme)
        
        filme = Filme(titulo:"DeadPool", descricao: "descrição 4", imagem: UIImage(named: "filme4")!)
        filmes.append(filme)
        
        filme = Filme( titulo: "O Regresso", descricao: "Descrição 5", imagem: UIImage(named: "filme5")! )
        filmes.append(filme)
        
        filme = Filme(titulo:"A Herdeira", descricao: "descrição 6", imagem: UIImage(named: "filme6")!)
        filmes.append(filme)
        
        filme = Filme( titulo: "Caçadores", descricao: "Descrição 7", imagem: UIImage(named: "filme7")! )
        filmes.append(filme)
        
        filme = Filme(titulo:"Regresso", descricao: "descrição 8", imagem: UIImage(named: "filme8")!)
        filmes.append(filme)
        
        filme = Filme( titulo: "Tarzan", descricao: "Descrição 9", imagem: UIImage(named: "filme9")!)
        filmes.append(filme)
        
        filme = Filme(titulo:"Hardcore", descricao: "descrição 10", imagem: UIImage(named: "filme10")!)
        filmes.append(filme)
        
        
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let filme: Filme = filmes[indexPath.row]
        
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.filmeImegeView.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        //imagem arendondada
        celula.filmeImegeView.layer.cornerRadius = 42
       
        
        
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "detalheFilme"){
            if let indexpath = tableView.indexPathForSelectedRow{
                let filmeSelecionado = self.filmes[ indexpath.row ]
                let viewCotrollerDestino = segue.destination as! DetalhesFilmeViewController
                viewCotrollerDestino.filme = filmeSelecionado
            }
        }
    }

}

