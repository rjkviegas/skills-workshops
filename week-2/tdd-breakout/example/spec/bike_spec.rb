require_relative '../lib/bike'
require_relative './assert'

bike = Bike.new

p 'it is working at initialization'
Assert.isTrue(bike.working)
