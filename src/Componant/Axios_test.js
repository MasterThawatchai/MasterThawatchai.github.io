import React, { useState, useEffect } from 'react';
import axios from "axios";
import {fetDataApiTest} from "../Api/todo.api"

function Axios_test() {
    const [data, setData] = useState([])

    useEffect(() => {
        getApiPushEdite()
    },[])

    const getApiPushEdite = async () => {
        let dataCoco = await fetDataApiTest()
        setData(dataCoco)

    }

    return (
        <div>
            {
                data.map((item, index) => {
                    return <div key={index} style={{border:" 1px solid #333", padding: "20px"}} >
                        {item.title}<br />
                        <button>edit</button>
                    </div>
                })
            }

        </div>
    )
}

export default Axios_test