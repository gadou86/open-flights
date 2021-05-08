module Api
  module v1
    class AirllinesController < ApplicationController
      def index
        airlines = Airline.all

      render json: AirlineSerializer.new(airlines, options).serializer_json
      end

      def show
        airline = Airline.find_by(slug: params[:slug])

        render json: AirlineSerializer.new(airline).serializer_json
      end

      def create
        airline = Airline.new(airline_params)

        if airline.save
          render json: AirlineSerializer.new(airline).serializer_json
        else
           render json: {error: airline.error.message}, status: 422
        end
      end

      def update
        airline = Airline.find_by(slug: params[:slug])

        if airline.update(airline_params)
          render json: AirlineSerializer.new(airline).serializer_json
        else
           render json: {error: airline.error.message}, status: 422
        end
      end

      def destroy
        airline = Airline.find_by(slug: params[:slug])

        if airline.destroy
          render :no_content
        else
           render json: {error: airline.error.message}, status: 422
        end
      end

      private

      def airline_params
        params.require(:airline).permit(:name, image_url)
      end

      def options
        @options ||= { include : %i[reviews]}
      end
    end
  end
end