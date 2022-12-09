package api.films.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import api.films.models.Serie;

public interface SerieRepository extends JpaRepository<Serie, Long>{

}
