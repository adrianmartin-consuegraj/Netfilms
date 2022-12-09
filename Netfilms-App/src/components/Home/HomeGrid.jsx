import styles from './HomeGrid.module.css'

const HomeGrid = () => {

  return (
    <>

    <h1 className={styles.title}>How does this app work?</h1>
      
      <ol className={styles.homeGrid}>
        <li>The data of some movies and series was introduced into Workbench MySQL DataBase. Movies and series are stored in differents tables.</li>
        <li>All the data is recovered from the DB with Spring Boot and put into a local host with Json format. This part of the app is entirely coded with Java.</li>
        <li>The page is printed with React once all the Json data is fetched and placed in the proper component.</li>
      </ol>

      </>
  )

}

export default HomeGrid