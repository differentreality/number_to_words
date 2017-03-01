myhash = {
           1 => ['ΈΝΑ', 'ΔΕΚΑ', 'ΕΚΑΤΟΝ', 'ΧΙΛΙΑ', 'ΕΚΑΤΟΜΜΥΡΙΟ'],
           2 => ['ΔΥΟ', 'ΕΙΚΟΣΙ', 'ΔΙΑΚΟΣΙΑ'],
           3 => ['ΤΡΙΑ', 'ΤΡΙΑΝΤΑ', 'ΤΡΙΑΚΟΣΙΑ'],
           4 => ['ΤΕΣΣΕΡΑ', 'ΣΑΡΑΝΤΑ', 'ΤΕΤΡΑΚΟΣΙΑ'],
           5 => ['ΠΕΝΤΕ', 'ΠΕΝΗΝΤΑ', 'ΠΕΝΤΑΚΟΣΙΑ'],
           6 => ['ΕΞΙ', 'ΕΞΗΝΤΑ', 'ΕΞΑΚΟΣΙΑ'],
           7 => ['ΕΠΤΑ', 'ΕΒΔΟΜΗΝΤΑ', 'ΕΠΤΑΚΟΣΙΑ'],
           8 => ['ΟΧΤΩ', 'ΟΓΔΟΝΤΑ', 'ΟΧΤΑΚΟΣΙΑ'],
           9 => ['ΕΝΝΙΑ', 'ΕΝΕΝΗΝΤΑ', 'ΕΝΝΙΑΚΟΣΙΑ']
         }

while true
  number = gets.to_i
  string = ''
  i=1

  while number > 0 do
    array = myhash[number%(10**i) / (10**(i-1))]
    string = array[i-1] + ' '  + string if array && array[i-1]
    number -= number % (10**i)
    i += 1
  end

  puts string
end
