import React from 'react'
import './css/style.css';
import enterprise from "./images/enterprise.png"

function Enterprise() {
    return (
        <section class="enterprise">
        <div class="enterprise_desc">
          <h1>The perfect cloud platform for retail at scale</h1>
  
          <p>
            Vend is the sleek, cloud-based retail management system that allows
            you to sell in store and online - wherever your customers are.
          </p>
          <button>Get In Touch</button>
  
        </div>
        <div class="enterpriseImg">
          <img height="500" src={enterprise} alt="enterprise img" />
        </div>
      </section>
    )
}

export default Enterprise
