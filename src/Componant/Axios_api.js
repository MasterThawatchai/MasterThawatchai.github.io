import React, { useEffect, useState } from 'react';
import axios from 'axios';
import {fetDataApiTest}from "../Api/todo.api"

function Admin() {
    const [data, setData] = useState([])

    useEffect(() => {
        getApitodo()
    }, [])

    const getApitodo = async () => {
        let dataApi = await fetDataApiTest()
        setData(dataApi)
    }
    return (
        <div>
            <div>select</div>
            <select>
                {
                    data.map((item, index) => {
                        console.log(item.title);
                        return <option key={index} style={{ color: index % 2 === 0 ? "red" : "blue", background: index % 2 === 0 ? "yellow" : "green" }}>
                            {item.title}
                        </option>
                    })
                }
            </select>

        </div>
    )
}

export default Admin;