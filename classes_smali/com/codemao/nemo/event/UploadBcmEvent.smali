.class public Lcom/codemao/nemo/event/UploadBcmEvent;
.super Ljava/lang/Object;
.source "UploadBcmEvent.java"


# instance fields
.field public data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/codemao/nemo/event/UploadBcmEvent;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/event/UploadBcmEvent;->data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-void
.end method
