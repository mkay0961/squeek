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
    this.getUserDiv().innerText = ""
    array.forEach(this.renderUser.bind(this))
  }

  getUserDiv(){
    return document.getElementById("users-container")
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
    this.getUserDiv().appendChild(divCard)
  }

  specficUser(user){
    this.getUserDiv().innerText = ""
    let h1 = document.createElement("h1")
    h1.innerText = user.first + " " + user.last

    let btn = document.createElement("button")
    btn.innerText = "Home"
    btn.addEventListener('click',()=>{this.start()})
    this.getUserDiv().appendChild(h1)
    this.getUserDiv().appendChild(btn)

    console.log("hi");
  }

  // <div class="user-card">
  //   <div class="user-card-frame">
  //     hi
  //   </div>
  // </div>




}
