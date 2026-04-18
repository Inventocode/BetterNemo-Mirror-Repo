.class public interface abstract Lcom/lxj/xpopup/interfaces/XPopupImageLoader;
.super Ljava/lang/Object;
.source "XPopupImageLoader.java"


# virtual methods
.method public abstract getImageFile(Landroid/content/Context;Ljava/lang/Object;)Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "uri"
        }
    .end annotation
.end method

.method public abstract loadImage(ILjava/lang/Object;Lcom/lxj/xpopup/core/ImageViewerPopupView;Lcom/lxj/xpopup/photoview/PhotoView;Landroid/widget/ProgressBar;)Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "uri",
            "popupView",
            "snapshot",
            "progressBar"
        }
    .end annotation
.end method

.method public abstract loadSnapshot(Ljava/lang/Object;Lcom/lxj/xpopup/photoview/PhotoView;Landroid/widget/ImageView;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "snapshot",
            "srcView"
        }
    .end annotation
.end method
