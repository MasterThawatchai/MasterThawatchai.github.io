import React, { useEffect, useState } from 'react';
import { Nestle } from "../Logic/admin.lojic"

function Admin() {
    const [data, setData] = useState([])

    useEffect(() => {
        getApitodo()   
    }, [])

    const getApitodo = async () =>{
        let getData = await Nestle()
        setData(getData)
    }
    // console.log(data);
    return (
        <div>
            {
                data.map((item, index) => {
                    return <div key={index}>{item}</div>
                })
            }
        </div>
    )
}

export default Admin;