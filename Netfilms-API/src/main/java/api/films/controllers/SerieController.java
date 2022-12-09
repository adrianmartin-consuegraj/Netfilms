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
import api.films.models.Serie;
import api.films.services.SerieService;

@CrossOrigin({"*"})
@RestController
@RequestMapping("/")
public class SerieController {

	@Autowired
	private SerieService service;
	
	// endpoints
	@GetMapping("series")
	public List<Serie> showAllSeries(){
		return service.serieList();
	}
	
	@GetMapping("/serie/{idSerie}")
	public Optional<Serie> showSerieById(@PathVariable("idSerie") long id){
		return service.findSerieById(id);
	}
	
}
