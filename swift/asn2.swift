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
    
    func scheduleEvent(){
        print("Event Scheduled")
    }
    
    func rescheduleEvent(date: String){
        self.date = date
        print("Event rescheduled to \(date)")
    }
    
    func displayInfo(){
        print("Event: \(eventName), Location: \(location), Date: \(date), Organizer: \(organizer)")
    }
}

class Satsang : Event{
    var speakerName: String
    var bhajanList: [String]
    var duration: Double
    
    init(eventName: String, location: String, date: String, organizer: String, speakerName: String, bhajanList: [String], duration: Double){
        self.speakerName = speakerName
        self.bhajanList = bhajanList
        self.duration = duration
        super.init(eventName: eventName, location: location, date: date, organizer: organizer)
    }
    
    func addBhajan(bhajan: String){
        bhajanList.append(bhajan)
    }
    
    func displayBhajans(date: String){ //date is required, but serves no function
        for b in bhajanList{
            print(b)
        }
    }
    
    override func displayInfo(){
        super.displayInfo()
        print("Speaker Name: \(speakerName), Duration: \(duration)")
        print("Bhajans- ")
        displayBhajans(date: self.date)
    }
}

class MeditationSession : Satsang{
    var online: Bool
    
    init(eventName: String, location: String, date: String, organizer: String, speakerName: String, bhajanList: [String], duration: Double, online: Bool){
        self.online = online
        super.init(eventName: eventName, location: location, date: date, organizer: organizer, speakerName: speakerName, bhajanList: bhajanList, duration: duration)
    }
    
    func isOnline(){
        if online{
            print("Is online")
        }
        else{
            print("is offline")
        }
    }
    
    override func displayInfo(){
        super.displayInfo()
        print("Online: \(online)")
    }
}

class Concert : Event{
    var performer: String
    var genre: String
    var ticketPrice: Double
    var seatsAvailable: Int
    
    init(eventName: String, location: String, date: String, organizer: String, performer: String, genre: String, ticketPrice: Double, seatsAvailable: Int){
        self.performer = performer
        self.genre = genre
        self.ticketPrice = ticketPrice
        self.seatsAvailable = seatsAvailable
        super.init(eventName: eventName, location: location, date: date, organizer: organizer)
    }
    
    func bookTicket(count: Int){
        if seatsAvailable >= count{
            seatsAvailable -= count
        }
        else{
            print("Not enough available seats")
        }
    }
    
    func isSoldOut(){
        if seatsAvailable <= 0{
            print("Yes, sold out")
        }
        else{
            print("Not sold out")
        }
    }
    
    override func displayInfo(){
        super.displayInfo()
        print("Performer: \(performer), Genre: \(genre), Ticket Price: \(ticketPrice), Seats Available: \(seatsAvailable) ")
    }
}

class RockConcert : Concert{
    var band: String
    
    init(eventName: String, location: String, date: String, organizer: String, performer: String, genre: String, ticketPrice: Double, seatsAvailable: Int, band: String){
        self.band = band
        super.init(eventName: eventName, location: location, date: date, organizer: organizer, performer: performer, genre: genre, ticketPrice: ticketPrice, seatsAvailable: seatsAvailable)
    }
    
    func getBandName() -> String{
        return band
    }
    
    override func displayInfo(){
        print("Band: \(band)")
        super.displayInfo()
    }
}

let e = Event(eventName: "ename", location: "location", date: "1-1-2026", organizer: "organizer")
e.displayInfo()
e.scheduleEvent()
e.rescheduleEvent(date: "2-2-2026")
e.displayInfo()

print("-------------------------")

let s = Satsang(eventName: "sname", location: "location", date: "1-1-2026", organizer: "organizer", speakerName: "spkrname", bhajanList: ["b1", "b2", "b3", "b4"], duration: 2.5)
s.addBhajan(bhajan: "b5")
s.displayInfo()
s.scheduleEvent()
s.rescheduleEvent(date: "2-2-2026")
s.displayInfo()

print("-------------------------")

let m = MeditationSession(eventName: "mname", location: "location", date: "1-1-2026", organizer: "organizer", speakerName: "spkrname", bhajanList: ["b1", "b2", "b3",], duration: 2.5, online: false)
m.displayInfo()
m.isOnline()

print("-------------------------")

let c = Concert(eventName: "cname", location: "location", date: "1-1-2026", organizer: "organizer", performer: "prfrmr name", genre: "genre", ticketPrice: 100, seatsAvailable: 1000)
c.displayInfo()
c.bookTicket(count: 10)
c.displayInfo()
c.isSoldOut()
c.bookTicket(count: 990)
c.isSoldOut()
c.displayInfo()

print("-------------------------")

let rc = RockConcert(eventName: "rcname", location: "location", date: "1-1-2026", organizer: "organizer", performer: "prfrmr name", genre: "genre", ticketPrice: 100, seatsAvailable: 1000, band: "QUEEN")
rc.displayInfo()
rc.bookTicket(count: 10)
rc.displayInfo()
print("Epic concert by \(rc.getBandName()) has tickets left")
