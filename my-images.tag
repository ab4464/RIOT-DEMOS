<my-images>
  <div class="img-position">
    <img class="img-fluid" src={opts.galery} width="300px;" height="300px;" if={isVisible}/>
    <img src="http://placehold.it/290x290" alt="..." class="img-thumbnail" if={!isVisible}>
    <button class="btn btn-danger btn-sm btn-block btn-position" max-width="30px;" onclick={changeVisibility}>{isHiden}</button>
  </div>

  <script>
    this.isVisible = true;
    this.isHiden = "HIDE";
    this.changeVisibility = function(e){
      this.isVisible = !this.isVisible;
      this.isHiden = (this.isVisible == true) ?  "HIDE" : "SHOW";
    }
  </script>

  <style>
    .img-position{
      overflow-x: hidden;
      display: inline-block;
      padding: 20px;
      padding-left: 15px;
      width: 400px;
    }
    .btn-position {
      margin-top: 20px;
      width: 300px;
    }
  </style>
</my-images>
