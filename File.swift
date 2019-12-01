import SpeeblySDK

class SpeeblyStore: SpeeblyVoiceSearchDelegate {
   
    var isStarted: Bool = false
    var mySpeebly:Speebly? = nil
  
    //starts voice query. this method is called from a button or a siri shortcut
    func startSpeeblyVoiceQuery(eventName:String) {
        self.isStarted = true
        self.mySpeebly = Speebly()
        self.mySpeebly?.delegate = self
        mySpeebly?.start(eventName: eventName)
    }
    
    //stops voice query, this methed  is called from a button or when an error has occured
    func stopSoeeblyVoiceQuery (){
       if self.mySpeebly != nil {
           self.mySpeebly?.stop()
       }
    }
    
    // speebly voice query delegate
    // didStateChange is called when the state changes
    func didStateChange(state: String) {
        print("state" + state)
    }
    
    // speebly voice query delegate
    // didReceiveQueryResult is called when voice/text query is completed
    func didReceiveQueryResult(speeblyQueryResult: SpeeblyResponse) {
        print("this is the result from voice or text query" + speeblyQueryResult )
    }
    
    // speebly voice query delegate
    // didReceivePartialTranscription is called during the transctiption stage
    func didReceivePartialTranscription(partialTranscription: String) {
       print("didReceivePartialTranscription  displays the realtime results of the speech to text transcription" + partialTranscription)
    }
    
}
