describe('visit the home page', () => {
  before(() => {
    cy.visit('/');
  });

  it('displays the homepage', () => {
    cy.get('.title').contains('Where you can find any plants!');
  });

  it("click on product, and divert to product page.", () => {
    cy.get(':nth-child(1) > a > img')
      .first()
      .click();
    
    cy.get('.page-header > h1')
      .contains("Evergreens");
  });

});
