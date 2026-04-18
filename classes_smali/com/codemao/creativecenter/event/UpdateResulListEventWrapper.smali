.class public Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;
.super Ljava/lang/Object;
.source "UpdateResulListEventWrapper.java"


# instance fields
.field public result:Lcom/codemao/creativecenter/event/UpdateResulListEvent;

.field public workUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/codemao/creativecenter/event/UpdateResulListEvent;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;->workUid:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/codemao/creativecenter/event/UpdateResulListEventWrapper;->result:Lcom/codemao/creativecenter/event/UpdateResulListEvent;

    return-void
.end method
