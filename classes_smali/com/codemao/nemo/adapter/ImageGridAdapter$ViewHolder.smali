.class Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ImageGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/adapter/ImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field indicator:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/codemao/nemo/adapter/ImageGridAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/ImageGridAdapter;Landroid/view/View;)V
    .registers 3

    .line 207
    iput-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->this$0:Lcom/codemao/nemo/adapter/ImageGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0302

    .line 208
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    const p1, 0x7f0a0121

    .line 209
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    .line 210
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bindData(Lcom/codemao/nemo/bean/Image;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->this$0:Lcom/codemao/nemo/adapter/ImageGridAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->access$000(Lcom/codemao/nemo/adapter/ImageGridAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 219
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const v1, 0x7f0805aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_25

    .line 224
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :goto_25
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/codemao/nemo/bean/Image;->path:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const v1, 0x7f0805ab

    if-eqz p1, :cond_66

    .line 237
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->this$0:Lcom/codemao/nemo/adapter/ImageGridAdapter;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/ImageGridAdapter;->access$100(Lcom/codemao/nemo/adapter/ImageGridAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 238
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->this$0:Lcom/codemao/nemo/adapter/ImageGridAdapter;

    iget v1, v1, Lcom/codemao/nemo/adapter/ImageGridAdapter;->mGridWidth:I

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 239
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_6b

    .line 241
    :cond_66
    iget-object p1, p0, Lcom/codemao/nemo/adapter/ImageGridAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6b
    return-void
.end method
