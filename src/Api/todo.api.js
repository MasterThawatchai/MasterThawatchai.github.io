import axios from "axios"

export function coconutTodo() {
    console.log("hello coconut")
}

export const fetDataApiTest = async () => {
    let data = await axios.get("https://jsonplaceholder.typicode.com/todos?_limit=6").then((res) => {
        console.log(res)
        return res.data
    })
    return data
}

export async function coconutTodoSecount() {
    let data = await axios.get("https://jsonplaceholder.typicode.com/todos?_limit=20").then((res) => {
        return res.data
    })
    return data
}