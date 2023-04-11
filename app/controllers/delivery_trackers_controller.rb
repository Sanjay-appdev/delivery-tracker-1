class DeliveryTrackersController < ApplicationController
  def index
    matching_delivery_trackers = DeliveryTracker.all

    @list_of_delivery_trackers = matching_delivery_trackers.order({ :created_at => :desc })

    render({ :template => "delivery_trackers/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_delivery_trackers = DeliveryTracker.where({ :id => the_id })

    @the_delivery_tracker = matching_delivery_trackers.at(0)

    render({ :template => "delivery_trackers/show.html.erb" })
  end

  def create
    the_delivery_tracker = DeliveryTracker.new
    the_delivery_tracker.description = params.fetch("query_description")
    the_delivery_tracker.arrival = params.fetch("query_arrival")
    the_delivery_tracker.details = params.fetch("query_details")
    the_delivery_tracker.status = params.fetch("query_status")

    if the_delivery_tracker.valid?
      the_delivery_tracker.save
      redirect_to("/delivery_trackers", { :notice => "Delivery tracker created successfully." })
    else
      redirect_to("/delivery_trackers", { :alert => the_delivery_tracker.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_delivery_tracker = DeliveryTracker.where({ :id => the_id }).at(0)

    the_delivery_tracker.description = params.fetch("query_description")
    the_delivery_tracker.arrival = params.fetch("query_arrival")
    the_delivery_tracker.details = params.fetch("query_details")
    the_delivery_tracker.status = params.fetch("query_status")

    if the_delivery_tracker.valid?
      the_delivery_tracker.save
      redirect_to("/delivery_trackers/#{the_delivery_tracker.id}", { :notice => "Delivery tracker updated successfully."} )
    else
      redirect_to("/delivery_trackers/#{the_delivery_tracker.id}", { :alert => the_delivery_tracker.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_delivery_tracker = DeliveryTracker.where({ :id => the_id }).at(0)

    the_delivery_tracker.destroy

    redirect_to("/delivery_trackers", { :notice => "Delivery tracker deleted successfully."} )
  end
end
