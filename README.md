# Image-Processing-1


1. In MATLAB window, choose “Preferences.” Click “Image Processing” selection. In the “Border
Style,” choose “Tight” instead of “Loose.” Click “OK.”

Required images: barbara.jpg, Lena.jpg, cameraman.jpg, lena_256.bmp
 
1.1 (20 points) image read, display, write and image information

(a) Read the attached image “barbara.jpg” and display it.  Hint commands: >> help imshow >> help imread

(b) Show the image information by typing imfinfo('barbara.jpg')

(c) Write the Barbara image into your hard disk with a name ‘barbara_mine.jpg.’ Read and display
the saved image. Hint command: ‘help imwrite’.

(d) An image returned by “imread()” is an array of RGB color. Use Figures window, and under “Tools”
select “Data Cursor”. Point the cursor to the location X: 92, Y:134, and tell what the RGB values are.
Redo this as pointing the cursor to the location X:380, Y:300.

(e) How many rows, column, and channels of the Barbara image? Hint command: ‘help size’

1.2 (20 points) image type and basic color space

(a) Convert the color image into grayscale (variable name img_gray). Save the grayscale image with
a name “barbara_gray.png.” Show the grayscale image. Compare img_gray with img_gray2 that
“img_gray2 = 0.2989 * img(:,:,1) + 0.5870 * img(:,:,2) + 0.1140 *
img(:,:,3);” Hint command: ‘help rgb2gray’.

(b) Use whos to find out the size and class of variable ‘img’. Hint command: “help whos”.

(c) In each channel, how many bytes does a uint8 type pixel occupy? Convert the uint8 grayscale
image into double type by “img_b=double(img_gray); imshow(img_b)”. What happen to the image
and why it is displayed like that (please explain)? Note: click on the figure and choose a black box as
the border for all white images, so we can see that a white image is enclosed.


(d) How many bytes does a double type pixel in each channel occupy? Convert the uint8 grayscale
image into double type by function “im2double” or “img_b=double(img_gray)/255;” Display the
double type grayscale image.

1.3 (20 points) pixel level operations

(a) Read the 512 x 512 Lena image as F and crop its center (row from 170 to 340 and column from
170 to 340) into a 171 x 171 (store in variable “Lena_center”). Show the cropped image.

(b) Add 100 to each pixel of Lena_center. Hint command: “help imadd”

(c) Multiply and divide each pixel of Lena_256 by 2, show both results.

(d) Read the 256 x 256 “cameraman.jpg” and crop its row from 1 to 171 and column from 1 to 171
into “cam_man” and add both “Lena_center” and “cam_man” together by function “imadd”. Show
the combined image.

1.4 (20 points) image binarization, pooling, and convolution

(a) Read the “lena_256.bmp” which is 256 x 256 resolution as variable lena. Change lena into a
binary image, which has only two values: 0 and 1. Select the gray level which is greater than 200 or
smaller than 100 to be 1 (white) and otherwise be 0 (black). Give the Matlab code and show the
binary image.

(b) How to choose a suitable threshold value is a difficult job. Use the global image threshold by
Otsu's method: graythresh, and use the function im2bw to change the grayscale image into a binary
image by the Otsu’s threshold value. Show the binary image.

(c) Down-sample the grayscale lena 64 x 64 and up-sample it back to 256 x 256. Show three images:
the original lena, the 64 x 64 lena, and the up-sampled 256 x 256. Hint command: “help imresize”

(d) Read lena_256.bmp, convolve the image with the mask
111
1
111
9
111
 
  
 
   
and show that it performs
averaging operation which results in blurring of the image. Also analyze the impact of increasing the
size of the mask to

5 5 
; that is, the mask is
11111
11111
1
11111
25
11111
11111
 
 
 
  
 
 
   
. Provide your source code and
show the three images. Hint: use MATLAB functions “ones” to generate the matrix and use “conv2”
to do the convolution.

1.5 (20 points) background and research paper topic

(a) Describe your previous BS/MS major and educational background.

(b) Describe your technical programming skills and languages used. Do you know Matlab
programming? If not, you can start learning it by yourself from related books.

(c) State your previous courses, working experiences, and research projects that are relevant to image
processing applications if you had before.

(d) There is a final research paper due in this course. You can choose any topic related to image
processing and applications. You are required to read technical papers and write Matlab code to
perform experiments and evaluations. What possible topic are you interested in pursuing this
research?
