.class public Lcom/codemao/nemo/common/ImageViewAdapter;
.super Ljava/lang/Object;
.source "ImageViewAdapter.java"


# direct methods
.method public static loadImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 5

    .line 14
    sget-object v0, Lcom/codemao/nemo/util/GlideUtilsKt;->INSTANCE:Lcom/codemao/nemo/util/GlideUtilsKt;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/codemao/nemo/util/GlideUtilsKt;->loadUrl(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static loadImageGigRes(Landroid/widget/ImageView;IZ)V
    .registers 3

    if-eqz p2, :cond_6

    .line 30
    invoke-static {p1, p0}, Lcom/codemao/nemo/util/GlideUtils;->loadGif(ILandroid/widget/ImageView;)V

    goto :goto_9

    .line 32
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_9
    return-void
.end method

.method public static loadImageOrGif(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .registers 5

    .line 19
    sget-object v0, Lcom/codemao/nemo/util/GlideUtilsKt;->INSTANCE:Lcom/codemao/nemo/util/GlideUtilsKt;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/codemao/nemo/util/GlideUtilsKt;->loadUrlOrGif(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static loadImageRes(Landroid/widget/ImageView;I)V
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
