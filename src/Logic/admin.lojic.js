import {coconutTodoSecount} from "../Api/todo.api"

export const Nestle = async ()=> {
    let data = await coconutTodoSecount()
    let data2 = data.map((item,index)=> {
        if (index % 3 === 0) {
            console.log(item)
            console.log(index)
            return <p style={{color: "red" }}>{item.title}</p>
           } else {
            return <p style={{color: "#333"}}>{item.title}</p>
           }

    })
    return data2
}

