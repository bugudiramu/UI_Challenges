import React from 'react'
import './css/style.css';
import reportingImg from "./images/reportingImg.png"

function Rtr() {
    return (
        <section class="rtr">
      <h1>
        Real-time reporting for smarter business decisions.
      </h1>
      <div class="rtr_flex">
        <img src={reportingImg} alt="rtrImg" />
        <div class="rtr_desc">
          <p>
            Vend takes the guesswork out of decision-making with powerful sales
            and inventory reporting that’s live and accurate to the minute.
            Increase profitability with key retail metrics including sales,
            inventory levels, sell-through rates, margin and more. Access
            reports 24/7 from anywhere.
          </p>
          <a href="#">Learn more about real-time reporting & insights in Vend</a>
        </div>
      </div>
    </section>
    )
}

export default Rtr
