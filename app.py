import streamlit as st
from datetime import datetime

# Título
st.title("Hello World em Streamlit!")

# Mensagem de boas-vindas
st.write("Bem-vindo ao meu app Streamlit!")

# Exibir a data e hora atuais
st.write("Data e hora atual:", datetime.now())
