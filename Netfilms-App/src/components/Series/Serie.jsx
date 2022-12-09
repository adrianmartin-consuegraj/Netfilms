import { Link } from 'react-router-dom'
import styles from './Serie.module.css'

const Serie = ({serie}) => {

  const imageURL = 'https://image.tmdb.org/t/p/w300' + serie.poster_path
    
  return (
    <li className={styles.serieCard}>
      <Link to={'/serie/' + serie.id} >
      <img 
        width={230}
        height={345}
        className={styles.serieImage} 
        src={imageURL} 
        alt={serie.name} />
      <div>{serie.name}</div>
      </Link>
    </li>
  )
}

export default Serie