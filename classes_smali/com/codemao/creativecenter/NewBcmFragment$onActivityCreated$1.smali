.class final Lcom/codemao/creativecenter/NewBcmFragment$onActivityCreated$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/utils/CreativeHandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewBcmFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewBcmFragment.kt\ncom/codemao/creativecenter/NewBcmFragment$onActivityCreated$1\n*L\n1#1,3510:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$onActivityCreated$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    goto :goto_53

    .line 230
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1e

    check-cast p1, Lcom/codemao/creativestore/bean/TiltMsg;

    .line 231
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$onActivityCreated$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->onTiltRecive(Lcom/codemao/creativestore/bean/TiltMsg;)V

    goto :goto_53

    .line 230
    :cond_1e
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.codemao.creativestore.bean.TiltMsg"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_26
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$onActivityCreated$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->phoneShake()V

    goto :goto_53

    .line 222
    :cond_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_53

    .line 224
    check-cast p1, Ljava/util/Map;

    const-string v0, "decibel"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_53

    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$onActivityCreated$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    if-eqz v0, :cond_53

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->soundRecieve(D)V

    :cond_53
    :goto_53
    return-void
.end method
