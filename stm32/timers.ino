#include <Arduino.h>

#define LED D2
#define SENSE A0

void setup() {
  pinMode(LED, OUTPUT);
  pinMode(SENSE, INPUT);
  Serial.begin(9600);


  /* Hardware-precision delay loop implementation using TIM2 timer 
  peripheral. Any other STM32 timer can be used to fulfill this function, but 
  TIM2 timer was chosen as it has the less integration level. Other timer 
  peripherals may be reserved for more complicated tasks */

  RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;

  /* Clear the update event flag */
  TIM2->SR = 0;
  
  /* Set the required delay */
  TIM2->ARR = 0xFFFF;

  /* The timer presclaer reset value is 0. If a longer delay is required the 
  presacler register may be configured to */
  TIM2->PSC = 0xFF;
  
  /* Start the timer counter */
  TIM2->CR1 |= TIM_CR1_CEN;
    
  digitalWrite(LED, HIGH);
  while (!(TIM2->SR & TIM_SR_UIF)) {
    Serial.println(TIM2->CNT);
  }
  digitalWrite(LED, LOW);

}

void loop() {
  // Serial.println(analogRead(SENSE));
  // digitalWrite(LED, HIGH);
  // delay(100);
  // digitalWrite(LED, LOW);
  // delay(1000);

  Serial.println("loop");
  static int status = LOW;
  while (!(TIM2->SR & TIM_SR_UIF));
  TIM2->SR = 0;
  digitalWrite(LED, status);
  status = !status;
}

