// import logo from './logo.svg';
import './App.css';
import React from 'react';
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Admin from "./Componant/Admin";
import Select from "./Componant/Axios_api";
import Axios_test from './Componant/Axios_test';
import Post_api from './Componant/example_method_post';

function App() {

  return (
    <div className="App">
      <Router>
          <Routes>
            <Route path="/" element={<Admin/>}/>
            <Route path="/selectApi" element={<Select/>}/>
            <Route path="/apitest" element={<Axios_test/>}/>
            <Route path="/post_api" element={<Post_api/>}/>
          </Routes>
      </Router>
    </div>
  );
}

export default App;
// V5VyTox6GSeoa3MqCvsDJv9MNv4efYR5GP4ovYbM3FS


// const [test, setTest] = useState([])
// let number = [1,2,3,4,5,6,7,8,9,10]

// useEffect(()=> {
//   let summit = number.map((item)=> {
//     return <p>{item} {item % 2 === 0 ? "true" : "flase"}</p>
//   })
//   setTest(summit)
//   console.log(summit)
// },[number])
// <div>
// filter ตัวที่หาร 3 ลงตัว
// </div>
// {test.map((temp)=> {
//   // console.log(temp)
//   return temp
// })}