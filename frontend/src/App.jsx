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
          <table className="table table-striped table-hover">
            <thead>
              <tr>
                <th colSpan={2} className="border">
                  Tabla 1
                </th>
                <th colSpan={2} className="border">
                  Tabla 2
                </th>
                <th colSpan={2} className="border">
                  Tabla 3
                </th>
              </tr>
              <tr>
                <th className="border">Campo 1</th>
                <th className="border">Campo 2</th>
                <th className="border">Campo 2</th>
                <th className="border">Campo 3</th>
                <th className="border">Campo 3</th>
                <th className="border">Campo 4</th>
              </tr>
            </thead>
            <tbody>
              {data.map((row, i) => {
                return (
                  <tr key={i}>
                    <td>{row.tabla1.campo1}</td>
                    <td>{row.tabla1.campo2}</td>
                    <td>{row.tabla2.campo1}</td>
                    <td>{row.tabla2.campo2}</td>
                    <td>{row.tabla3.campo1}</td>
                    <td>{row.tabla3.campo2}</td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}

export default App;
