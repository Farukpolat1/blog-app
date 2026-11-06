class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show ]
  # Düzenleme ve silme işlemleri için kullanıcının kendi makalesini bulmasını zorunlu kılıyoruz
  before_action :set_user_article, only: %i[ edit update destroy ]
  before_action :authenticate_user!, only: %i[ new create edit update destroy ]

  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  # Hata veren eksik edit aksiyonunu buraya ekledik!
  def edit
  end

  # POST /articles
  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      redirect_to @article, notice: "Makale başarıyla oluşturuldu."
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to @article, notice: "Makale başarıyla güncellendi."
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy!
    redirect_to articles_path, notice: "Makale başarıyla silindi.", status: :see_other
  end

  private

  # Herkes makaleyi görebilir
  def set_article
    @article = Article.find(params.expect(:id))
  end

  # Sadece makalenin sahibi düzenleyebilir veya silebilir
  def set_user_article
    @article = current_user.articles.find_by(id: params[:id])

    if @article.nil?
      redirect_to articles_path, alert: "Bu makaleyi düzenleme yetkiniz yok!"
    end
  end

  # İzin verilen parametreler
  def article_params
    params.expect(article: [ :title, :body ])
  end
end
