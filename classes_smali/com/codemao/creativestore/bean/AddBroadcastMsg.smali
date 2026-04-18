.class public Lcom/codemao/creativestore/bean/AddBroadcastMsg;
.super Lcom/codemao/creativestore/bean/BaseJsonBean;
.source "AddBroadcastMsg.java"


# instance fields
.field private names:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/creativestore/bean/BaseJsonBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getNames()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/codemao/creativestore/bean/AddBroadcastMsg;->names:Ljava/util/HashSet;

    return-object v0
.end method

.method public setNames(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/codemao/creativestore/bean/AddBroadcastMsg;->names:Ljava/util/HashSet;

    return-void
.end method
