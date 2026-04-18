.class public Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;
.super Ljava/lang/Object;
.source "GetRuntimeVaribleMsgEvent.java"


# instance fields
.field public result:Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

.field public workUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;->workUid:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;->result:Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    return-void
.end method
