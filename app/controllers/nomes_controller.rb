class NomesController < ApplicationController
  # GET /nomes
  # GET /nomes.xml
  def index
    @nomes = Nome.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nomes }
    end
  end

  # GET /nomes/1
  # GET /nomes/1.xml
  def show
    @nome = Nome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nome }
    end
  end

  # GET /nomes/new
  # GET /nomes/new.xml
  def new
    @nome = Nome.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nome }
    end
  end

  # GET /nomes/1/edit
  def edit
    @nome = Nome.find(params[:id])
  end

  # POST /nomes
  # POST /nomes.xml
  def create
    @nome = Nome.new(params[:nome])

    respond_to do |format|
      if @nome.save
        format.html { redirect_to(@nome, :notice => 'Nome was successfully created.') }
        format.xml  { render :xml => @nome, :status => :created, :location => @nome }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nome.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nomes/1
  # PUT /nomes/1.xml
  def update
    @nome = Nome.find(params[:id])

    respond_to do |format|
      if @nome.update_attributes(params[:nome])
        format.html { redirect_to(@nome, :notice => 'Nome was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nome.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nomes/1
  # DELETE /nomes/1.xml
  def destroy
    @nome = Nome.find(params[:id])
    @nome.destroy

    respond_to do |format|
      format.html { redirect_to(nomes_url) }
      format.xml  { head :ok }
    end
  end
end
