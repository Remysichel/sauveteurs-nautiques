import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["La plateforme de mise en relation Sauveteur/Formateur/Employeur", "Deviens sauveteur et trouve un emploi !"],
    typeSpeed: 75,
    loop: true
  });
};

export { loadDynamicBannerText };
