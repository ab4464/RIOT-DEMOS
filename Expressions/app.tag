<app>
  <h2 class="heading">Change the options to see what happens</h2>
  <br />
  <div>
    <form>
      <div class="form-row">
        <div class="form-group col-md-2 col-md-offset-3">
          <label for="lastname">Gender: </label>
          <select class="form-control" ref="gender" onchange={changeName}>
            <option value="">--Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
          </select>
        </div>
        <div class="form-group col-md-4">
          <label> Name: </label>
          <input type="text" value={username} class="form-control"/>
        </div>
      </div>
    </form>
    <form>
      <div class="form-row">
        <div class="form-group col-md-2 col-md-offset-3">
          <label>Skill Level: </label>
          <select class="form-control" ref="skills" onchange={getSkill}>
            <option value="">--Select Skill Level</option>
            <option value="beginner">Beginner</option>
            <option value="advanced">Advanced</option>
          </select>
        </div>
        <div class="form-group col-md-4">
          <label>Message: </label>
          <h4 type="text">{message}</h4>
        </div>
      </div>
  </form>

    <div class="row">
      <div class="col-md-9 col-md-offset-3">
        <br /><br />
        <label>Color: </label>
        <br />
        <label>RED: </label>
        <input type="radio" name="color" value="red" onchange={getColor}/>

        <label>BLUE: </label>
        <input type="radio" name="color" value="blue" onchange={getColor}/>

        <label>GREEN: </label>
        <input type="radio" name="color" value="green" onchange={getColor}/>
        <br /><br />
        <div class="box">
          <h4 style="color: {color}">{color}</h4>
        </div>
        <div class="box">
          <h4 style="color: {color}">{color}</h4>
        </div>
        <br />
        <div class="smile" if={color}>
          <div class="tongue" style="background-color: {color}"></div>
        </div>
      </div>
    </div>





  <script>
    this.changeName = function(e){
      return this.username = (this.refs.gender.value == "male") ? "John Doe" : "Jane Doe";
    };
    this.getSkill = function(e){
      return this.message = (this.refs.skills.value == "beginner") ? "You're still a newbie. Keep working!" : "You did it. You're a real PRO!";
    };

    this.getColor = function(e){
      this.color = e.target.value;
    }

  </script>
  <style>
    .top{
      margin-top: 20px;
    }
    .box{
      display: inline-block;
      width: 90px;
      height: 90px;
      border-radius: 100px;
      background-color: black;
      color: white;
      margin-left: 10px;
    }
    .box h4{
      text-transform: uppercase;
      width: inherit;
      padding-top: 15px;
      font-size: 16px;
    }
    .smile{
      display: block;
      position: relative;
      top: 25px;
      width: 190px;
      height: 60px;
      margin-left: 10px;
      background-color: black;
      border-radius: 100px;
      border-top-left-radius: 50px;
      border-top-right-radius: 50px;
    }
    .tongue{
      display: block;
      position: relative;
      top: 28px;
      left: 30px;
      width: 80px;
      height: 30px;
      margin-left: 10px;
      background-color: red;
      border-top-left-radius: 50px;
      border-top-right-radius: 50px;
    }
  </style>
</app>
