def do_delivery
  begin
    if perform_deliveries
      delivery_method.deliver!(self)
    end
  # Net::SMTP errors or sendmail pipe errors
  rescue Exception => e
    raise e if raise_delivery_errors
  end
end
