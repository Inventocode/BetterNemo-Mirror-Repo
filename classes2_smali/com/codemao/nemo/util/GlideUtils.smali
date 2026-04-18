.class public Lcom/codemao/nemo/util/GlideUtils;
.super Ljava/lang/Object;
.source "GlideUtils.java"


# direct methods
.method public static getDownsample()Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;
    .registers 1

    .line 41
    sget-object v0, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v0}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    return-object v0

    .line 44
    :cond_b
    new-instance v0, Lcom/codemao/nemo/util/LocalDownsampleStrategy;

    invoke-direct {v0}, Lcom/codemao/nemo/util/LocalDownsampleStrategy;-><init>()V

    return-object v0
.end method

.method private static isDestroyed(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 189
    :cond_4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_11

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static load(ILandroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0803dc

    const v1, 0x7f0803d7

    .line 77
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(ILandroid/widget/ImageView;II)V

    return-void
.end method

.method public static load(ILandroid/widget/ImageView;II)V
    .registers 6

    .line 106
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/GlideUtils;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 109
    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 111
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {}, Lcom/codemao/nemo/util/GlideUtils;->getDownsample()Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static load(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0803dc

    const v1, 0x7f0803d7

    .line 33
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static load(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .registers 5

    const/4 v0, 0x0

    .line 90
    invoke-static {p0, p1, p2, p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    return-void
.end method

.method public static load(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V
    .registers 6

    .line 94
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/GlideUtils;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 97
    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 99
    invoke-virtual {p0, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    if-eqz p4, :cond_22

    .line 100
    sget-object p4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    goto :goto_24

    :cond_22
    sget-object p4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    :goto_24
    invoke-virtual {p0, p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    new-instance p4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p4}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 101
    invoke-virtual {p4}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p4

    check-cast p4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {}, Lcom/codemao/nemo/util/GlideUtils;->getDownsample()Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p4

    check-cast p4, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p4, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 102
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static load(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .registers 5

    const v0, 0x7f0803dc

    const v1, 0x7f0803d7

    .line 37
    invoke-static {p0, p1, v0, v1, p2}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    return-void
.end method

.method public static loadBcm(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f080407

    const v1, 0x7f0803d7

    .line 81
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static loadBcmBlur(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    .line 193
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/GlideUtils;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 196
    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v0, Ljp/wasabeef/glide/transformations/BlurTransformation;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljp/wasabeef/glide/transformations/BlurTransformation;-><init>(I)V

    .line 198
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 199
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadByCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0803dc

    const v1, 0x7f0803d7

    .line 86
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWithErrorHolder(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static loadEventImage(Ljava/io/File;Landroid/widget/ImageView;)V
    .registers 4

    .line 166
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/GlideUtils;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 169
    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 170
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 171
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {}, Lcom/codemao/nemo/util/GlideUtils;->getDownsample()Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x7f0803d5

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 172
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadGif(ILandroid/widget/ImageView;)V
    .registers 3

    .line 126
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/GlideUtils;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 129
    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/codemao/nemo/util/GlideUtils$1;

    invoke-direct {v0}, Lcom/codemao/nemo/util/GlideUtils$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 140
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    .line 176
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/GlideUtils;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 179
    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 181
    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {}, Lcom/codemao/nemo/util/GlideUtils;->getDownsample()Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 182
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadShare(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x7f0e0095

    .line 72
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    .line 145
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/GlideUtils;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 148
    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v1, 0x7f0e0062

    .line 150
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    const v1, 0x7f0e0061

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 151
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadWithErrorHolder(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .registers 5

    .line 116
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/GlideUtils;->isDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 119
    :cond_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 121
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontTransform()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-static {}, Lcom/codemao/nemo/util/GlideUtils;->getDownsample()Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->downsample(Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    .line 122
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0803dc

    const v1, 0x7f0e0095

    .line 50
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWithErrorHolder(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static loadWorkCoverE(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0803dc

    const v1, 0x7f0803d7

    .line 62
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWithErrorHolder(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static loadWorkCoverNewBee(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0803db

    const v1, 0x7f0e0095

    .line 67
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWithErrorHolder(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static loadWorkCrouseBanner(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0803dd

    const v1, 0x7f0803d8

    .line 54
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWithErrorHolder(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method

.method public static loadWorkCrouseItem(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    const v0, 0x7f0803de

    const v1, 0x7f0803d9

    .line 58
    invoke-static {p0, p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWithErrorHolder(Ljava/lang/String;Landroid/widget/ImageView;II)V

    return-void
.end method
