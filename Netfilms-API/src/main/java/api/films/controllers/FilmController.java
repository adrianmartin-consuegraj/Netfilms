package api.films.controllers;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import api.films.models.Film;
import api.films.services.FilmService;

@CrossOrigin({"*"})
@RestController
@RequestMapping("/")
public class FilmController {
	
	@Autowired
	private FilmService service;
	
	// endpoints
	@GetMapping("/films")
	public List<Film> showFilms(){
		return service.filmList();
	}
	
	@GetMapping("/film/{idFilm}")
	public Optional<Film> showFilm(@PathVariable("idFilm") long id){
		return service.findFilmById(id);
	}
	
}
