.class Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/download/ImageDownloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlowNetworkImageDownloader"
.end annotation


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)V
    .registers 2

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
