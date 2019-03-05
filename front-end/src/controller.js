class Controller{
  constructor(){
    this.userAdapter = new Adapter("http://localhost:3000/users")
  }

  start(){
    console.log("starting");
    let promise = this.userAdapter.getAllUsers()
    promise.then((userAray)=>{this.handleArray(userAray)})

  }

  handleArray(array){
    this.getBody().innerText = ""
    array.forEach(this.renderUser.bind(this))
  }

  createUserDiv(){
    let div = document.createElement("div")
    div.className = "users-container"
    return div
  }
  getBody(){
    return document.getElementById('whole-body')
  }

  renderUser(user){
    let h1 = document.createElement("h1")
    let divCard = document.createElement("div")
    divCard.addEventListener('click',()=>{this.specficUser(user)})
    divCard.className = "user-card"
    let divCardFrame = document.createElement("div")
    divCardFrame.className = "user-card-frame"
    h1.innerText = user.first + " " + user.last
    divCardFrame.appendChild(h1)
    divCard.appendChild(divCardFrame)
    let div = this.createUserDiv()
    div.appendChild(divCard)
    this.getBody().appendChild(div)
  }

  specficUser(user){
    this.getBody().innerText = ""
    let h1 = document.createElement("h1")
    h1.innerText = user.first + " " + user.last

    let btn = document.createElement("button")
    btn.innerText = "Home"
    btn.addEventListener('click',()=>{this.start()})
    let div = this.createUserDiv()
    div.appendChild(h1)
    div.appendChild(btn)
    this.getBody().appendChild(div)

    console.log("hi");
  }

  // <div class="user-card">
  //   <div class="user-card-frame">
  //     hi
  //   </div>
  // </div>




}
