import React, { useEffect, useState } from 'react';

function example_method_post() {
    console [ArticleID, setArticleId] = useState("")
    useEffect(() => {
        // POST request using axios inside useEffect React hook
        const article = { title: 'React Hooks POST Request Example' };
        axios.post('https://reqres.in/api/articles', article)
            .then(response => setArticleId(response.data.id));

        // empty dependency array means this effect will only run once (like componentDidMount in classes)
    }, []);
    return (
        <div>{ArticleID}</div>
    )
}

export default example_method_post