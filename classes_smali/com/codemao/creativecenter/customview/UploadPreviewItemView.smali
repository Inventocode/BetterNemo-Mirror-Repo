.class public Lcom/codemao/creativecenter/customview/UploadPreviewItemView;
.super Landroid/widget/FrameLayout;
.source "UploadPreviewItemView.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private itemWitdh:I

.field private selected:Z

.field private selector:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->selected:Z

    .line 30
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->selected:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->selected:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_upload_preview:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    sget p1, Lcom/codemao/creativecenter/R$id;->iv:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->imageView:Landroid/widget/ImageView;

    .line 52
    sget p1, Lcom/codemao/creativecenter/R$id;->selector:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->selector:Landroid/view/View;

    .line 53
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->selected:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    goto :goto_27

    :cond_25
    const/16 v0, 0x8

    :goto_27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->filePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_70

    .line 55
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->filePath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v4, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->itemWitdh:I

    .line 58
    invoke-virtual {v0, v4, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/bumptech/glide/load/Transformation;

    new-instance v5, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v5}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v5, v4, v2

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->imageView:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_70
    return-void
.end method


# virtual methods
.method public setImageFile(Ljava/lang/String;)V
    .registers 7

    .line 68
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->filePath:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4a

    .line 70
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 73
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    iget v1, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->itemWitdh:I

    .line 74
    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    const/4 v2, 0x0

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transforms([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->imageView:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_4a
    return-void
.end method

.method public setItemWitdh(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->itemWitdh:I

    return-void
.end method

.method public setSelectOrNot(Z)V
    .registers 3

    .line 82
    iput-boolean p1, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->selected:Z

    .line 83
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/UploadPreviewItemView;->selector:Landroid/view/View;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    .line 84
    :goto_c
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method
