.class public final Lcom/codemao/nemo/util/GlideUtilsKt;
.super Ljava/lang/Object;
.source "GlideUtilsKt.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/util/GlideUtilsKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/util/GlideUtilsKt;

    invoke-direct {v0}, Lcom/codemao/nemo/util/GlideUtilsKt;-><init>()V

    sput-object v0, Lcom/codemao/nemo/util/GlideUtilsKt;->INSTANCE:Lcom/codemao/nemo/util/GlideUtilsKt;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isDestroyed(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p1, :cond_4

    goto :goto_12

    .line 73
    :cond_4
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static synthetic loadUrl$default(Lcom/codemao/nemo/util/GlideUtilsKt;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZIIILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_7

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_8

    :cond_7
    move v4, p4

    :goto_8
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_13

    const p5, 0x7f0803dc

    const v5, 0x7f0803dc

    goto :goto_14

    :cond_13
    move v5, p5

    :goto_14
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_1f

    const p6, 0x7f0e0095

    const v6, 0x7f0e0095

    goto :goto_20

    :cond_1f
    move v6, p6

    :goto_20
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 21
    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/util/GlideUtilsKt;->loadUrl(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZII)V

    return-void
.end method

.method public static synthetic loadUrlOrGif$default(Lcom/codemao/nemo/util/GlideUtilsKt;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZIIILjava/lang/Object;)V
    .registers 16

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_7

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_8

    :cond_7
    move v4, p4

    :goto_8
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_13

    const p5, 0x7f0803dc

    const v5, 0x7f0803dc

    goto :goto_14

    :cond_13
    move v5, p5

    :goto_14
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_1f

    const p6, 0x7f0e0095

    const v6, 0x7f0e0095

    goto :goto_20

    :cond_1f
    move v6, p6

    :goto_20
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 47
    invoke-virtual/range {v0 .. v6}, Lcom/codemao/nemo/util/GlideUtilsKt;->loadUrlOrGif(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZII)V

    return-void
.end method


# virtual methods
.method public final loadUrl(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v9}, Lcom/codemao/nemo/util/GlideUtilsKt;->loadUrl$default(Lcom/codemao/nemo/util/GlideUtilsKt;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public final loadUrl(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZII)V
    .registers 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/GlideUtilsKt;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 32
    :cond_10
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p5}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p5, p6}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p5}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    .line 33
    invoke-static {}, Lcom/codemao/nemo/util/GlideUtils;->getDownsample()Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    const-string p6, "RequestOptions().placeho…ideUtils.getDownsample())"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    if-eqz p3, :cond_4a

    .line 34
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p6

    if-lez p6, :cond_4a

    .line 35
    new-instance p6, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p6, p3}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-virtual {p5, p6}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 37
    :cond_4a
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    .line 38
    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 39
    invoke-virtual {p2, p5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    const-string p3, "with(view.context).asBit…          .apply(options)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_79

    .line 41
    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    new-instance p4, Ljp/wasabeef/glide/transformations/BlurTransformation;

    const/16 p5, 0x46

    invoke-direct {p4, p5}, Ljp/wasabeef/glide/transformations/BlurTransformation;-><init>(I)V

    invoke-static {p4}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 43
    :cond_79
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public final loadUrlOrGif(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v9}, Lcom/codemao/nemo/util/GlideUtilsKt;->loadUrlOrGif$default(Lcom/codemao/nemo/util/GlideUtilsKt;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public final loadUrlOrGif(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZII)V
    .registers 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/util/GlideUtilsKt;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 58
    :cond_10
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p5}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p5, p6}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p5}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    .line 59
    invoke-static {}, Lcom/codemao/nemo/util/GlideUtils;->getDownsample()Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    move-result-object p6

    invoke-virtual {p5, p6}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p5

    const-string p6, "RequestOptions().placeho…ideUtils.getDownsample())"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/bumptech/glide/request/RequestOptions;

    if-eqz p3, :cond_4a

    .line 60
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p6

    if-lez p6, :cond_4a

    .line 61
    new-instance p6, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p6, p3}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-virtual {p5, p6}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 63
    :cond_4a
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    const-string p3, "with(view.context).load(url).apply(options)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_75

    .line 65
    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/RequestBuilder;

    new-instance p4, Ljp/wasabeef/glide/transformations/BlurTransformation;

    const/16 p5, 0x46

    invoke-direct {p4, p5}, Ljp/wasabeef/glide/transformations/BlurTransformation;-><init>(I)V

    invoke-static {p4}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    .line 67
    :cond_75
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
