console.log("Tes")
fetch("https://api.genshin.dev/domains")
    .then(Response => Response.json())
    .then(json => {
        let body = ``
        console.log(body)
        json.forEach(data => {
            console.log(data);
            body += `<tr>
            <td id="nomor">${data}</td>
          <td id="kode_id">${data}</td>
          <td id="nama">${data}</td>
          <td id="no_tlp">${data}</td>
          <td id="email">${data}</td>
          <td id="tgl_lahir">${data}</td>
          <td id="alamat">${data.t}</td>
          <td id="status">${data}</td>
          <td id="gaji">${data}</td>
          <td id="nomor">
              <form action="" method="post" enctype="multipart/form-data">
                  <input type="text" name=kode_id value=${data} ? hidden>
                  <input id="tombol" name=action type=submit value=Ubah>
                  <input style="background-color: #fc5185" id="tombol" name=action type=submit value=Hapus>
              </form>
          </td>
      </tr>`

        });
        document.getElementById("karyawanBody").innerHTML = body;
    })

// async function postAPI() {
//     const obj = {
//         judul: document.getElementById("judulNote").value,
//         text: document.getElementById("textNote").value
//     }
//     await fetch("http://192.168.60.128:3030/api/create", {
//         method: "POST",
//         body: JSON.stringify(obj),
//         headers: {
//             'Accept': 'application/json',
//             'Content-Type': 'application/json'
//         }
//     })
//         .then(response => {
// 	    location.reload()
//             alert(`Berhasil ${response.json()}`);
//         })
//         .catch(err => alert(`Tidak Berhasil ${err}`))
// }

// async function getIdAPI(idValue) {
//     const judulForm = document.getElementById("judulNote" + idValue);
//     const textForm = document.getElementById("textNote" + idValue);
//     const obj = {
//         id: idValue
//     }
//     try {
//         const notes = await fetch("https://pokeapi.co/api/v2/pokemon/", {
//             method: "POST",
//             body: JSON.stringify(obj),
//             headers: {
//                 'Accept': 'application/json',
//                 'Content-Type': 'application/json'
//             }
//         })


//         const res = await notes.json()
//         res.forEach(oldValue => {
//             judulForm.setAttribute("value", `${oldValue.judul}`)
//             textForm.innerHTML = oldValue.text
//         })
//     } catch (err) {
//         console.log(err)
//     }
// }

// async function updateAPI(idNote) {
//     const obj = {
//         id: idNote,
//         judul: document.getElementById("judulNote" + idNote).value,
//         text: document.getElementById("textNote" + idNote).value
//     }
//     await fetch("http://192.168.60.128:3030/api/update", {
//         method: "PUT",
//         body: JSON.stringify(obj),
//         headers: {
//             'Accept': 'application/json',
//             'Content-Type': 'application/json'
//         }
//     })
//         .then(response => {
//             alert(`Berhasil ${response.json()}`);
//             location.reload()
//         })
//         .catch(err => alert(`Tidak Berhasil ${err}`))
// }
// function deleteNote(idNote) {
//     const deleteConfirm = confirm("Apakah anda yakin ingin menghapusnya")
//     if (deleteConfirm) {
//         deleteAPI(idNote)
//     }

// }
// async function deleteAPI(idNote) {
//     const obj = {
//         id: idNote,
//     }
//     await fetch("http://192.168.60.128:3030/api/delete", {
//         method: "DELETE",
//         body: JSON.stringify(obj),
//         headers: {
//             'Accept': 'application/json',
//             'Content-Type': 'application/json'
//         }
//     })
//         .then(response => {
//             alert(`Berhasil ${response.json()}`);
//             location.reload()
//         })
//         .catch(err => alert(`Tidak Berhasil ${err}`))
// }