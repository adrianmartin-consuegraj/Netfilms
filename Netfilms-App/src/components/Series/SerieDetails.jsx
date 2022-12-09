import { useEffect, useState } from 'react'
import { useParams } from 'react-router-dom'
import { get } from '../../utils/httpClient'
import styles from './SerieDetails.module.css'

const SerieDetails = () => {

    const { serieId } = useParams()
    const [serie, setSerie] = useState(null)
    const [imageURL, setImageURL] = useState()

    useEffect (() => {
        get('/serie/' + serieId).then((data) => {
            setSerie(data)
            setImageURL('https://image.tmdb.org/t/p/w300/' + data.poster_path)
        })
    }, [serieId])

    if(!serie){
        return null
    }

  return (
    <>
      <div className={styles.detailsContainer}>
        <img className= { `${styles.col} ${styles.serieImage}` }
        src={imageURL}
        alt={serie.name}
        />
      
        <div className={ `${styles.col} ${styles.serie}` }>
          <p className={ `${styles.firstItem }`}>
            <strong>Title:</strong> {serie.name}
          </p>

          <p>
          <strong>Seasons:</strong> {serie.seasons}
          </p>

          <p>
          <strong>Genre:</strong> {serie.genre}
          </p>

          <p>
          <strong>Desciption:</strong> {serie.overview}
          </p>

        </div>
      </div>
    </>
  )
}

export default SerieDetails 