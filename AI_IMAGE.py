#!/usr/bin/env python
# coding: utf-8

# In[50]:


import tensorflow as tlf
import matplotlib.pyplot as plt
import numpy as np
import mysql.connector





# In[51]:



m = tlf.keras.applications.mobilenet.MobileNet()


# In[52]:


from tensorflow.keras.preprocessing import image
img= image.load_img("images/12.jpg",target_size=(224,224,3))
#img=tlf.keras.preprocessing.image.ImageDataGenerator(rescale=1/255).flow_from_directory(directory="images/12.jpg", target_size=(256,256), classes=['cn', 'ad'], batch_size=10,color_mode="grayscale")

plt.imshow(img)


# In[53]:


vector_imag=image.img_to_array(img)
final_vect=np.expand_dims(vector_imag,axis=0)
final_vect=tlf.keras.applications.mobilenet.preprocess_input(final_vect)


# In[54]:


pred = m.predict(final_vect)


# In[55]:


from tensorflow.keras.applications import imagenet_utils
results_final = imagenet_utils.decode_predictions(pred)
print(results_final)

for i in results_final:
    for h in i:
        print(h[1])





#conexion a base de datos
conexion1=mysql.connector.connect(host="localhost", 
                                  user="root", 
                                  passwd="", 
                                  database="db_residuo")
cursor1=conexion1.cursor()
sql="insert into categoria_residuo(nombre_residuo, categoria, reciclable) values (%s,%s,%s)"
for i in results_final:
    for h in i:
        if h[1].endswith("bottle"):
            datos=(h[1], "plastic", "SI")
        else:
            datos=(h[1], "other", "NO")
            
        cursor1.execute(sql, datos) 
        

conexion1.commit()
conexion1.close()   

# In[ ]:





# In[ ]:




