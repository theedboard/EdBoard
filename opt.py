from PIL import Image

def save_img(img, filename):
    opt_img = Image.open(img)
    opt_img = opt_img.resize((612 , 408),Image.ANTIALIAS)
    opt_img = opt_img.save(filename+'.jpeg',optimize=True, quality=85)