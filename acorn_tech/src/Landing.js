import React from 'react'
import './css/style.css';
import acorn from "./images/acorn.png"
function Landing() {
    return (
        <section className="landing">
        <div className="heading">
           <h1>Upgrade your retail store for tomorrow.</h1>
           <p className="desc">Covid-19 is affecting retail globally. It's more important than ever to have a multi-channel retail business. Prepare for the retail resurgence with Vend.</p>
        <button>Try Vend for free</button>
        <p>Includes 24/7 access to support & advice to get you started. No commitment, no credit card required.</p>
        </div>
        <div className="headingImg">
            <img height="600" src={acorn} alt="Acorn Image" />
        </div>
    </section>
    )
}

export default Landing
