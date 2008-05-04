# supposedly fixes files with crlf.. and converts the to LF
sed -i 's/\r$//' file_with_crlf
