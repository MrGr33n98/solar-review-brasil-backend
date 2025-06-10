# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Resumo" do
          para "Empresas: #{Company.count}"
          para "Avaliações: #{Review.count}"
          para "Funções de Página: #{PageFunction.count}"
        end
      end
      column do
        panel "Acesso Rápido" do
          ul do
            li { link_to "Empresas", admin_companies_path }
            li { link_to "Avaliações", admin_reviews_path }
            li { link_to "Funções de Página", admin_page_functions_path }
          end
        end
      end
    end
  end
end
