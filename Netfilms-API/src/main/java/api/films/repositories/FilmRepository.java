package api.films.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import api.films.models.Film;

public interface FilmRepository extends JpaRepository<Film, Long>{

}
