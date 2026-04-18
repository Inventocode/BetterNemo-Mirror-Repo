.class final Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onPublishWork$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateBcmFragment2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onPublishWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/SaveResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onPublishWork$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 521
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onPublishWork$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;)V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onPublishWork$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->dismissSavingDialog()V

    .line 523
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2$onPublishWork$1;->this$0:Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/fragment/kn/CreateBcmFragment2;->onPublishSaved(Lcom/codemao/toolssdk/model/dsbridge/SaveResult;)V

    return-void
.end method
