class Ball{
  var type = "regular"
  init(type: String? = nil){
    self.type = type ?? self.type
  }
}
