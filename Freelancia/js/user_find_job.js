const container = document.querySelectorAll('.container')
window.addEventListener('scroll', checkboxes)
checkboxes()

function checkboxes(){
    const triggerBottom = window.innerHeight /5 * 4
    container.forEach(container => {
        const containerTop = container.getBoundingClientRect().top
        if(containerTop < triggerBottom){
            container.classList.add('show')
        }else{
            BaseAudioContext.classList.remove('show')
        }
    })
}