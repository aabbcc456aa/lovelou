class AlbumsController < ApplicationController
  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.where("permiss != '#{Common::NO_PERMISS}'")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end

  
  #  #预览模式
  #  def per_album_show
  #    @album = Album.find(params[:id])
  #    @album.hit
  #    @photos = @album.photos.page(params[:page]).per(APP_CONFIG[:per_page])
  #
  #    respond_to do |format|
  #      format.html # show.html.erb
  #      format.json { render json: @album }
  #    end
  #  end
  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.find(params[:id])
    @album.hit
    @photos = @album.photos.page(params[:page]).per(APP_CONFIG[:per_page])
    @old_replies = Reply.find_all_by_reply_type_and_subject_id(Common::ALBUM_REPLY,params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = Album.new(params[:album])
    
    respond_to do |format|
      format.html {}
      format.js {
        if request.post?
          @save_result = nil
          if @album.save
            @save_result = true
          else
            @save_result = false
          end
        end
      }
    end
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(params[:album])

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render json: @album, status: :created, location: @album }
      else
        format.html { render action: "new" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json
  def update
    @album = Album.find(params[:id])

    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to albums_url }
      format.json { head :ok }
    end
  end
  
  def reply
    @album = Album.find(params[:id])
    @album.hit
    @photos = @album.photos#.page(params[:page]).per(APP_CONFIG[:per_page])
    puts "========#{@photos.size}"
    @first_photo = @photos.first
    @old_replies = @first_photo.try(:replies)
  end
  
  def select_photo
    @old_replies = Reply.find_all_by_reply_type_and_subject_id(Common::PHOTO_REPLY,params[:id])
    puts @old_replies.size
    respond_to do |format|
      format.js{ }
    end
  end


  def commit_reply
    @commit_type = params[:commit_type]
    @reply = Reply.new
    @reply.reply_content = params[:content]
    @reply.subject_id = params[:id]
    if @commitz_type == 'photo'
      @reply.reply_type = Common::PHOTO_REPLY
    else
      @reply.reply_type = Common::ALBUM_REPLY
    end
    @reply.reply_user_id = current_user.try(:id)
    @reply.save
    #根据类型加载评论
    if @commitz_type == 'photo'
      @old_replies = Reply.find_all_by_reply_type_and_subject_id(Common::PHOTO_REPLY,params[:id])
    else
      @old_replies = Reply.find_all_by_reply_type_and_subject_id(Common::ALBUM_REPLY,params[:id])
    end
    respond_to do |format|
      format.html # new.html.erb
      format.js { }
    end
  end
  
  def validate
    @album = Album.find(params[:id])
    @id = params[:id]
    @show_type = params[:show_type]
    puts "@type=====#{@show_type}"
    respond_to do |format|
      format.js{
        if request.post?
          @save_result = nil
          if @album.permiss == Common::QUESTION_PERMISS && @album.answer == params[:answer]
            @save_result = true
          elsif @album.permiss == Common::PASS_PERMISS && @album.password == params[:password]
            @save_result = true
          else
            @save_result = false
          end
        end
      }
    end
  end
end
