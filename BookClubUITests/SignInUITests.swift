//
//  SignInUITests.swift
//  BookClubUITests
//
//  Created by Богдан Тарченко on 21.03.2025.
//

import XCTest

final class SignInUITests: XCTestCase {
    // MARK: - Properties
    private var app: XCUIApplication!
    private var signInPage: SignInPage!
    
    // MARK: - Test Data
    private enum TestData {
        static let email = "test@example.com"
        static let password = "password123"
    }
    
    // MARK: - Setup & Teardown
    override func setUpWithError() throws {
        continueAfterFailure = false

        app = XCUIApplication()
        app.launch()
        
        signInPage = SignInPage(app: app)
    }

    override func tearDownWithError() throws {
        app = nil
        signInPage = nil
    }

    // MARK: - Tests
    func testInitialScreenState() throws {
        // Arrange & Act & Assert
        XCTContext.runActivity(named: "Проверка наличия всех элементов") { _ in
            XCTAssertTrue(signInPage.verifyElementsExist(), "Все элементы должны существовать на экране")
        }
        
        XCTContext.runActivity(named: "Проверка начального состояния кнопки") { _ in
            XCTAssertFalse(signInPage.isAuthButtonEnabled(), "Кнопка входа должна быть изначально неактивна")
        }
        
        XCTContext.runActivity(named: "Проверка состояния карусели") { _ in
            XCTAssertFalse(signInPage.isCarouselEnabled(), "Карусель должна быть отключена для взаимодействия")
        }
    }
    
    func testSuccessfulSignIn() throws {
        // Arrange & Act
        XCTContext.runActivity(named: "Ввод учетных данных") { _ in
            signInPage.enterCredentials(
                email: TestData.email,
                password: TestData.password
            )
        }
        
        // Assert
        XCTContext.runActivity(named: "Проверка состояния после ввода") { _ in
            XCTAssertTrue(signInPage.isAuthButtonEnabled(), "Кнопка входа должна стать активной")
            XCTAssertEqual(signInPage.getEnteredEmail(), TestData.email, "Email должен соответствовать введенному значению")
        }
        
        // Act
        XCTContext.runActivity(named: "Нажатие кнопки входа") { _ in
            signInPage.tapSignIn()
        }
    }
    
    func testInvalidCredentials() throws {
        // Arrange & Act
        XCTContext.runActivity(named: "Ввод некорректных данных") { _ in
            signInPage.enterCredentials(
                email: "invalid@email",
                password: ""
            )
        }
        
        // Assert
        XCTContext.runActivity(named: "Проверка состояния кнопки") { _ in
            XCTAssertFalse(signInPage.isAuthButtonEnabled(), "Кнопка входа должна оставаться неактивной")
        }
    }
}
