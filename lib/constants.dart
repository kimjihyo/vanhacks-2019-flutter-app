import 'dart:collection';

const String kSampleDogImage = 'https://img.maximummedia.ie/joe_ie/eyJkYXRhIjoie1widXJsXCI6XCJodHRwOlxcXC9cXFwvbWVkaWEtam9lLm1heGltdW1tZWRpYS5pZS5zMy5hbWF6b25hd3MuY29tXFxcL3dwLWNvbnRlbnRcXFwvdXBsb2Fkc1xcXC8yMDE5XFxcLzAzXFxcLzI3MjAzMDI2XFxcL2lTdG9jay01MjE2OTc0NTMuanBnXCIsXCJ3aWR0aFwiOjc2NyxcImhlaWdodFwiOjQzMSxcImRlZmF1bHRcIjpcImh0dHBzOlxcXC9cXFwvd3d3LmpvZS5pZVxcXC9hc3NldHNcXFwvaW1hZ2VzXFxcL2pvZVxcXC9uby1pbWFnZS5wbmc_aWQ9NDNiY2E5ZGU3ZWIyNjk3MzdhMGZcIixcIm9wdGlvbnNcIjpbXX0iLCJoYXNoIjoiNWI4YzZlN2U0ODZjNjE5Yzc3YTBiYzgwN2YwMmVkZDhmY2ZkY2I3NSJ9/istock-521697453.jpg';
const String kSampleDogImage2 = 'http://cdn.akc.org/content/article-body-image/samoyed_puppy_dog_pictures.jpg';
const kSampleDogImages = [
  'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2018/01/12201051/cute-puppy-body-image.jpg',
  'http://cdn.akc.org/content/article-body-image/samoyed_puppy_dog_pictures.jpg',
  'https://img.maximummedia.ie/joe_ie/eyJkYXRhIjoie1widXJsXCI6XCJodHRwOlxcXC9cXFwvbWVkaWEtam9lLm1heGltdW1tZWRpYS5pZS5zMy5hbWF6b25hd3MuY29tXFxcL3dwLWNvbnRlbnRcXFwvdXBsb2Fkc1xcXC8yMDE5XFxcLzAzXFxcLzI3MjAzMDI2XFxcL2lTdG9jay01MjE2OTc0NTMuanBnXCIsXCJ3aWR0aFwiOjc2NyxcImhlaWdodFwiOjQzMSxcImRlZmF1bHRcIjpcImh0dHBzOlxcXC9cXFwvd3d3LmpvZS5pZVxcXC9hc3NldHNcXFwvaW1hZ2VzXFxcL2pvZVxcXC9uby1pbWFnZS5wbmc_aWQ9NDNiY2E5ZGU3ZWIyNjk3MzdhMGZcIixcIm9wdGlvbnNcIjpbXX0iLCJoYXNoIjoiNWI4YzZlN2U0ODZjNjE5Yzc3YTBiYzgwN2YwMmVkZDhmY2ZkY2I3NSJ9/istock-521697453.jpg',
  'https://www.petmd.com/sites/default/files/Acute-Dog-Diarrhea-47066074.jpg',
];
const String kSampleSpcaImage = 'https://spca.bc.ca/wp-content/uploads/bcspcalogo-1000px.jpg';
