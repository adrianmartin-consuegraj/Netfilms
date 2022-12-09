package api.films.services;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import api.films.models.Film;
import api.films.repositories.FilmRepository;

@Service
public class FilmService {

	@Autowired
	private FilmRepository repos;
	
	public List<Film> filmList(){
		return repos.findAll();
	}
	
	public Optional<Film> findFilmById(long id){
		return repos.findById(id);
	}
	
}
