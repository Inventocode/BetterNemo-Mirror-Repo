.class Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;
.super Ljava/lang/Object;
.source "FolderAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/FolderAdapterV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cover:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/FolderAdapterV2;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/FolderAdapterV2;Landroid/view/View;)V
    .registers 3

    .line 118
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/FolderAdapterV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget p1, Lcom/codemao/creativecenter/R$id;->cover:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 120
    sget p1, Lcom/codemao/creativecenter/R$id;->name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->name:Landroid/widget/TextView;

    .line 121
    sget p1, Lcom/codemao/creativecenter/R$id;->size:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->size:Landroid/widget/TextView;

    .line 122
    sget p1, Lcom/codemao/creativecenter/R$id;->indicator:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 123
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bindData(Lcom/codemao/creativestore/bean/Folder;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/codemao/creativestore/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p1, Lcom/codemao/creativestore/bean/Folder;->images:Ljava/util/List;

    if-eqz v0, :cond_3b

    .line 132
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/FolderAdapterV2;

    invoke-static {v3}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->access$000(Lcom/codemao/creativecenter/adpater/FolderAdapterV2;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_mis_photo_unit:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "%d%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61

    .line 134
    :cond_3b
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/FolderAdapterV2;

    invoke-static {v2}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->access$000(Lcom/codemao/creativecenter/adpater/FolderAdapterV2;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_mis_photo_unit:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :goto_61
    iget-object v0, p1, Lcom/codemao/creativestore/bean/Folder;->cover:Lcom/codemao/creativestore/bean/Image;

    if-eqz v0, :cond_97

    .line 137
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->this$0:Lcom/codemao/creativecenter/adpater/FolderAdapterV2;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/FolderAdapterV2;->access$000(Lcom/codemao/creativecenter/adpater/FolderAdapterV2;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Lcom/codemao/creativestore/bean/Folder;->cover:Lcom/codemao/creativestore/bean/Image;

    iget-object p1, p1, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_mis_default_error:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 139
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_9e

    .line 142
    :cond_97
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/FolderAdapterV2$ViewHolder;->cover:Landroid/widget/ImageView;

    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_mis_default_error:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_9e
    return-void
.end method
