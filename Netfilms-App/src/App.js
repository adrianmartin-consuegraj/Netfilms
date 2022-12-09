import { Route, Routes } from 'react-router-dom'
import Navbar from './components/Navbar'
import HomePage from './pages/HomePage'
import FilmsPage from './pages/FilmsPage'
import SeriesPage from './pages/SeriesPage'
import FilmDetails from './components/Films/FilmDetails'
import SerieDetails from './components/Series/SerieDetails'

function App() {
  
  return (
    <>
        <Navbar />

          <Routes>
            <Route path='/' element={<HomePage />} />
            <Route path='/films' element={<FilmsPage />} />
            <Route path='/series' element={<SeriesPage />} />
            <Route path='/film/:filmId' element={<FilmDetails />} />
            <Route path='/serie/:serieId' element={<SerieDetails />} />
          </Routes>
      </>
  );
}

export default App
