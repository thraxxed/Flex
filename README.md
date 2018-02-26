# Meme Matcher
Demo Site: https://kchu93.github.io/memematcherwebsite/

Authors:
- Kevin Chu - (https://github.com/kchu93)
- Zachary Smith - (https://github.com/zzachsmith)
- Seth Little - (https://github.com/thraxxed/)

Meme Matcher is a Tinder inspired iOS application which matches users together based on shared interest in internet memes.

Link to iOS repo: https://github.com/thraxxed/MemeMatcher-iOS

## Functionality & MVP
- Users may create accounts with a profile picture and a 250 character bio.
- Users are presented a view with a single meme which they may approve (swipe right) or disapprove (swipe left).
- Users are "matched" together once a certain threshold of similarity in meme taste has been reached.
- Users may view all matches and open up a chat view with each individual match.
- Users matches take into account location and gender preferences

## Wireframes

![Session View](https://i.imgur.com/FDRIOZj.png)

![Match Page](https://i.imgur.com/3uJnNGi.png)

![User Profile](https://i.imgur.com/KIw57CN.png)

![Chat View 1](https://i.imgur.com/akrLA7v.png)

![Chat View 2](https://i.imgur.com/cLjr2zI.png)


## Technologies
### Backend: Rails
### Database: PostgreSQL
### iOS Language: Swift

## Application Storyboard
![Storyboard](https://i.imgur.com/gdg3OGX.png)

## Technical Challenges and Implementation Details
### Learning Swift
- Swift is a statically typed, compiled language

### User Match Algorithm
- Users are matched once they share 8 liked memes in common

### Handling User-uploaded images
- Pictures taken by iPhone cameras are typically very large files.  To prevent the dissatisfaction when a user must wait a long time when uploading their profile picture, we efficiently compress the image to a reasonable size while retaining much of its quality.
- Additionally, the image must be encoded as a string before being sent up to our back-end API as an HTTP Parameter

```Swift
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {

        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }

        // Set photoImageView to display the selected image.
        photoImageView.image = selectedImage.resizedTo1MB()

        let imageData:Data = UIImagePNGRepresentation(photoImageView.image!)!
        imageStr = imageData.base64EncodedString()

        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
 ```

 ### Making requests to our Rails back-end API

 ```Swift
    func getMessages(for id: Int, completion: ((Result<[Message]>) -> Void)?) {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "meme-matcher.herokuapp.com"
        urlComponents.path = "/api/messages"

        urlComponents.queryItems = [URLQueryItem(name: "id", value: "\(MemeMatcher.currentMatch)")]

        guard let url = urlComponents.url else { fatalError("Could not create URL from components") }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let task = session.dataTask(with: request) { (responseData, response, responseError) in
            DispatchQueue.main.async {
                if let error = responseError {
                    completion?(.failure(error))
                } else if let jsonData = responseData {
                    let decoder = JSONDecoder()
                    do {
                        let messages = try decoder.decode([Message].self, from: jsonData)
                        completion?(.success(messages))
                    } catch {
                        completion?(.failure(error))
                    }
                } else {
                    let error = NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey : "Data was not retrieved from request"]) as Error
                    completion?(.failure(error))
                }
            }
        }

        task.resume()
    }
 ```
