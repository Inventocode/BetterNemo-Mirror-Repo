.class public Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;
.super Ljava/lang/Object;
.source "CreativeGetImagePathResultEvent.java"


# instance fields
.field public result:Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;

.field public workUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->workUid:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/codemao/creativecenter/event/CreativeGetImagePathResultEvent;->result:Lcom/codemao/creativecenter/bean/CreativeGetImagePathResult;

    return-void
.end method
