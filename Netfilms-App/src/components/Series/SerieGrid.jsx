import { useEffect, useState } from 'react'
import { get } from '../../utils/httpClient'
import Serie from './Serie'
import styles from './SerieGrid.module.css'

const SerieGrid = () => {

    const [series, setSeries] = useState([])

    // this useEffect is going to be executed when the entire component is already load
    useEffect (() => {
        get('/series').then((data) => setSeries(data)
        )}, [])
  
    return (
    <>
        <h1 className={styles.title}>Series</h1>  
        
        <ul className={styles.serieGrid}>
        
            {series && series.map((serie) => {
                return <Serie key={serie.id} serie={serie} />
            })}

        </ul>
    </>
  )

}

export default SerieGrid