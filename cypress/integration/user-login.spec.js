describe('visit the home page', () => {
  before(() => {
    cy.visit('/');
  });

  it('displays the homepage', () => {
    cy.get('.title').contains('Where you can find any plants!');
  });

  it("click on login.", () => {
    cy.get('[href="/login"]')
      .contains('Login')
      .click();
  });

  it(" login as user.", () => {
    cy.get('#email')
      .type('testemail@test.com', { delay: 150 });

    cy.get('#password')
      .type('123456', { delay: 150 });

    cy.get('[type="submit"]')
      .click();

    cy.get('.navbar > :nth-child(2)')
      .contains('Test Name');
    
  });

});