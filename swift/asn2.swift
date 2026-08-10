class Event{
    var eventName: String
    var location: String
    var date: String
    var organizer: String
    
    init(eventName: String, location: String, date: String, organizer: String){
        self.eventName = eventName
        self.location = location
        self.date = date
        self.organizer = organizer
    }
}

var e = Event(eventName: "A", location: "B", date: "C", organizer: "D")
print(e)
