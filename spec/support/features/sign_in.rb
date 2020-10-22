module Features
    def sign_in
        sign_in_as "luis_12wero@hotmail.com"
    end

    def sign_in_as(email)
        visit root_path
        fill_in "email", with: email
        click_on "sign in"
    end
end