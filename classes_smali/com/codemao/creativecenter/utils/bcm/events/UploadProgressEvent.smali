.class public Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;
.super Ljava/lang/Object;
.source "UploadProgressEvent.java"


# instance fields
.field public uploadCount:I

.field public uploadSuccessCount:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;->uploadCount:I

    .line 13
    iput p2, p0, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;->uploadSuccessCount:I

    return-void
.end method
