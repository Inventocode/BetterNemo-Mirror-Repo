.class public final Lcom/codemao/nemo/adapter/CustomBannerAdapter;
.super Lcom/youth/banner/adapter/BannerAdapter;
.source "CustomBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/youth/banner/adapter/BannerAdapter<",
        "Ljava/lang/String;",
        "Lcom/codemao/nemo/adapter/RoundImageHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isLargePad:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p2}, Lcom/youth/banner/adapter/BannerAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->datas:Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->isLargePad:Z

    return-void
.end method


# virtual methods
.method public onBindView(Lcom/codemao/nemo/adapter/RoundImageHolder;Ljava/lang/String;II)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string p3, "holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p3, p0, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->ctx:Landroid/content/Context;

    instance-of p4, p3, Landroid/app/Activity;

    if-eqz p4, :cond_23

    .line 38
    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->isDestroyed()Z

    move-result p3

    if-nez p3, :cond_22

    iget-object p3, p0, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->ctx:Landroid/content/Context;

    check-cast p3, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-eqz p3, :cond_23

    :cond_22
    return-void

    .line 43
    :cond_23
    iget-object p3, p0, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->ctx:Landroid/content/Context;

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 44
    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 45
    new-instance p3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const p4, 0x7f0805ab

    .line 47
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    .line 45
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 48
    iget-object p1, p1, Lcom/codemao/nemo/adapter/RoundImageHolder;->imageView:Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public bridge synthetic onBindView(Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 5

    .line 19
    check-cast p1, Lcom/codemao/nemo/adapter/RoundImageHolder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->onBindView(Lcom/codemao/nemo/adapter/RoundImageHolder;Ljava/lang/String;II)V

    return-void
.end method

.method public onCreateHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/RoundImageHolder;
    .registers 5

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-boolean p2, p0, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->isLargePad:Z

    if-eqz p2, :cond_1a

    .line 25
    iget-object p2, p0, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->datas:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_16

    const p2, 0x7f0d01a1

    goto :goto_1d

    :cond_16
    const p2, 0x7f0d01a0

    goto :goto_1d

    :cond_1a
    const p2, 0x7f0d019f

    .line 31
    :goto_1d
    iget-object v0, p0, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/codemao/nemo/adapter/RoundImageHolder;

    invoke-direct {p2, p1}, Lcom/codemao/nemo/adapter/RoundImageHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 3

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/adapter/CustomBannerAdapter;->onCreateHolder(Landroid/view/ViewGroup;I)Lcom/codemao/nemo/adapter/RoundImageHolder;

    move-result-object p1

    return-object p1
.end method
