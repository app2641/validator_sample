class MatzNameValidator < ActiveModel::Validator
  def validate(record)
    if matz_name?(record)
      record.errors.add(:base, "Don't use Matz's name!")
    end
  end

  private

  def matz_name?(record)
    record.first_name == 'Yukihiro' && record.last_name == 'Matsumoto'
  end
end
