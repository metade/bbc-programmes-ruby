#!/usr/bin/env ruby

module BBC::Programmes

  class Service < Base
    type RDF::PO.Service

    default_vocabulary RDF::PO
    property :label, :predicate => RDF::RDFS.label, :type => String
    property :parent, :predicate => RDF::PO.parent_service, :type => 'BBC_Programmes_Service'

    def to_s
      label.to_s
    end
  end

end
