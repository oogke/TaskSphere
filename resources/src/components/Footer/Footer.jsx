import React from "react";
import { Link } from "react-router-dom";
import "../../assets/css/components/Footer.css";
function Footer()
{
return (
    <>
    
<section id="footer" class="section footer">
        <div class="container">
            <div class="footer-container">
                <div class="footer-center">
                <h3>ABOUT US</h3>
                <p>The majority of independent <br /> properties are losing out <br /> on a lot of business for <br /> one very simple reason: <br /> their hotel websites are poorly <br /> designed.</p>
                </div>
                <div class="footer-center">
                    <h3>USEFUL LINKS</h3>
                    <Link to="">Home</Link>
                    <Link to="/about">About</Link>
                    <Link to="/contact">Contact</Link>
                    <Link to="/user">User</Link>
                </div>
                <div class="footer-center">
                    <h3>CONTACT INFO</h3>
                    <p>Sudal-9,Bhaktapur <br />9806531378<br />www.swiftstay.com</p>
                </div>
                <div class="footer-center">
                    <h3>OPENING HOURS</h3>
                    <div>
                        
                        Sun: 6AM-10PM
                    </div>
                  
                    <div>
                       
                       Mon-wed: 8AM-9PM
                    </div>
                    <div>
                       Thu: 7AM-10PM
                    </div>
                    <div>
                   Fri & Sat: 5AM-11PM
                    </div>
                </div>
            </div>
        </div>
    </section>
    </>
)
}
export default Footer;