import styles from './Film.module.css'
import { Link } from 'react-router-dom'

const Film = ({film}) => {
  
  const imageURL = 'https://image.tmdb.org/t/p/w300' + film.poster_path

  return (
    <li className={styles.filmCard}>
      <Link to={'/film/' + film.id} >
      <img 
        width={230}
        height={345}
        className={styles.filmImage} 
        src={imageURL} 
        alt={film.name} />
      <div>{film.name}</div>
      </Link>
    </li>
  )
}

export default Film