import { useEffect, useState } from 'react'
import { useParams }  from 'react-router'
import { get } from '../../utils/httpClient'
import styles from './FilmDetails.module.css'

const FilmDetails = () => {
  
  const { filmId } = useParams()
  const [film, setFilm] = useState(null)
  const [imageURL, setImageURL] = useState()

  useEffect( ()=> {
    get('/film/' + filmId).then((data) => {
      setFilm(data)
      setImageURL('https://image.tmdb.org/t/p/w300/' + data.poster_path)
    })
    
  }, [filmId])

  if(!film){
    return null
  }

  return (
    <>
      <div className={styles.detailsContainer}>
        <img className= { `${styles.col} ${styles.filmImage}` }
        src={imageURL}
        alt={film.name}
        />
      
        <div className={ `${styles.col} ${styles.film}` }>
          <p className={ `${styles.firstItem }`}>
            <strong>Title:</strong> {film.name}
          </p>

          <p>
          <strong>Genre:</strong> {film.genre}
          </p>

          <p>
          <strong>Desciption:</strong> {film.overview}
          </p>

        </div>
      </div>
    </>
  )
}

export default FilmDetails