.class Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cover:Landroid/widget/ImageView;

.field indicator:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/codemao/nemo/adapter/FolderAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/FolderAdapter;Landroid/view/View;)V
    .registers 3

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->this$0:Lcom/codemao/nemo/adapter/FolderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a019a

    .line 146
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    const p1, 0x7f0a055e

    .line 147
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const p1, 0x7f0a0728

    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const p1, 0x7f0a0322

    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->indicator:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bindData(Lcom/codemao/nemo/bean/Folder;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/codemao/nemo/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p1, Lcom/codemao/nemo/bean/Folder;->images:Ljava/util/List;

    const v1, 0x7f1201c0

    if-eqz v0, :cond_3c

    .line 159
    iget-object v2, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->this$0:Lcom/codemao/nemo/adapter/FolderAdapter;

    invoke-static {v4}, Lcom/codemao/nemo/adapter/FolderAdapter;->access$000(Lcom/codemao/nemo/adapter/FolderAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "%d%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60

    .line 161
    :cond_3c
    iget-object v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->size:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->this$0:Lcom/codemao/nemo/adapter/FolderAdapter;

    invoke-static {v3}, Lcom/codemao/nemo/adapter/FolderAdapter;->access$000(Lcom/codemao/nemo/adapter/FolderAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_60
    iget-object v0, p1, Lcom/codemao/nemo/bean/Folder;->cover:Lcom/codemao/nemo/bean/Image;

    const v1, 0x7f0805ab

    if-eqz v0, :cond_a1

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->this$0:Lcom/codemao/nemo/adapter/FolderAdapter;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/FolderAdapter;->access$000(Lcom/codemao/nemo/adapter/FolderAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object p1, p1, Lcom/codemao/nemo/bean/Folder;->cover:Lcom/codemao/nemo/bean/Image;

    iget-object p1, p1, Lcom/codemao/nemo/bean/Image;->path:Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->this$0:Lcom/codemao/nemo/adapter/FolderAdapter;

    iget v1, v1, Lcom/codemao/nemo/adapter/FolderAdapter;->mImageSize:I

    .line 173
    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 174
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    .line 172
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    .line 175
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_a6

    .line 177
    :cond_a1
    iget-object p1, p0, Lcom/codemao/nemo/adapter/FolderAdapter$ViewHolder;->cover:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_a6
    return-void
.end method
