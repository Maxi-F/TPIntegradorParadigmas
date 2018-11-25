require "Singleton"

class ArmadaInglesa
  include Singleton
  def bonus(barco)
    barco.recibirBonusDeArmadaInglesa!
  end
end

class UnionPirata
  include Singleton
  def bonus(barco)
    barco.recibirBonusDeUnionPirata!
  end
end

class ArmadaDelHolandesErrante
  include Singleton
  def bonus(barco)
    barco.recibirBonusDeArmadaDelHolandesErrante!
  end
end
