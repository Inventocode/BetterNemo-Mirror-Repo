.class final Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CodeLabWebBizFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
        "Lkotlin/jvm/functions/Function2<",
        "-",
        "Ljava/lang/Boolean;",
        "-",
        "Ljava/lang/Boolean;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;


# direct methods
.method public static synthetic $r8$lambda$Hwc9F4fikVJh4wJPLSibm9fOoUQ(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1;->invoke$lambda$0(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->access$addCodeLabVideoFragment(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 16
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "接收到前端的通知:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    if-eqz p1, :cond_2a

    .line 19
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;

    new-instance v2, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$onViewCreated$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2a
    return-void
.end method
