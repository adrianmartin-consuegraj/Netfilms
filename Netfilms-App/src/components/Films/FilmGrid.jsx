import { useEffect, useState } from 'react'
import Film from './Film'
import { get } from '../../utils/httpClient'
import styles from './FilmGrid.module.css'

const FilmGrid = () => {

  const [films, setFilms] = useState([])

  // this useEffect is going to be executed when the entire component is already load
  useEffect (() => {
    get('/films').then((data) => setFilms(data)
    )}, [])

  return ( 
    <>
      <h1 className={styles.title}>Films</h1>
      
      <ul className={styles.filmGrid}>

        {films && films.map((film) => {
          return <Film key={film.id} film={film} /> 
        })}

      </ul>
    </>
  )

}

export default FilmGrid