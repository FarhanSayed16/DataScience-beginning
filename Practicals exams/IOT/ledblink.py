import RPi.GPIO as GPIO 
from time import sleep 
GPIO.setmode(GPIO.BOARD) 
led1=29     #Yellow 
led2=31    #Green 
GPIO.setup(led1,GPIO.OUT) 
GPIO.setup(led2,GPIO.OUT) 
GPIO.output(led1,False) 
GPIO.output(led2,False) 
def ledpattern(v1,v2): 
    GPIO.output(led1,v1) 
    GPIO.output(led2,v2) 
    try: 
     while True: 
                ledpattern(1,0) 
                sleep(0.5) 
                ledpattern(0,1) 
                sleep(0.5) 
                ledpattern(1,1) 
                sleep(0.5) 
                ledpattern(0,0) 
                sleep(0.5) 
    finally: 
        GPIO.output(led1,False) 
        GPIO.output(led2,False) 
        GPIO.cleanup() 