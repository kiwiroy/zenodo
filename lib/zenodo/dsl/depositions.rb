require 'zenodo/dsl'

module Zenodo
  module DSL::Depositions
    # GET /Deposit/Depositions
    # Get depositions.
    # @return [Array, nil].
    def get_depositions
      Resources::Deposition.parse(request(:get, "Deposit/Depositions"))
    end

    # GET /Deposit/Deposition/{id}
    # Get a deposition.
    # @param [String, Fixnum] id A deposition's ID.
    # @raise [ArgumentError] If the method arguments are blank.
    # @return [Zenodo::Resources::deposition, nil].
    def get_deposition(id:)
      raise ArgumentError, "ID cannot be blank" if id.blank?
      Resources::Deposition.parse(request(:get, "Deposit/Depositions/#{id}"))
    end

    # POST /Deposit/Depositions
    # Creates a deposition.
    # @param [Hash] deposition The deposition to create.
    # @raise [ArgumentError] If the method arguments are blank.
    # @return [Zenodo::Resources::deposition, nil].
    def create_deposition(deposition:)
      raise ArgumentError, "Deposition cannot be blank" if deposition.blank?
      Resources::Deposition.parse(request(:post, "Deposit/Depositions", deposition))
    end

    # PUT /Deposit/Depositions
    # Updates a deposition.
    # @param [Hash] deposition The deposition to update.
    # @raise [ArgumentError] If the method arguments are blank.
    # @return [Zenodo::Resources::deposition, nil].
    def update_deposition(deposition:)
      raise ArgumentError, "Deposition cannot be blank" if deposition.blank?
      Resources::Deposition.parse(request(:put, "Deposit/Depositions", deposition))
    end

    # DELETE /Deposit/Depositions/{id}
    # Deletes a deposition.
    # @param [String, Fixnum] id A deposition's ID.
    # @raise [ArgumentError] If the method arguments are blank.
    # @return [Faraday::Response].
    def delete_deposition(id:)
      raise ArgumentError, "ID cannot be blank" if id.blank?
      request(:delete, "Deposit/Depositions/#{id}")
    end
  end
end