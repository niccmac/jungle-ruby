describe('visit the home page', () => {
  before(() => {
    cy.visit('/');
  });

  it('displays the homepage', () => {
    cy.get('.title').contains('Where you can find any plants!');
  });

  it("click on add to cart.", () => {
    cy.get(':nth-child(2) > div > .button_to > .btn')
      .contains('Add')
      .click();
  });

  it(" login as user, and add to cart.", () => {
    cy.get('#email')
      .type('testemail@test.com', { delay: 150 });

    cy.get('#password')
      .type('123456', { delay: 150 });

    cy.get('[type="submit"]')
      .click();
  
    cy.get(':nth-child(2) > div > .button_to > .btn')
      .contains('Add')
      .click();

    cy.get('.end-0 > .nav-link')
      .contains('My Cart (1)');
    
  });

});
