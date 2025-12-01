
#python -m venv .venv
#..venv\Scripts\Activate.ps1
#python -m pip install --upgrade pip
#pip install streamlit




import streamlit as st

st.title("Risikoprofil-Formular")

st.write("Bitte gib dein Alter und deine Risikoaversion an.")

alter = st.number_input(
    "Alter",
    min_value=0,
    max_value=120,
    value=30,
    step=1
)

risikoaversion = st.number_input(
    "Risikoaversion (0 = risikofreudig, 7 = sehr risikoavers)",
    min_value=1,
    max_value=7,
    value=3,
    step=1
)

st.write("### Deine Eingaben")
st.write(f"**Alter:** {alter}")
st.write(f"**Risikoaversion:** {risikoaversion}")
