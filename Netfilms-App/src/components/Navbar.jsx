import { Link } from 'react-router-dom'
import logo from '../../src/netfilms-logo.png'

const Navbar = () => {
  return (
    <>
    <nav className="nav">
        
        <Link to="/" className='site-title'><img src={logo} alt='No-Logo' width="9%"></img>Netfilms App</Link>
        
        <ul>
            <li>
                <Link to="/films" className='active'>Films Page</Link>   
            </li>
            <li>
                <Link to="/series">Series Page</Link>
            </li>
        </ul>

    </nav>
    </>
  )
}

export default Navbar