fn preenche_arr(arr: &mut [i32], x: i32) {
  for (i, item) in arr.iter_mut().enumerate() {
      *item = (i as i32) * x;
  }
}

fn main() {
  let mut arr = [0; 10]; // Array de 10 elementos inicializado com zeros
  let number_cvt = 5; // numero escolhido (substitua pelo valor desejado)

  preenche_arr(&mut arr, number_cvt);

  println!("Array preenchido: {:?}", arr);
}
