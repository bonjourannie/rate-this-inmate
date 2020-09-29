class Api::V1::InmatesController < ApplicationController
    def index
        @inmates = Inmate.all
        render json: @inmates
    end
    
    def create 
        @inmate = Inmate.create(inmate_params)
        if @inmate.save
            render json: @inmate
        else 
            render json: {error: 'error creating inmate'}
        end
    end
    #I don't think I want to create inmates. Use API instead
    
    def show 
        @inmate = Inmate.find(params[:id])
        render json: @inmate
    end
    
    def destroy
        @inmate = Inmate.find(params[:id])
        @inmate.destroy 
    end

    private 

    def inmate_params 
        params.require(:inmate).permit(:contact, :username, :upvote, :name, :gender, :age, :charges, :release_date, :looking_for)
    end

    def request_api(url)
        resp = Excon.get(
            url, 
            headers: {
                'X-RapidAPI-Host' => URI.parse(url).host,
                'X-RapidAPI-Key' => ENV.fetch('RAPIDAPI_API_KEY')
              }
            )

            return nil if response.status != 200
            
            JSON.parse(response.body)
          end

          def find_county(county)
            request_api(
                "https://jailbase-jailbase.p.rapidapi.com/recent/?source_id=#{county}"
            )
          end




end
