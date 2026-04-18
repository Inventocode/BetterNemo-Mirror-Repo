.class public final Lcom/codemao/toolssdk/activity/PlayerActivity$onCreate$1;
.super Ljava/lang/Object;
.source "PlayerActivity.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/CMToolSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/PlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/activity/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/PlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity$onCreate$1;->this$0:Lcom/codemao/toolssdk/activity/PlayerActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const-string p2, "toolsError"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 1

    return-void
.end method

.method public toolLoadDidStart()V
    .registers 1

    return-void
.end method

.method public toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 5

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PLAYER"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    const-string v2, "type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    :cond_1f
    move-object v0, v1

    :goto_20
    const-string v2, "HAS_VIRTUAL_KEY_BOARD"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 63
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object p1

    const-string v0, "hasVirtualKeyBoard"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_39

    check-cast p1, Ljava/lang/Boolean;

    goto :goto_3a

    :cond_39
    move-object p1, v1

    :goto_3a
    const/4 v0, 0x0

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    const-string v2, "binding"

    if-eqz p1, :cond_5a

    .line 65
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity$onCreate$1;->this$0:Lcom/codemao/toolssdk/activity/PlayerActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/PlayerActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/PlayerActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    move-result-object p1

    if-nez p1, :cond_53

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_54

    :cond_53
    move-object v1, p1

    :goto_54
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->enableVirtualBtn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6e

    .line 67
    :cond_5a
    iget-object p1, p0, Lcom/codemao/toolssdk/activity/PlayerActivity$onCreate$1;->this$0:Lcom/codemao/toolssdk/activity/PlayerActivity;

    invoke-static {p1}, Lcom/codemao/toolssdk/activity/PlayerActivity;->access$getBinding$p(Lcom/codemao/toolssdk/activity/PlayerActivity;)Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;

    move-result-object p1

    if-nez p1, :cond_66

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_67

    :cond_66
    move-object v1, p1

    :goto_67
    iget-object p1, v1, Lcom/codemao/toolssdk/databinding/ToolsdkActivityPlayerBinding;->enableVirtualBtn:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6e
    :goto_6e
    return-void
.end method
