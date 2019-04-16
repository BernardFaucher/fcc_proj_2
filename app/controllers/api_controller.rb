class ApiController < ApplicationController
    def new
        @shorturl = Shorturl.new(url: params[:url])
        if @shorturl.save
            render json: { original_url: @shorturl.url, short_url: @shorturl.id }
        else
            render json: { error: "invalid URL" }
        end
    end

    def show
        begin 
            @shorturl = Shorturl.find(params[:id])
            redirect_to @shorturl.url
        rescue
            render json: { error: "invalid URL" }
        end
    end
end
