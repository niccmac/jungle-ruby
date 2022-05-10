describe('visit the home page', () => {
  beforeEach(() => {
    cy.visit('localhost:3000');
  });

  it('displays the homepage', () => {
    cy.get('.title').contains('Where you can find any plants!');
  });

});