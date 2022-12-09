package api.films.services;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import api.films.models.Serie;
import api.films.repositories.SerieRepository;

@Service
public class SerieService {
	
	@Autowired
	private SerieRepository repos;
	
	public List<Serie> serieList(){
		return repos.findAll();
	}
	
	public Optional<Serie> findSerieById(long id){
		return repos.findById(id);
	}
	
}
