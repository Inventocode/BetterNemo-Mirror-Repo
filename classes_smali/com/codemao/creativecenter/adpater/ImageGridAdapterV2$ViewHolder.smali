.class Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;
.super Ljava/lang/Object;
.source "ImageGridAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field flMark:Landroid/widget/FrameLayout;

.field image:Landroid/widget/ImageView;

.field indicator:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

.field viewCover:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;Landroid/view/View;)V
    .registers 3

    .line 259
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    sget p1, Lcom/codemao/creativecenter/R$id;->image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->image:Landroid/widget/ImageView;

    .line 261
    sget p1, Lcom/codemao/creativecenter/R$id;->checkmark:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    .line 262
    sget p1, Lcom/codemao/creativecenter/R$id;->v_cover:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->viewCover:Landroid/view/View;

    .line 263
    sget p1, Lcom/codemao/creativecenter/R$id;->fl_mark:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->flMark:Landroid/widget/FrameLayout;

    .line 264
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bindData(Lcom/codemao/creativestore/bean/Image;I)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->flMark:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$1;-><init>(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;Lcom/codemao/creativestore/bean/Image;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->image:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$2;-><init>(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;Lcom/codemao/creativestore/bean/Image;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->viewCover:Landroid/view/View;

    new-instance v0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$3;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder$3;-><init>(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$100(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    const-string v2, ""

    if-nez p2, :cond_5b

    .line 308
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$200(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Ljava/util/List;

    move-result-object p2

    iget-object v3, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 310
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_bg_image_picked_single:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 311
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$300(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;Landroid/view/View;)V

    goto :goto_c1

    .line 316
    :cond_55
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c1

    .line 320
    :cond_5b
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$200(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Ljava/util/List;

    move-result-object p2

    iget-object v3, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_98

    .line 322
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$200(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 323
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    sget v3, Lcom/codemao/creativecenter/R$drawable;->creative_bg_image_picked:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 324
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->viewCover:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c1

    .line 328
    :cond_98
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    sget v3, Lcom/codemao/creativecenter/R$drawable;->creative_bg_image_unpick:I

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 329
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->indicator:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$200(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$400(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)I

    move-result v2

    if-lt p2, v2, :cond_bc

    .line 331
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->viewCover:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c1

    .line 333
    :cond_bc
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->viewCover:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :goto_c1
    new-instance p2, Ljava/io/File;

    iget-object p1, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_105

    .line 341
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->access$500(Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 343
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_mis_default_error:I

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;

    iget v0, v0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2;->mGridWidth:I

    invoke-virtual {p2, v0, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->image:Landroid/widget/ImageView;

    .line 344
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_10c

    .line 346
    :cond_105
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/ImageGridAdapterV2$ViewHolder;->image:Landroid/widget/ImageView;

    sget p2, Lcom/codemao/creativecenter/R$drawable;->creative_mis_default_error:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_10c
    return-void
.end method
