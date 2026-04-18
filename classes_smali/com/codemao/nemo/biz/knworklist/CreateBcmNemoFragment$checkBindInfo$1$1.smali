.class final Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$checkBindInfo$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateBcmNemoFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->checkBindInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$checkBindInfo$1$1;->this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 271
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$checkBindInfo$1$1;->invoke(Ljava/lang/Integer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_10

    .line 274
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 275
    iget-object p1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$checkBindInfo$1$1;->this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    invoke-static {p1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->access$goAnswerFriendlyProtocol(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;)V

    goto :goto_26

    :cond_10
    :goto_10
    if-nez p1, :cond_13

    goto :goto_20

    .line 278
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 279
    iget-object p1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$checkBindInfo$1$1;->this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;->getPublishState(I)V

    goto :goto_26

    :cond_20
    :goto_20
    if-nez p1, :cond_23

    goto :goto_26

    .line 282
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :goto_26
    return-void
.end method
