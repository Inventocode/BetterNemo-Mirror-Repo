.class public final Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;
.super Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;
.source "CreativeWorkDetailKnInfo.kt"


# instance fields
.field private fork_scope:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFork_scope()Ljava/lang/Integer;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;->fork_scope:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setFork_scope(Ljava/lang/Integer;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/codemao/nemo/bean/CreativeWorkDetailKnInfo;->fork_scope:Ljava/lang/Integer;

    return-void
.end method
