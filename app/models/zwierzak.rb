class Zwierzak < ActiveRecord::Base
    validates_presence_of :imie
    validates_presence_of :gatunek
    validates_presence_of :data_ur
end
