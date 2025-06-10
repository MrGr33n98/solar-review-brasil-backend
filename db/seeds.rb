# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

# Empresas de exemplo
company1 = Company.create!(name: 'SolarTech', description: 'Empresa líder em energia solar.', logo_url: 'https://via.placeholder.com/100', website_url: 'https://solartech.com', contact_email: 'contato@solartech.com', phone_number: '11999999999', address: 'Rua Solar, 123', average_rating: 4.5, total_reviews: 2, is_verified: true)
company2 = Company.create!(name: 'EcoSun', description: 'Soluções sustentáveis para todos.', logo_url: 'https://via.placeholder.com/100', website_url: 'https://ecosun.com', contact_email: 'contato@ecosun.com', phone_number: '11888888888', address: 'Av. Verde, 456', average_rating: 4.0, total_reviews: 1, is_verified: false)

# Avaliações de exemplo
Review.create!(company: company1, user_name: 'João', rating: 5, comment: 'Excelente atendimento!', review_date: Date.today - 5)
Review.create!(company: company1, user_name: 'Maria', rating: 4, comment: 'Muito bom, mas pode melhorar.', review_date: Date.today - 2)
Review.create!(company: company2, user_name: 'Carlos', rating: 4, comment: 'Gostei do serviço.', review_date: Date.today - 1)

# PageFunctions de exemplo
PageFunction.create!(name: 'Título da Seção Hero', key: 'hero_title', content: 'Bem-vindo ao Solar Review Brasil!', content_type: 'text', is_active: true)
PageFunction.create!(name: 'Subtítulo da Seção Hero', key: 'hero_subtitle', content: 'Encontre as melhores empresas de energia solar.', content_type: 'text', is_active: true)
PageFunction.create!(name: 'Banners do Carrossel', key: 'banner_images_json', content: '[{"url": "https://via.placeholder.com/600x200", "alt": "Banner 1", "link": "#"}, {"url": "https://via.placeholder.com/600x200?2", "alt": "Banner 2", "link": "#"}]', content_type: 'json', is_active: true)