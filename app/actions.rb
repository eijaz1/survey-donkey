require_relative 'helpers/get_results'


# Homepage (Root path)




get '/' do
  @user = User.new
  erb :index
end

post '/' do
  @user = User.new(params[:user])
    # gender: params[:gender],
    # age: params[:age],
    # location: params[:location],
    # race_ethnicity: params[:race_ethnicity],
    # religion: params[:religion],
    # party_affiliation: params[:party_affiliation],
    # answer1: params[:answer1],
    # answer2: params[:answer2],
    # answer3: params[:answer3],
    # answer4: params[:answer4]
  
    # answer5: params[:answer5],
    # answer6: params[:answer6],
    # answer7: params[:answer7]

  # @user.gender = params[:user][:gender]
  # @user.age = params[:user][:age]
  # @user.location = params[:user][:location]
  # @user.race_ethnicity = params[:user][:race_ethnicity]
  # @user.religion = params[:user][:religion]
  # @user.party_affiliation = params[:user][:party_affiliation]
  # @user.answer1 = params[:user][:answer1]
  # @user.answer2 = params[:user][:answer2]
  # @user.answer3 = params[:user][:answer3]
  # @user.answer4 = params[:user][:answer4]
  # @user.answer5 = params[:user][:answer5]
  # @user.answer6 = params[:user][:answer6]
  # @user.answer7 = params[:user][:answer7]
  if @user.save
    redirect "/resultsmain"
  else
    erb :index
  end
    
end

get '/results1' do
  # @user = User.new

  # answer 1 male yes
  @male1yes = User.where("gender = 'male' and answer1 = 'yes'").count
  # answer 1 male no
  @male1no = User.where("gender = 'male' and answer1 = 'no'").count

  # answer 1 female yes
  @female1yes = User.where("gender = 'female' and answer1 = 'yes'").count
  # answer 1 female no
  @female1no = User.where("gender = 'female' and answer1 = 'no'").count

  # answer 2 male yes
  @male2yes = User.where("gender = 'male' and answer2 = 'yes'").count
  # answer 2 male no
  @male2no = User.where("gender = 'male' and answer2 = 'no'").count

  # answer 2 female yes
  @female2yes = User.where("gender = 'female' and answer2 = 'yes'").count
  # answer 2 female no
  @female2no = User.where("gender = 'female' and answer2 = 'no'").count

  # answer 3 male yes
  @male3yes = User.where("gender = 'male' and answer3 = 'yes'").count
  # answer 2 male no
  @male3no = User.where("gender = 'male' and answer3 = 'no'").count

  # answer 3 female yes
  @female3yes = User.where("gender = 'female' and answer3 = 'yes'").count
  # answer 3 female no
  @female3no = User.where("gender = 'female' and answer3 = 'no'").count

  # answer 4 male yes
  @male4yes = User.where("gender = 'male' and answer4 = 'yes'").count
  # answer 2 male no
  @male4no = User.where("gender = 'male' and answer4 = 'no'").count

  # answer 4 female yes
  @female4yes = User.where("gender = 'female' and answer3 = 'yes'").count
  # answer 4 female no
  @female4no = User.where("gender = 'female' and answer4 = 'no'").count

@gender_data = {
  male1yes: @male1yes,
  male1no: @male1no,
  female1yes: @female1yes,
  female1no: @female1no,
  male2yes: @male2yes,
  male2no: @male2no,
  female2yes: @female2yes,
  female2no: @female2no,
  male3yes: @male3yes,
  male3no: @male3no,
  female3yes: @female3yes,
  female3no: @female3no,
  male4yes: @male4yes,
  male4no: @male4no,
  female4yes: @female4yes,
  female4no: @female4no
}

  # answer 1 young yes
  @young1yes = User.where("age = 'young' and answer1 = 'yes'").count
  # answer 1 young no
  @young1no = User.where("age = 'young' and answer1 = 'no'").count

  # answer 1 middle yes
  @middle1yes = User.where("age = 'middle' and answer1 = 'yes'").count
  # answer 1 middle no
  @middle1no = User.where("age = 'middle' and answer1 = 'no'").count

  # answer 1 old yes
  @old1yes = User.where("age = 'old' and answer1 = 'yes'").count
  # answer 1 old no
  @old1no = User.where("age = 'old' and answer1 = 'no'").count

  # answer 2 young yes
  @young2yes = User.where("age = 'young' and answer2 = 'yes'").count
  # answer 2 young no
  @young2no = User.where("age = 'young' and answer2 = 'no'").count

  # answer 2 middle yes
  @middle2yes = User.where("age = 'middle' and answer2 = 'yes'").count
  # answer 2 middle no
  @middle2no = User.where("age = 'middle' and answer2 = 'no'").count

  # answer 2 old yes
  @old2yes = User.where("age = 'old' and answer2 = 'yes'").count
  # answer 2 old no
  @old2no = User.where("age = 'old' and answer2 = 'no'").count

  # answer 3 young yes
  @young3yes = User.where("age = 'young' and answer3 = 'yes'").count
  # answer 3 young no
  @young3no = User.where("age = 'young' and answer3 = 'no'").count

  # answer 3 middle yes
  @middle3yes = User.where("age = 'middle' and answer3 = 'yes'").count
  # answer 3 middle no
  @middle3no = User.where("age = 'middle' and answer3 = 'no'").count

  # answer 3 old yes
  @old3yes = User.where("age = 'old' and answer3 = 'yes'").count
  # answer 3 old no
  @old3no = User.where("age = 'old' and answer3 = 'no'").count

  # answer 4 young yes
  @young4yes = User.where("age = 'young' and answer4 = 'yes'").count
  # answer 4 young no
  @young4no = User.where("age = 'young' and answer4 = 'no'").count

  # answer 4 middle yes
  @middle4yes = User.where("age = 'middle' and answer4 = 'yes'").count
  # answer 4 middle no
  @middle4no = User.where("age = 'middle' and answer4 = 'no'").count

  # answer 4 old yes
  @old4yes = User.where("age = 'old' and answer4 = 'yes'").count
  # answer 4 old no
  @old4no = User.where("age = 'old' and answer4 = 'no'").count

@age_data = {
  young1yes: @young1yes,
  young1no: @young1no,
  middle1yes: @middle1yes,
  middle1no: @middle1no,
  old1yes: @old1yes,
  old1no: @old1no,
  young2yes: @young2yes,
  young2no: @young2no,
  middle2yes: @middle2yes,
  middle2no: @middle2no,
  old2yes: @old2yes,
  old2no: @old2no,
  young3yes: @young3yes,
  young3no: @young3no,
  middle3yes: @middle3yes,
  middle3no: @middle3no,
  old3yes: @old3yes,
  old3no: @old3no,
  young4yes: @young4yes,
  young4no: @young4no,
  middle4yes: @middle4yes,
  middle4no: @middle4no,
  old4yes: @old4yes,
  old4no: @old4no
}

  # answer 1 ne yes
  @ne1yes = User.where("location = 'northeast' and answer1 = 'yes'").count
  # answer 1 ne no
  @ne1no = User.where("location = 'northeast' and answer1 = 'no'").count

  # answer 1 s yes
  @s1yes = User.where("location = 'south' and answer1 = 'yes'").count
  # answer 1 s no
  @s1no = User.where("location = 'south' and answer1 = 'no'").count

  # answer 1 mw yes
  @mw1yes = User.where("location = 'midwest' and answer1 = 'yes'").count
  # answer 1 mw no
  @mw1no = User.where("location = 'midwest' and answer1 = 'no'").count

  # answer 1 w yes
  @w1yes = User.where("location = 'west' and answer1 = 'yes'").count
  # answer 1 w no
  @w1no = User.where("location = 'west' and answer1 = 'no'").count

  # answer 2 ne yes
  @ne2yes = User.where("location = 'northeast' and answer2 = 'yes'").count
  # answer 2 ne no
  @ne2no = User.where("location = 'northeast' and answer2 = 'no'").count

  # answer 2 s yes
  @s2yes = User.where("location = 'south' and answer2 = 'yes'").count
  # answer 2 s no
  @s2no = User.where("location = 'south' and answer2 = 'no'").count

  # answer 2 mw yes
  @mw2yes = User.where("location = 'midwest' and answer2 = 'yes'").count
  # answer 2 mw no
  @mw2no = User.where("location = 'midwest' and answer2 = 'no'").count

  # answer 2 w yes
  @w2yes = User.where("location = 'west' and answer2 = 'yes'").count
  # answer 2 w no
  @w2no = User.where("location = 'west' and answer2 = 'no'").count

  # answer 3 ne yes
  @ne3yes = User.where("location = 'northeast' and answer3 = 'yes'").count
  # answer 3 ne no
  @ne3no = User.where("location = 'northeast' and answer3 = 'no'").count

  # answer 3 s yes
  @s3yes = User.where("location = 'south' and answer3 = 'yes'").count
  # answer 3 s no
  @s3no = User.where("location = 'south' and answer3 = 'no'").count

  # answer 3 mw yes
  @mw3yes = User.where("location = 'midwest' and answer3 = 'yes'").count
  # answer 3 mw no
  @mw3no = User.where("location = 'midwest' and answer3 = 'no'").count

  # answer 3 w yes
  @w3yes = User.where("location = 'west' and answer3 = 'yes'").count
  # answer 3 w no
  @w3no = User.where("location = 'west' and answer3 = 'no'").count

  # answer 4 ne yes
  @ne4yes = User.where("location = 'northeast' and answer4 = 'yes'").count
  # answer 4 ne no
  @ne4no = User.where("location = 'northeast' and answer4 = 'no'").count

  # answer 4 s yes
  @s4yes = User.where("location = 'south' and answer4 = 'yes'").count
  # answer 4 s no
  @s4no = User.where("location = 'south' and answer4 = 'no'").count

  # answer 4 mw yes
  @mw4yes = User.where("location = 'midwest' and answer4 = 'yes'").count
  # answer 4 mw no
  @mw4no = User.where("location = 'midwest' and answer4 = 'no'").count

  # answer 4 w yes
  @w4yes = User.where("location = 'west' and answer4 = 'yes'").count
  # answer 4 w no
  @w4no = User.where("location = 'west' and answer4 = 'no'").count

@location_data = {
  ne1yes: @ne1yes,
  ne1no: @ne1no,
  s1yes: @s1yes,
  s1no: @s1no,
  mw1yes: @mw1yes,
  mw1no: @mw1no,
  w1yes: @w1yes,
  w1no: @w1no,
  ne2yes: @ne2yes,
  ne2no: @ne2no,
  s2yes: @s2yes,
  s2no: @s2no,
  mw2yes: @mw2yes,
  mw2no: @mw2no,
  w2yes: @w2yes,
  w2no: @w2no,
  ne3yes: @ne3yes,
  ne3no: @ne3no,
  s3yes: @s3yes,
  s3no: @s3no,
  mw3yes: @mw3yes,
  mw3no: @mw3no,
  w3yes: @w3yes,
  w3no: @w3no,
  ne4yes: @ne4yes,
  ne4no: @ne4no,
  s4yes: @s4yes,
  s4no: @s4no,
  mw4yes: @mw4yes,
  mw4no: @mw4no,
  w4yes: @w4yes,
  w4no: @w4no
}

  # answer 1 dem yes
  @dem1yes = User.where("party_affiliation = 'democrat' and answer1 = 'yes'").count
  # answer 1 dem no
  @dem1no = User.where("party_affiliation = 'democrat' and answer1 = 'no'").count

  # answer 1 rep yes
  @rep1yes = User.where("party_affiliation = 'republican' and answer1 = 'yes'").count
  # answer 1 rep no
  @rep1no = User.where("party_affiliation = 'republican' and answer1 = 'no'").count

  # answer 1 ind yes
  @ind1yes = User.where("party_affiliation = 'independent' and answer1 = 'yes'").count
  # answer 1 ind no
  @ind1no = User.where("party_affiliation = 'independent' and answer1 = 'no'").count


  # answer 2 dem yes
  @dem2yes = User.where("party_affiliation = 'democrat' and answer2 = 'yes'").count
  # answer 2 dem no
  @dem2no = User.where("party_affiliation = 'democrat' and answer2 = 'no'").count

  # answer 2 rep yes
  @rep2yes = User.where("party_affiliation = 'republican' and answer2 = 'yes'").count
  # answer 2 rep no
  @rep2no = User.where("party_affiliation = 'republican' and answer2 = 'no'").count

  # answer 2 ind yes
  @ind2yes = User.where("party_affiliation = 'independent' and answer2 = 'yes'").count
  # answer 2 ind no
  @ind2no = User.where("party_affiliation = 'independent' and answer2 = 'no'").count

  # answer 3 dem yes
  @dem3yes = User.where("party_affiliation = 'democrat' and answer3 = 'yes'").count
  # answer 3 dem no
  @dem3no = User.where("party_affiliation = 'democrat' and answer3 = 'no'").count

  # answer 3 rep yes
  @rep3yes = User.where("party_affiliation = 'republican' and answer3 = 'yes'").count
  # answer 3 rep no
  @rep3no = User.where("party_affiliation = 'republican' and answer3 = 'no'").count

  # answer 3 ind yes
  @ind3yes = User.where("party_affiliation = 'independent' and answer3 = 'yes'").count
  # answer 3 ind no
  @ind3no = User.where("party_affiliation = 'independent' and answer3 = 'no'").count


  # answer 4 dem yes
  @dem4yes = User.where("party_affiliation = 'democrat' and answer4 = 'yes'").count
  # answer 4 dem no
  @dem4no = User.where("party_affiliation = 'democrat' and answer4 = 'no'").count

  # answer 4 rep yes
  @rep4yes = User.where("party_affiliation = 'republican' and answer4 = 'yes'").count
  # answer 4 rep no
  @rep4no = User.where("party_affiliation = 'republican' and answer4 = 'no'").count

  # answer 4 ind yes
  @ind4yes = User.where("party_affiliation = 'independent' and answer4 = 'yes'").count
  # answer 4 ind no
  @ind4no = User.where("party_affiliation = 'independent' and answer4 = 'no'").count

  @party_affiliation_data = {
    dem1yes: @dem1yes,
    dem1no: @dem1no,
    rep1yes: @rep1yes,
    rep1no: @rep1no,
    ind1yes: @ind1yes,
    ind1no: @ind1no,
    dem2yes: @dem2yes,
    dem2no: @dem2no,
    rep2yes: @rep2yes,
    rep2no: @rep2no,
    ind2yes: @ind2yes,
    ind2no: @ind2no,
    dem3yes: @dem3yes,
    dem3no: @dem3no,
    rep3yes: @rep3yes,
    rep3no: @rep3no,
    ind3yes: @ind3yes,
    ind3no: @ind3no,
    dem4yes: @dem4yes,
    dem4no: @dem4no,
    rep4yes: @rep4yes,
    rep4no: @rep4no,
    ind4yes: @ind4yes,
    ind4no: @ind4no,
  }

    erb :results1

end



get "/results2" do
  # @user = current_user

  # answer 1 male yes
  @male1yes = User.where("gender = 'male' and answer1 = 'yes'").count
  # answer 1 male no
  @male1no = User.where("gender = 'male' and answer1 = 'no'").count

  # answer 1 female yes
  @female1yes = User.where("gender = 'female' and answer1 = 'yes'").count
  # answer 1 female no
  @female1no = User.where("gender = 'female' and answer1 = 'no'").count

  # answer 2 male yes
  @male2yes = User.where("gender = 'male' and answer2 = 'yes'").count
  # answer 2 male no
  @male2no = User.where("gender = 'male' and answer2 = 'no'").count

  # answer 2 female yes
  @female2yes = User.where("gender = 'female' and answer2 = 'yes'").count
  # answer 2 female no
  @female2no = User.where("gender = 'female' and answer2 = 'no'").count

  # answer 3 male yes
  @male3yes = User.where("gender = 'male' and answer3 = 'yes'").count
  # answer 2 male no
  @male3no = User.where("gender = 'male' and answer3 = 'no'").count

  # answer 3 female yes
  @female3yes = User.where("gender = 'female' and answer3 = 'yes'").count
  # answer 3 female no
  @female3no = User.where("gender = 'female' and answer3 = 'no'").count

  # answer 4 male yes
  @male4yes = User.where("gender = 'male' and answer4 = 'yes'").count
  # answer 2 male no
  @male4no = User.where("gender = 'male' and answer4 = 'no'").count

  # answer 4 female yes
  @female4yes = User.where("gender = 'female' and answer3 = 'yes'").count
  # answer 4 female no
  @female4no = User.where("gender = 'female' and answer4 = 'no'").count

@gender_data = {
  male1yes: @male1yes,
  male1no: @male1no,
  female1yes: @female1yes,
  female1no: @female1no,
  male2yes: @male2yes,
  male2no: @male2no,
  female2yes: @female2yes,
  female2no: @female2no,
  male3yes: @male3yes,
  male3no: @male3no,
  female3yes: @female3yes,
  female3no: @female3no,
  male4yes: @male4yes,
  male4no: @male4no,
  female4yes: @female4yes,
  female4no: @female4no
}

  # answer 1 young yes
  @young1yes = User.where("age = 'young' and answer1 = 'yes'").count
  # answer 1 young no
  @young1no = User.where("age = 'young' and answer1 = 'no'").count

  # answer 1 middle yes
  @middle1yes = User.where("age = 'middle' and answer1 = 'yes'").count
  # answer 1 middle no
  @middle1no = User.where("age = 'middle' and answer1 = 'no'").count

  # answer 1 old yes
  @old1yes = User.where("age = 'old' and answer1 = 'yes'").count
  # answer 1 old no
  @old1no = User.where("age = 'old' and answer1 = 'no'").count

  # answer 2 young yes
  @young2yes = User.where("age = 'young' and answer2 = 'yes'").count
  # answer 2 young no
  @young2no = User.where("age = 'young' and answer2 = 'no'").count

  # answer 2 middle yes
  @middle2yes = User.where("age = 'middle' and answer2 = 'yes'").count
  # answer 2 middle no
  @middle2no = User.where("age = 'middle' and answer2 = 'no'").count

  # answer 2 old yes
  @old2yes = User.where("age = 'old' and answer2 = 'yes'").count
  # answer 2 old no
  @old2no = User.where("age = 'old' and answer2 = 'no'").count

  # answer 3 young yes
  @young3yes = User.where("age = 'young' and answer3 = 'yes'").count
  # answer 3 young no
  @young3no = User.where("age = 'young' and answer3 = 'no'").count

  # answer 3 middle yes
  @middle3yes = User.where("age = 'middle' and answer3 = 'yes'").count
  # answer 3 middle no
  @middle3no = User.where("age = 'middle' and answer3 = 'no'").count

  # answer 3 old yes
  @old3yes = User.where("age = 'old' and answer3 = 'yes'").count
  # answer 3 old no
  @old3no = User.where("age = 'old' and answer3 = 'no'").count

  # answer 4 young yes
  @young4yes = User.where("age = 'young' and answer4 = 'yes'").count
  # answer 4 young no
  @young4no = User.where("age = 'young' and answer4 = 'no'").count

  # answer 4 middle yes
  @middle4yes = User.where("age = 'middle' and answer4 = 'yes'").count
  # answer 4 middle no
  @middle4no = User.where("age = 'middle' and answer4 = 'no'").count

  # answer 4 old yes
  @old4yes = User.where("age = 'old' and answer4 = 'yes'").count
  # answer 4 old no
  @old4no = User.where("age = 'old' and answer4 = 'no'").count

@age_data = {
  young1yes: @young1yes,
  young1no: @young1no,
  middle1yes: @middle1yes,
  middle1no: @middle1no,
  old1yes: @old1yes,
  old1no: @old1no,
  young2yes: @young2yes,
  young2no: @young2no,
  middle2yes: @middle2yes,
  middle2no: @middle2no,
  old2yes: @old2yes,
  old2no: @old2no,
  young3yes: @young3yes,
  young3no: @young3no,
  middle3yes: @middle3yes,
  middle3no: @middle3no,
  old3yes: @old3yes,
  old3no: @old3no,
  young4yes: @young4yes,
  young4no: @young4no,
  middle4yes: @middle4yes,
  middle4no: @middle4no,
  old4yes: @old4yes,
  old4no: @old4no
}

  # answer 1 ne yes
  @ne1yes = User.where("location = 'northeast' and answer1 = 'yes'").count
  # answer 1 ne no
  @ne1no = User.where("location = 'northeast' and answer1 = 'no'").count

  # answer 1 s yes
  @s1yes = User.where("location = 'south' and answer1 = 'yes'").count
  # answer 1 s no
  @s1no = User.where("location = 'south' and answer1 = 'no'").count

  # answer 1 mw yes
  @mw1yes = User.where("location = 'midwest' and answer1 = 'yes'").count
  # answer 1 mw no
  @mw1no = User.where("location = 'midwest' and answer1 = 'no'").count

  # answer 1 w yes
  @w1yes = User.where("location = 'west' and answer1 = 'yes'").count
  # answer 1 w no
  @w1no = User.where("location = 'west' and answer1 = 'no'").count

  # answer 2 ne yes
  @ne2yes = User.where("location = 'northeast' and answer2 = 'yes'").count
  # answer 2 ne no
  @ne2no = User.where("location = 'northeast' and answer2 = 'no'").count

  # answer 2 s yes
  @s2yes = User.where("location = 'south' and answer2 = 'yes'").count
  # answer 2 s no
  @s2no = User.where("location = 'south' and answer2 = 'no'").count

  # answer 2 mw yes
  @mw2yes = User.where("location = 'midwest' and answer2 = 'yes'").count
  # answer 2 mw no
  @mw2no = User.where("location = 'midwest' and answer2 = 'no'").count

  # answer 2 w yes
  @w2yes = User.where("location = 'west' and answer2 = 'yes'").count
  # answer 2 w no
  @w2no = User.where("location = 'west' and answer2 = 'no'").count

  # answer 3 ne yes
  @ne3yes = User.where("location = 'northeast' and answer3 = 'yes'").count
  # answer 3 ne no
  @ne3no = User.where("location = 'northeast' and answer3 = 'no'").count

  # answer 3 s yes
  @s3yes = User.where("location = 'south' and answer3 = 'yes'").count
  # answer 3 s no
  @s3no = User.where("location = 'south' and answer3 = 'no'").count

  # answer 3 mw yes
  @mw3yes = User.where("location = 'midwest' and answer3 = 'yes'").count
  # answer 3 mw no
  @mw3no = User.where("location = 'midwest' and answer3 = 'no'").count

  # answer 3 w yes
  @w3yes = User.where("location = 'west' and answer3 = 'yes'").count
  # answer 3 w no
  @w3no = User.where("location = 'west' and answer3 = 'no'").count

  # answer 4 ne yes
  @ne4yes = User.where("location = 'northeast' and answer4 = 'yes'").count
  # answer 4 ne no
  @ne4no = User.where("location = 'northeast' and answer4 = 'no'").count

  # answer 4 s yes
  @s4yes = User.where("location = 'south' and answer4 = 'yes'").count
  # answer 4 s no
  @s4no = User.where("location = 'south' and answer4 = 'no'").count

  # answer 4 mw yes
  @mw4yes = User.where("location = 'midwest' and answer4 = 'yes'").count
  # answer 4 mw no
  @mw4no = User.where("location = 'midwest' and answer4 = 'no'").count

  # answer 4 w yes
  @w4yes = User.where("location = 'west' and answer4 = 'yes'").count
  # answer 4 w no
  @w4no = User.where("location = 'west' and answer4 = 'no'").count

@location_data = {
  ne1yes: @ne1yes,
  ne1no: @ne1no,
  s1yes: @s1yes,
  s1no: @s1no,
  mw1yes: @mw1yes,
  mw1no: @mw1no,
  w1yes: @w1yes,
  w1no: @w1no,
  ne2yes: @ne2yes,
  ne2no: @ne2no,
  s2yes: @s2yes,
  s2no: @s2no,
  mw2yes: @mw2yes,
  mw2no: @mw2no,
  w2yes: @w2yes,
  w2no: @w2no,
  ne3yes: @ne3yes,
  ne3no: @ne3no,
  s3yes: @s3yes,
  s3no: @s3no,
  mw3yes: @mw3yes,
  mw3no: @mw3no,
  w3yes: @w3yes,
  w3no: @w3no,
  ne4yes: @ne4yes,
  ne4no: @ne4no,
  s4yes: @s4yes,
  s4no: @s4no,
  mw4yes: @mw4yes,
  mw4no: @mw4no,
  w4yes: @w4yes,
  w4no: @w4no
}

  # answer 1 dem yes
  @dem1yes = User.where("party_affiliation = 'democrat' and answer1 = 'yes'").count
  # answer 1 dem no
  @dem1no = User.where("party_affiliation = 'democrat' and answer1 = 'no'").count

  # answer 1 rep yes
  @rep1yes = User.where("party_affiliation = 'republican' and answer1 = 'yes'").count
  # answer 1 rep no
  @rep1no = User.where("party_affiliation = 'republican' and answer1 = 'no'").count

  # answer 1 ind yes
  @ind1yes = User.where("party_affiliation = 'independent' and answer1 = 'yes'").count
  # answer 1 ind no
  @ind1no = User.where("party_affiliation = 'independent' and answer1 = 'no'").count


  # answer 2 dem yes
  @dem2yes = User.where("party_affiliation = 'democrat' and answer2 = 'yes'").count
  # answer 2 dem no
  @dem2no = User.where("party_affiliation = 'democrat' and answer2 = 'no'").count

  # answer 2 rep yes
  @rep2yes = User.where("party_affiliation = 'republican' and answer2 = 'yes'").count
  # answer 2 rep no
  @rep2no = User.where("party_affiliation = 'republican' and answer2 = 'no'").count

  # answer 2 ind yes
  @ind2yes = User.where("party_affiliation = 'independent' and answer2 = 'yes'").count
  # answer 2 ind no
  @ind2no = User.where("party_affiliation = 'independent' and answer2 = 'no'").count

  # answer 3 dem yes
  @dem3yes = User.where("party_affiliation = 'democrat' and answer3 = 'yes'").count
  # answer 3 dem no
  @dem3no = User.where("party_affiliation = 'democrat' and answer3 = 'no'").count

  # answer 3 rep yes
  @rep3yes = User.where("party_affiliation = 'republican' and answer3 = 'yes'").count
  # answer 3 rep no
  @rep3no = User.where("party_affiliation = 'republican' and answer3 = 'no'").count

  # answer 3 ind yes
  @ind3yes = User.where("party_affiliation = 'independent' and answer3 = 'yes'").count
  # answer 3 ind no
  @ind3no = User.where("party_affiliation = 'independent' and answer3 = 'no'").count


  # answer 4 dem yes
  @dem4yes = User.where("party_affiliation = 'democrat' and answer4 = 'yes'").count
  # answer 4 dem no
  @dem4no = User.where("party_affiliation = 'democrat' and answer4 = 'no'").count

  # answer 4 rep yes
  @rep4yes = User.where("party_affiliation = 'republican' and answer4 = 'yes'").count
  # answer 4 rep no
  @rep4no = User.where("party_affiliation = 'republican' and answer4 = 'no'").count

  # answer 4 ind yes
  @ind4yes = User.where("party_affiliation = 'independent' and answer4 = 'yes'").count
  # answer 4 ind no
  @ind4no = User.where("party_affiliation = 'independent' and answer4 = 'no'").count

  @party_affiliation_data = {
    dem1yes: @dem1yes,
    dem1no: @dem1no,
    rep1yes: @rep1yes,
    rep1no: @rep1no,
    ind1yes: @ind1yes,
    ind1no: @ind1no,
    dem2yes: @dem2yes,
    dem2no: @dem2no,
    rep2yes: @rep2yes,
    rep2no: @rep2no,
    ind2yes: @ind2yes,
    ind2no: @ind2no,
    dem3yes: @dem3yes,
    dem3no: @dem3no,
    rep3yes: @rep3yes,
    rep3no: @rep3no,
    ind3yes: @ind3yes,
    ind3no: @ind3no,
    dem4yes: @dem4yes,
    dem4no: @dem4no,
    rep4yes: @rep4yes,
    rep4no: @rep4no,
    ind4yes: @ind4yes,
    ind4no: @ind4no,
  }
  erb :results2
end

get "/logout" do
  session.clear
  redirect "/"
end

get '/register' do
  @user = User.new
  erb :register
end

post '/register' do
  @user = User.new(params[:user])
  if @user.save
    session[:id] = @user.id
    redirect '/main'
  else
    redirect "/register"
  end
end


get "/results3" do
  # @user = current_user

  # answer 1 male yes
  @male1yes = User.where("gender = 'male' and answer1 = 'yes'").count
  # answer 1 male no
  @male1no = User.where("gender = 'male' and answer1 = 'no'").count

  # answer 1 female yes
  @female1yes = User.where("gender = 'female' and answer1 = 'yes'").count
  # answer 1 female no
  @female1no = User.where("gender = 'female' and answer1 = 'no'").count

  # answer 2 male yes
  @male2yes = User.where("gender = 'male' and answer2 = 'yes'").count
  # answer 2 male no
  @male2no = User.where("gender = 'male' and answer2 = 'no'").count

  # answer 2 female yes
  @female2yes = User.where("gender = 'female' and answer2 = 'yes'").count
  # answer 2 female no
  @female2no = User.where("gender = 'female' and answer2 = 'no'").count

  # answer 3 male yes
  @male3yes = User.where("gender = 'male' and answer3 = 'yes'").count
  # answer 2 male no
  @male3no = User.where("gender = 'male' and answer3 = 'no'").count

  # answer 3 female yes
  @female3yes = User.where("gender = 'female' and answer3 = 'yes'").count
  # answer 3 female no
  @female3no = User.where("gender = 'female' and answer3 = 'no'").count

  # answer 4 male yes
  @male4yes = User.where("gender = 'male' and answer4 = 'yes'").count
  # answer 2 male no
  @male4no = User.where("gender = 'male' and answer4 = 'no'").count

  # answer 4 female yes
  @female4yes = User.where("gender = 'female' and answer3 = 'yes'").count
  # answer 4 female no
  @female4no = User.where("gender = 'female' and answer4 = 'no'").count

@gender_data = {
  male1yes: @male1yes,
  male1no: @male1no,
  female1yes: @female1yes,
  female1no: @female1no,
  male2yes: @male2yes,
  male2no: @male2no,
  female2yes: @female2yes,
  female2no: @female2no,
  male3yes: @male3yes,
  male3no: @male3no,
  female3yes: @female3yes,
  female3no: @female3no,
  male4yes: @male4yes,
  male4no: @male4no,
  female4yes: @female4yes,
  female4no: @female4no
}

  # answer 1 young yes
  @young1yes = User.where("age = 'young' and answer1 = 'yes'").count
  # answer 1 young no
  @young1no = User.where("age = 'young' and answer1 = 'no'").count

  # answer 1 middle yes
  @middle1yes = User.where("age = 'middle' and answer1 = 'yes'").count
  # answer 1 middle no
  @middle1no = User.where("age = 'middle' and answer1 = 'no'").count

  # answer 1 old yes
  @old1yes = User.where("age = 'old' and answer1 = 'yes'").count
  # answer 1 old no
  @old1no = User.where("age = 'old' and answer1 = 'no'").count

  # answer 2 young yes
  @young2yes = User.where("age = 'young' and answer2 = 'yes'").count
  # answer 2 young no
  @young2no = User.where("age = 'young' and answer2 = 'no'").count

  # answer 2 middle yes
  @middle2yes = User.where("age = 'middle' and answer2 = 'yes'").count
  # answer 2 middle no
  @middle2no = User.where("age = 'middle' and answer2 = 'no'").count

  # answer 2 old yes
  @old2yes = User.where("age = 'old' and answer2 = 'yes'").count
  # answer 2 old no
  @old2no = User.where("age = 'old' and answer2 = 'no'").count

  # answer 3 young yes
  @young3yes = User.where("age = 'young' and answer3 = 'yes'").count
  # answer 3 young no
  @young3no = User.where("age = 'young' and answer3 = 'no'").count

  # answer 3 middle yes
  @middle3yes = User.where("age = 'middle' and answer3 = 'yes'").count
  # answer 3 middle no
  @middle3no = User.where("age = 'middle' and answer3 = 'no'").count

  # answer 3 old yes
  @old3yes = User.where("age = 'old' and answer3 = 'yes'").count
  # answer 3 old no
  @old3no = User.where("age = 'old' and answer3 = 'no'").count

  # answer 4 young yes
  @young4yes = User.where("age = 'young' and answer4 = 'yes'").count
  # answer 4 young no
  @young4no = User.where("age = 'young' and answer4 = 'no'").count

  # answer 4 middle yes
  @middle4yes = User.where("age = 'middle' and answer4 = 'yes'").count
  # answer 4 middle no
  @middle4no = User.where("age = 'middle' and answer4 = 'no'").count

  # answer 4 old yes
  @old4yes = User.where("age = 'old' and answer4 = 'yes'").count
  # answer 4 old no
  @old4no = User.where("age = 'old' and answer4 = 'no'").count

@age_data = {
  young1yes: @young1yes,
  young1no: @young1no,
  middle1yes: @middle1yes,
  middle1no: @middle1no,
  old1yes: @old1yes,
  old1no: @old1no,
  young2yes: @young2yes,
  young2no: @young2no,
  middle2yes: @middle2yes,
  middle2no: @middle2no,
  old2yes: @old2yes,
  old2no: @old2no,
  young3yes: @young3yes,
  young3no: @young3no,
  middle3yes: @middle3yes,
  middle3no: @middle3no,
  old3yes: @old3yes,
  old3no: @old3no,
  young4yes: @young4yes,
  young4no: @young4no,
  middle4yes: @middle4yes,
  middle4no: @middle4no,
  old4yes: @old4yes,
  old4no: @old4no
}

  # answer 1 ne yes
  @ne1yes = User.where("location = 'northeast' and answer1 = 'yes'").count
  # answer 1 ne no
  @ne1no = User.where("location = 'northeast' and answer1 = 'no'").count

  # answer 1 s yes
  @s1yes = User.where("location = 'south' and answer1 = 'yes'").count
  # answer 1 s no
  @s1no = User.where("location = 'south' and answer1 = 'no'").count

  # answer 1 mw yes
  @mw1yes = User.where("location = 'midwest' and answer1 = 'yes'").count
  # answer 1 mw no
  @mw1no = User.where("location = 'midwest' and answer1 = 'no'").count

  # answer 1 w yes
  @w1yes = User.where("location = 'west' and answer1 = 'yes'").count
  # answer 1 w no
  @w1no = User.where("location = 'west' and answer1 = 'no'").count

  # answer 2 ne yes
  @ne2yes = User.where("location = 'northeast' and answer2 = 'yes'").count
  # answer 2 ne no
  @ne2no = User.where("location = 'northeast' and answer2 = 'no'").count

  # answer 2 s yes
  @s2yes = User.where("location = 'south' and answer2 = 'yes'").count
  # answer 2 s no
  @s2no = User.where("location = 'south' and answer2 = 'no'").count

  # answer 2 mw yes
  @mw2yes = User.where("location = 'midwest' and answer2 = 'yes'").count
  # answer 2 mw no
  @mw2no = User.where("location = 'midwest' and answer2 = 'no'").count

  # answer 2 w yes
  @w2yes = User.where("location = 'west' and answer2 = 'yes'").count
  # answer 2 w no
  @w2no = User.where("location = 'west' and answer2 = 'no'").count

  # answer 3 ne yes
  @ne3yes = User.where("location = 'northeast' and answer3 = 'yes'").count
  # answer 3 ne no
  @ne3no = User.where("location = 'northeast' and answer3 = 'no'").count

  # answer 3 s yes
  @s3yes = User.where("location = 'south' and answer3 = 'yes'").count
  # answer 3 s no
  @s3no = User.where("location = 'south' and answer3 = 'no'").count

  # answer 3 mw yes
  @mw3yes = User.where("location = 'midwest' and answer3 = 'yes'").count
  # answer 3 mw no
  @mw3no = User.where("location = 'midwest' and answer3 = 'no'").count

  # answer 3 w yes
  @w3yes = User.where("location = 'west' and answer3 = 'yes'").count
  # answer 3 w no
  @w3no = User.where("location = 'west' and answer3 = 'no'").count

  # answer 4 ne yes
  @ne4yes = User.where("location = 'northeast' and answer4 = 'yes'").count
  # answer 4 ne no
  @ne4no = User.where("location = 'northeast' and answer4 = 'no'").count

  # answer 4 s yes
  @s4yes = User.where("location = 'south' and answer4 = 'yes'").count
  # answer 4 s no
  @s4no = User.where("location = 'south' and answer4 = 'no'").count

  # answer 4 mw yes
  @mw4yes = User.where("location = 'midwest' and answer4 = 'yes'").count
  # answer 4 mw no
  @mw4no = User.where("location = 'midwest' and answer4 = 'no'").count

  # answer 4 w yes
  @w4yes = User.where("location = 'west' and answer4 = 'yes'").count
  # answer 4 w no
  @w4no = User.where("location = 'west' and answer4 = 'no'").count

@location_data = {
  ne1yes: @ne1yes,
  ne1no: @ne1no,
  s1yes: @s1yes,
  s1no: @s1no,
  mw1yes: @mw1yes,
  mw1no: @mw1no,
  w1yes: @w1yes,
  w1no: @w1no,
  ne2yes: @ne2yes,
  ne2no: @ne2no,
  s2yes: @s2yes,
  s2no: @s2no,
  mw2yes: @mw2yes,
  mw2no: @mw2no,
  w2yes: @w2yes,
  w2no: @w2no,
  ne3yes: @ne3yes,
  ne3no: @ne3no,
  s3yes: @s3yes,
  s3no: @s3no,
  mw3yes: @mw3yes,
  mw3no: @mw3no,
  w3yes: @w3yes,
  w3no: @w3no,
  ne4yes: @ne4yes,
  ne4no: @ne4no,
  s4yes: @s4yes,
  s4no: @s4no,
  mw4yes: @mw4yes,
  mw4no: @mw4no,
  w4yes: @w4yes,
  w4no: @w4no
}

  # answer 1 dem yes
  @dem1yes = User.where("party_affiliation = 'democrat' and answer1 = 'yes'").count
  # answer 1 dem no
  @dem1no = User.where("party_affiliation = 'democrat' and answer1 = 'no'").count

  # answer 1 rep yes
  @rep1yes = User.where("party_affiliation = 'republican' and answer1 = 'yes'").count
  # answer 1 rep no
  @rep1no = User.where("party_affiliation = 'republican' and answer1 = 'no'").count

  # answer 1 ind yes
  @ind1yes = User.where("party_affiliation = 'independent' and answer1 = 'yes'").count
  # answer 1 ind no
  @ind1no = User.where("party_affiliation = 'independent' and answer1 = 'no'").count


  # answer 2 dem yes
  @dem2yes = User.where("party_affiliation = 'democrat' and answer2 = 'yes'").count
  # answer 2 dem no
  @dem2no = User.where("party_affiliation = 'democrat' and answer2 = 'no'").count

  # answer 2 rep yes
  @rep2yes = User.where("party_affiliation = 'republican' and answer2 = 'yes'").count
  # answer 2 rep no
  @rep2no = User.where("party_affiliation = 'republican' and answer2 = 'no'").count

  # answer 2 ind yes
  @ind2yes = User.where("party_affiliation = 'independent' and answer2 = 'yes'").count
  # answer 2 ind no
  @ind2no = User.where("party_affiliation = 'independent' and answer2 = 'no'").count

  # answer 3 dem yes
  @dem3yes = User.where("party_affiliation = 'democrat' and answer3 = 'yes'").count
  # answer 3 dem no
  @dem3no = User.where("party_affiliation = 'democrat' and answer3 = 'no'").count

  # answer 3 rep yes
  @rep3yes = User.where("party_affiliation = 'republican' and answer3 = 'yes'").count
  # answer 3 rep no
  @rep3no = User.where("party_affiliation = 'republican' and answer3 = 'no'").count

  # answer 3 ind yes
  @ind3yes = User.where("party_affiliation = 'independent' and answer3 = 'yes'").count
  # answer 3 ind no
  @ind3no = User.where("party_affiliation = 'independent' and answer3 = 'no'").count


  # answer 4 dem yes
  @dem4yes = User.where("party_affiliation = 'democrat' and answer4 = 'yes'").count
  # answer 4 dem no
  @dem4no = User.where("party_affiliation = 'democrat' and answer4 = 'no'").count

  # answer 4 rep yes
  @rep4yes = User.where("party_affiliation = 'republican' and answer4 = 'yes'").count
  # answer 4 rep no
  @rep4no = User.where("party_affiliation = 'republican' and answer4 = 'no'").count

  # answer 4 ind yes
  @ind4yes = User.where("party_affiliation = 'independent' and answer4 = 'yes'").count
  # answer 4 ind no
  @ind4no = User.where("party_affiliation = 'independent' and answer4 = 'no'").count

  @party_affiliation_data = {
    dem1yes: @dem1yes,
    dem1no: @dem1no,
    rep1yes: @rep1yes,
    rep1no: @rep1no,
    ind1yes: @ind1yes,
    ind1no: @ind1no,
    dem2yes: @dem2yes,
    dem2no: @dem2no,
    rep2yes: @rep2yes,
    rep2no: @rep2no,
    ind2yes: @ind2yes,
    ind2no: @ind2no,
    dem3yes: @dem3yes,
    dem3no: @dem3no,
    rep3yes: @rep3yes,
    rep3no: @rep3no,
    ind3yes: @ind3yes,
    ind3no: @ind3no,
    dem4yes: @dem4yes,
    dem4no: @dem4no,
    rep4yes: @rep4yes,
    rep4no: @rep4no,
    ind4yes: @ind4yes,
    ind4no: @ind4no,
  }
  erb :results3
end


get "/results4" do
  # @user = current_user

  # answer 1 male yes
  @male1yes = User.where("gender = 'male' and answer1 = 'yes'").count
  # answer 1 male no
  @male1no = User.where("gender = 'male' and answer1 = 'no'").count

  # answer 1 female yes
  @female1yes = User.where("gender = 'female' and answer1 = 'yes'").count
  # answer 1 female no
  @female1no = User.where("gender = 'female' and answer1 = 'no'").count

  # answer 2 male yes
  @male2yes = User.where("gender = 'male' and answer2 = 'yes'").count
  # answer 2 male no
  @male2no = User.where("gender = 'male' and answer2 = 'no'").count

  # answer 2 female yes
  @female2yes = User.where("gender = 'female' and answer2 = 'yes'").count
  # answer 2 female no
  @female2no = User.where("gender = 'female' and answer2 = 'no'").count

  # answer 3 male yes
  @male3yes = User.where("gender = 'male' and answer3 = 'yes'").count
  # answer 2 male no
  @male3no = User.where("gender = 'male' and answer3 = 'no'").count

  # answer 3 female yes
  @female3yes = User.where("gender = 'female' and answer3 = 'yes'").count
  # answer 3 female no
  @female3no = User.where("gender = 'female' and answer3 = 'no'").count

  # answer 4 male yes
  @male4yes = User.where("gender = 'male' and answer4 = 'yes'").count
  # answer 2 male no
  @male4no = User.where("gender = 'male' and answer4 = 'no'").count

  # answer 4 female yes
  @female4yes = User.where("gender = 'female' and answer3 = 'yes'").count
  # answer 4 female no
  @female4no = User.where("gender = 'female' and answer4 = 'no'").count

@gender_data = {
  male1yes: @male1yes,
  male1no: @male1no,
  female1yes: @female1yes,
  female1no: @female1no,
  male2yes: @male2yes,
  male2no: @male2no,
  female2yes: @female2yes,
  female2no: @female2no,
  male3yes: @male3yes,
  male3no: @male3no,
  female3yes: @female3yes,
  female3no: @female3no,
  male4yes: @male4yes,
  male4no: @male4no,
  female4yes: @female4yes,
  female4no: @female4no
}

  # answer 1 young yes
  @young1yes = User.where("age = 'young' and answer1 = 'yes'").count
  # answer 1 young no
  @young1no = User.where("age = 'young' and answer1 = 'no'").count

  # answer 1 middle yes
  @middle1yes = User.where("age = 'middle' and answer1 = 'yes'").count
  # answer 1 middle no
  @middle1no = User.where("age = 'middle' and answer1 = 'no'").count

  # answer 1 old yes
  @old1yes = User.where("age = 'old' and answer1 = 'yes'").count
  # answer 1 old no
  @old1no = User.where("age = 'old' and answer1 = 'no'").count

  # answer 2 young yes
  @young2yes = User.where("age = 'young' and answer2 = 'yes'").count
  # answer 2 young no
  @young2no = User.where("age = 'young' and answer2 = 'no'").count

  # answer 2 middle yes
  @middle2yes = User.where("age = 'middle' and answer2 = 'yes'").count
  # answer 2 middle no
  @middle2no = User.where("age = 'middle' and answer2 = 'no'").count

  # answer 2 old yes
  @old2yes = User.where("age = 'old' and answer2 = 'yes'").count
  # answer 2 old no
  @old2no = User.where("age = 'old' and answer2 = 'no'").count

  # answer 3 young yes
  @young3yes = User.where("age = 'young' and answer3 = 'yes'").count
  # answer 3 young no
  @young3no = User.where("age = 'young' and answer3 = 'no'").count

  # answer 3 middle yes
  @middle3yes = User.where("age = 'middle' and answer3 = 'yes'").count
  # answer 3 middle no
  @middle3no = User.where("age = 'middle' and answer3 = 'no'").count

  # answer 3 old yes
  @old3yes = User.where("age = 'old' and answer3 = 'yes'").count
  # answer 3 old no
  @old3no = User.where("age = 'old' and answer3 = 'no'").count

  # answer 4 young yes
  @young4yes = User.where("age = 'young' and answer4 = 'yes'").count
  # answer 4 young no
  @young4no = User.where("age = 'young' and answer4 = 'no'").count

  # answer 4 middle yes
  @middle4yes = User.where("age = 'middle' and answer4 = 'yes'").count
  # answer 4 middle no
  @middle4no = User.where("age = 'middle' and answer4 = 'no'").count

  # answer 4 old yes
  @old4yes = User.where("age = 'old' and answer4 = 'yes'").count
  # answer 4 old no
  @old4no = User.where("age = 'old' and answer4 = 'no'").count

@age_data = {
  young1yes: @young1yes,
  young1no: @young1no,
  middle1yes: @middle1yes,
  middle1no: @middle1no,
  old1yes: @old1yes,
  old1no: @old1no,
  young2yes: @young2yes,
  young2no: @young2no,
  middle2yes: @middle2yes,
  middle2no: @middle2no,
  old2yes: @old2yes,
  old2no: @old2no,
  young3yes: @young3yes,
  young3no: @young3no,
  middle3yes: @middle3yes,
  middle3no: @middle3no,
  old3yes: @old3yes,
  old3no: @old3no,
  young4yes: @young4yes,
  young4no: @young4no,
  middle4yes: @middle4yes,
  middle4no: @middle4no,
  old4yes: @old4yes,
  old4no: @old4no
}

  # answer 1 ne yes
  @ne1yes = User.where("location = 'northeast' and answer1 = 'yes'").count
  # answer 1 ne no
  @ne1no = User.where("location = 'northeast' and answer1 = 'no'").count

  # answer 1 s yes
  @s1yes = User.where("location = 'south' and answer1 = 'yes'").count
  # answer 1 s no
  @s1no = User.where("location = 'south' and answer1 = 'no'").count

  # answer 1 mw yes
  @mw1yes = User.where("location = 'midwest' and answer1 = 'yes'").count
  # answer 1 mw no
  @mw1no = User.where("location = 'midwest' and answer1 = 'no'").count

  # answer 1 w yes
  @w1yes = User.where("location = 'west' and answer1 = 'yes'").count
  # answer 1 w no
  @w1no = User.where("location = 'west' and answer1 = 'no'").count

  # answer 2 ne yes
  @ne2yes = User.where("location = 'northeast' and answer2 = 'yes'").count
  # answer 2 ne no
  @ne2no = User.where("location = 'northeast' and answer2 = 'no'").count

  # answer 2 s yes
  @s2yes = User.where("location = 'south' and answer2 = 'yes'").count
  # answer 2 s no
  @s2no = User.where("location = 'south' and answer2 = 'no'").count

  # answer 2 mw yes
  @mw2yes = User.where("location = 'midwest' and answer2 = 'yes'").count
  # answer 2 mw no
  @mw2no = User.where("location = 'midwest' and answer2 = 'no'").count

  # answer 2 w yes
  @w2yes = User.where("location = 'west' and answer2 = 'yes'").count
  # answer 2 w no
  @w2no = User.where("location = 'west' and answer2 = 'no'").count

  # answer 3 ne yes
  @ne3yes = User.where("location = 'northeast' and answer3 = 'yes'").count
  # answer 3 ne no
  @ne3no = User.where("location = 'northeast' and answer3 = 'no'").count

  # answer 3 s yes
  @s3yes = User.where("location = 'south' and answer3 = 'yes'").count
  # answer 3 s no
  @s3no = User.where("location = 'south' and answer3 = 'no'").count

  # answer 3 mw yes
  @mw3yes = User.where("location = 'midwest' and answer3 = 'yes'").count
  # answer 3 mw no
  @mw3no = User.where("location = 'midwest' and answer3 = 'no'").count

  # answer 3 w yes
  @w3yes = User.where("location = 'west' and answer3 = 'yes'").count
  # answer 3 w no
  @w3no = User.where("location = 'west' and answer3 = 'no'").count

  # answer 4 ne yes
  @ne4yes = User.where("location = 'northeast' and answer4 = 'yes'").count
  # answer 4 ne no
  @ne4no = User.where("location = 'northeast' and answer4 = 'no'").count

  # answer 4 s yes
  @s4yes = User.where("location = 'south' and answer4 = 'yes'").count
  # answer 4 s no
  @s4no = User.where("location = 'south' and answer4 = 'no'").count

  # answer 4 mw yes
  @mw4yes = User.where("location = 'midwest' and answer4 = 'yes'").count
  # answer 4 mw no
  @mw4no = User.where("location = 'midwest' and answer4 = 'no'").count

  # answer 4 w yes
  @w4yes = User.where("location = 'west' and answer4 = 'yes'").count
  # answer 4 w no
  @w4no = User.where("location = 'west' and answer4 = 'no'").count

@location_data = {
  ne1yes: @ne1yes,
  ne1no: @ne1no,
  s1yes: @s1yes,
  s1no: @s1no,
  mw1yes: @mw1yes,
  mw1no: @mw1no,
  w1yes: @w1yes,
  w1no: @w1no,
  ne2yes: @ne2yes,
  ne2no: @ne2no,
  s2yes: @s2yes,
  s2no: @s2no,
  mw2yes: @mw2yes,
  mw2no: @mw2no,
  w2yes: @w2yes,
  w2no: @w2no,
  ne3yes: @ne3yes,
  ne3no: @ne3no,
  s3yes: @s3yes,
  s3no: @s3no,
  mw3yes: @mw3yes,
  mw3no: @mw3no,
  w3yes: @w3yes,
  w3no: @w3no,
  ne4yes: @ne4yes,
  ne4no: @ne4no,
  s4yes: @s4yes,
  s4no: @s4no,
  mw4yes: @mw4yes,
  mw4no: @mw4no,
  w4yes: @w4yes,
  w4no: @w4no
}

  # answer 1 dem yes
  @dem1yes = User.where("party_affiliation = 'democrat' and answer1 = 'yes'").count
  # answer 1 dem no
  @dem1no = User.where("party_affiliation = 'democrat' and answer1 = 'no'").count

  # answer 1 rep yes
  @rep1yes = User.where("party_affiliation = 'republican' and answer1 = 'yes'").count
  # answer 1 rep no
  @rep1no = User.where("party_affiliation = 'republican' and answer1 = 'no'").count

  # answer 1 ind yes
  @ind1yes = User.where("party_affiliation = 'independent' and answer1 = 'yes'").count
  # answer 1 ind no
  @ind1no = User.where("party_affiliation = 'independent' and answer1 = 'no'").count


  # answer 2 dem yes
  @dem2yes = User.where("party_affiliation = 'democrat' and answer2 = 'yes'").count
  # answer 2 dem no
  @dem2no = User.where("party_affiliation = 'democrat' and answer2 = 'no'").count

  # answer 2 rep yes
  @rep2yes = User.where("party_affiliation = 'republican' and answer2 = 'yes'").count
  # answer 2 rep no
  @rep2no = User.where("party_affiliation = 'republican' and answer2 = 'no'").count

  # answer 2 ind yes
  @ind2yes = User.where("party_affiliation = 'independent' and answer2 = 'yes'").count
  # answer 2 ind no
  @ind2no = User.where("party_affiliation = 'independent' and answer2 = 'no'").count

  # answer 3 dem yes
  @dem3yes = User.where("party_affiliation = 'democrat' and answer3 = 'yes'").count
  # answer 3 dem no
  @dem3no = User.where("party_affiliation = 'democrat' and answer3 = 'no'").count

  # answer 3 rep yes
  @rep3yes = User.where("party_affiliation = 'republican' and answer3 = 'yes'").count
  # answer 3 rep no
  @rep3no = User.where("party_affiliation = 'republican' and answer3 = 'no'").count

  # answer 3 ind yes
  @ind3yes = User.where("party_affiliation = 'independent' and answer3 = 'yes'").count
  # answer 3 ind no
  @ind3no = User.where("party_affiliation = 'independent' and answer3 = 'no'").count


  # answer 4 dem yes
  @dem4yes = User.where("party_affiliation = 'democrat' and answer4 = 'yes'").count
  # answer 4 dem no
  @dem4no = User.where("party_affiliation = 'democrat' and answer4 = 'no'").count

  # answer 4 rep yes
  @rep4yes = User.where("party_affiliation = 'republican' and answer4 = 'yes'").count
  # answer 4 rep no
  @rep4no = User.where("party_affiliation = 'republican' and answer4 = 'no'").count

  # answer 4 ind yes
  @ind4yes = User.where("party_affiliation = 'independent' and answer4 = 'yes'").count
  # answer 4 ind no
  @ind4no = User.where("party_affiliation = 'independent' and answer4 = 'no'").count

  @party_affiliation_data = {
    dem1yes: @dem1yes,
    dem1no: @dem1no,
    rep1yes: @rep1yes,
    rep1no: @rep1no,
    ind1yes: @ind1yes,
    ind1no: @ind1no,
    dem2yes: @dem2yes,
    dem2no: @dem2no,
    rep2yes: @rep2yes,
    rep2no: @rep2no,
    ind2yes: @ind2yes,
    ind2no: @ind2no,
    dem3yes: @dem3yes,
    dem3no: @dem3no,
    rep3yes: @rep3yes,
    rep3no: @rep3no,
    ind3yes: @ind3yes,
    ind3no: @ind3no,
    dem4yes: @dem4yes,
    dem4no: @dem4no,
    rep4yes: @rep4yes,
    rep4no: @rep4no,
    ind4yes: @ind4yes,
    ind4no: @ind4no,
  }
  erb :results4
end


get '/resultsmain' do

  # answer 1 yes
  @yes1 = User.where("answer1 = 'yes'").count
  # answer 1 no
  @no1 = User.where("answer1 = 'no'").count
    # answer 2 yes
  @yes2 = User.where("answer2 = 'yes'").count
  # answer 2 no
  @no2 = User.where("answer2 = 'no'").count
    # answer 3 yes
  @yes3 = User.where("answer3 = 'yes'").count
  # answer 3 no
  @no3 = User.where("answer3 = 'no'").count
    # answer 4 yes
  @yes4 = User.where("answer4 = 'yes'").count
  # answer 4 no
  @no4 = User.where("answer4 = 'no'").count


  @total_data = {
    yes1: @yes1,
    no1: @no1,
    yes2: @yes2,
    no2: @no2,
    yes3: @yes3,
    no3: @no3,
    yes4: @yes4,
    no4: @no4
  }

  erb :resultsmain
end




























