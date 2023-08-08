import axios from "axios";
import { useState } from "react";

function App() {
  const [data, setData] = useState([]);

  async function consulta() {
    const rutaURL = "/server/consulta.php";
    axios
      .get(rutaURL)
      .then((response) => {
        setData(response.data);
      })
      .catch((error) => {
        console.error("Error al realizar la consulta", error);
      });
  }

  return (
    <div className="container w-100 border justify-content-center p-5">
      <div className="row">
        <div className="col text-center">
          <button
            type="button"
            className="btn btn-lg btn-primary"
            onClick={consulta}
          >
            Consulta
          </button>
          <hr />
        </div>
      </div>
    </div>
  );
}

export default App;
