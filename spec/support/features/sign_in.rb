module Features
    def sign_in
        visit root_path
        fill_in "email", with: "luis_12wero@hotmail.com"
        click_on "sign in"
    end
end