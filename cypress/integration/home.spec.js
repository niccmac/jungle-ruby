
describe('visit the home page', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it('displays the homepage', () => {
    cy.get('.title').contains('Where you can find any plants!');
  });

  it("There are products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

});