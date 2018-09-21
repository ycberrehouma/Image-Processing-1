CS 659 Image Processing 
Homework #1 - Yassine Berrehouma


1)	a- 



     b- imfinfo('barbara.jpg')
ans = 
 struct with fields:
           Filename: 'C:\Users\ycberrehouma\Documents\MATLAB\barbara.jpg'
        FileModDate: '16-Sep-2018 16:48:55'
           FileSize: 172537
             Format: 'jpg'
      FormatVersion: ''
              Width: 720
             Height: 576
           BitDepth: 24
          ColorType: 'truecolor'
    FormatSignature: ''
    NumberOfSamples: 3
       CodingMethod: 'Huffman'
      CodingProcess: 'Sequential'
            Comment: {}

c- saved_image = barbara 
imwrite(saved_image,'barbara_mine.jpg')
imshow('barbara_mine.jpg')
d- For [X,Y] : [92 134]   ? [R,G,B]: [61,35,22]
For [X,Y] : [380 300]   ? [R,G,B]: [204 139 109]
d-size(barbara)
ans =  576   720     3

2-a) >> img_gray = imread('barbara.jpg');
>> img_gray = rgb2gray(img_gray);
>> imwrite(img_gray,'img_gray2.jpg');
>> imshow('img_gray2.jpg')
 


Comparison between img_gray2 and img_gray : 
imshowpair(img_gray2,img_gray,'blend','Scaling','joint')
 

b- whos('img')
  Name        Size                   Bytes         Class    Attributes
  img       576x720x3            1244160  uint8           

c-   In each channel, a uint8 type pixel occupy 8 bits (1 byte) for a Black and White (B&W) image or 24 bits (3 bytes) for a color image-- one byte each for Red, Green, and Blue. 
img_b=double(img_gray); 
imshow(img_b)
The picture becomes white: 
 

Explanation: Images of type double are assumed to have values between 0 and 1 and uint8 images are assumed to have values between 0 and 255. it will appear as mostly white since most values are greater than 1.

d-  In each channel, a double type pixel occupy 8 bits (1 byte) for a Black and White
img_gray_double=im2double(img_gray);
imshow(img_gray_double)

 

	
3)a- F=imread('lena.jpg');
Lena_center = imcrop(F,[168 342 170 340]);
imshow(Lena_center)
   

b- Lena100 = imread('Lena_center.jpg');
 Lena100 = imadd(Lena100,100);
 imshow(Lena100)
 

c- Lena_256=imread('lena_256.bmp');
 LenaAdd2 = immultiply(Lena_256,2);
 imshow(LenaAdd2)
 


LenaDivide2 = immultiply(Lena_256,0.5);
imshow(LenaDivide2)

 

d- cam_cam=imread('cameraman.jpg');
>> cam_croped= imcrop(cam_cam,[0 0 171 171]);
>> imshow(cam_croped)
>> Lena_Cam = immultiply(Lena_center,cam_croped);
>> imshow(Lena_Cam)

 

4-a)imshow('lena.bmp')
>> lena = imread('lena_256.bmp');
>> lena(lena > 200) = 1;
>> lena(lena < 100) = 1;
>> lena( lena ~= 1 ) = 0;
>> imwrite(lena,'lena.bmp');
>> imread('lena.bmp');
>> imshow('lena.bmp')
 

b- = imread('lena_256.bmp');
>> level = graythresh(I);
>> I = im2bw(I,level);
>> imwrite(I,'lena_gray.bmp');
>> imshow('lena_gray.bmp')

c-lena = imread('lena_256.bmp');
>> imshow(lena)
>> lena64 = imresize(lena, 0.25);
>> imshow(lena64)
>> lena64_reversed = imresize(lena64, 4);
>> imshow(lena64_reversed)

 
 

 

d-

 
 lena = imread('lena_256.bmp');
>> lena = conv2(1/9,ones(3));
>> imshow(lena)


 

lena = imread('lena_256.bmp');
>> lena = conv2(1/25,ones(5));
>> imshow(lena)
 

5) a- I graduated from Oklahoma City University back in 2017 where I got my Bachelor Degree in Software Engineering. Currently, I am pursuing my master degree at NJIT in Computer science specializing in Data Mining and Data Science
b- My technical programming skills consists mainly into web and android developing, security, heavy database interaction, data mining, data analytic and big data related development along with some experience on AI (Machine Learning and Neural Network).
The main programming languages that I have been using would be Java, PHP, JavaScript, Python and SQL.
I actually never had the opportunity to learn Matlab, this is my first assignment/problem ever working with this latter. However, I truly believe that I can handle it and start learning it by yourself from related books.
c- To be honest, I never had any big significant experience, course or research related to image processing. However, I would assume only one might count as valuable during my previous semester where I took Artificial Intelligence class and got my hands on a Handwriting Recognition project based on Neural Network approach using Python.
d- I am not quite sure if this topic would be accepted but the possible topic that I am mostly interested in pursuing this research would be video analysis, which is a field that involves the automatic interpretation of digital video using computer algorithms
