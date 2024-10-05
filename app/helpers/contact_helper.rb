module ContactHelper
  def president_info
    president_role = Role.find_by(name: "president")
    president_role&.users&.first  # On retourne le premier utilisateur avec ce rôle
  end
end
