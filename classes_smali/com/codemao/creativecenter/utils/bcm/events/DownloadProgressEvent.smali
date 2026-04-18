.class public Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;
.super Ljava/lang/Object;
.source "DownloadProgressEvent.java"


# instance fields
.field public downloadCount:I

.field public downloadSuccessCount:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadCount:I

    .line 14
    iput p2, p0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadSuccessCount:I

    return-void
.end method
