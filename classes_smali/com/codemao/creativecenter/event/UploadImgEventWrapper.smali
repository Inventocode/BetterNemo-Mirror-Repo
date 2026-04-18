.class public Lcom/codemao/creativecenter/event/UploadImgEventWrapper;
.super Ljava/lang/Object;
.source "UploadImgEventWrapper.java"


# instance fields
.field public result:Lcom/codemao/creativecenter/event/UploadImgEvent;

.field public workUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/codemao/creativecenter/event/UploadImgEvent;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/creativecenter/event/UploadImgEventWrapper;->workUid:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/codemao/creativecenter/event/UploadImgEventWrapper;->result:Lcom/codemao/creativecenter/event/UploadImgEvent;

    return-void
.end method
