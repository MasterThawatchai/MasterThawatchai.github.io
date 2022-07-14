
import React, { useEffect, useState } from 'react';
import axios from 'axios';
// import {fetDataApiTest}from "../Api/todo.api"

function Admin() {
    const [data, setPostId] = useState([])

        useEffect(() => {
            // POST request using fetch inside useEffect React hook
            const requestOptions = {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ title: 'React Hooks POST Request Example' })
            };
            axios('https://reqres.in/api/posts', requestOptions)
                .then(response => response.json())
                .then(data => setPostId(data));
        
        // empty dependency array means this effect will only run once (like componentDidMount in classes)
        }, []);


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