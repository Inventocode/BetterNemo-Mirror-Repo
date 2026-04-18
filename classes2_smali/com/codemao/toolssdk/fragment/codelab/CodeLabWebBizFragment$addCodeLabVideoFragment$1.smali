.class final Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CodeLabWebBizFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->addCodeLabVideoFragment(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $listener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;


# direct methods
.method public static synthetic $r8$lambda$OZHOa9RGEWCr4814oV5i2WmZ3yk(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lkotlin/jvm/functions/Function2;ZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;->invoke$lambda$0(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lkotlin/jvm/functions/Function2;ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;->$listener:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lkotlin/jvm/functions/Function2;ZZ)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;->access$removeVideoFragment(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;)V

    if-eqz p1, :cond_15

    .line 45
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 41
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;->invoke(ZZ)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ZZ)V
    .registers 7

    .line 42
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "点击完成的回调"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCodeLab(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;->this$0:Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;

    iget-object v2, p0, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1;->$listener:Lkotlin/jvm/functions/Function2;

    new-instance v3, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2, p1, p2}, Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment$addCodeLabVideoFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/fragment/codelab/CodeLabWebBizFragment;Lkotlin/jvm/functions/Function2;ZZ)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1b
    return-void
.end method
