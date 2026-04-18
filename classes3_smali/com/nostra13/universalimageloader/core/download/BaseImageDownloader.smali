.class public Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;
.super Ljava/lang/Object;
.source "BaseImageDownloader.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0x1388

    const/16 v1, 0x4e20

    .line 74
    invoke-direct {p0, p1, v0, v1}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-void
.end method
