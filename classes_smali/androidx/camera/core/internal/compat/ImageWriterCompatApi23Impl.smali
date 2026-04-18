.class final Landroidx/camera/core/internal/compat/ImageWriterCompatApi23Impl;
.super Ljava/lang/Object;
.source "ImageWriterCompatApi23Impl.java"


# direct methods
.method static newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .registers 2

    .line 32
    invoke-static {p0, p1}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p0

    return-object p0
.end method

.method static queueInputImage(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .registers 2

    .line 41
    invoke-virtual {p0, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    return-void
.end method
