.class Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;
.super Ljava/lang/Object;
.source "BaseKNWorkPlayActivity.java"

# interfaces
.implements Lcom/codemao/toolssdk/view/CMToolSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

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

    .line 236
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFail:Z

    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-boolean v1, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFinish:Z

    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 223
    iget-object v0, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->startWork(Z)V

    .line 225
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iput-boolean v2, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isLoadFinish:Z

    .line 226
    iget-object v0, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->setPlayer(ZZ)V

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->access$000(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    .line 228
    sget-object v0, Lcom/codemao/nemo/biz/account/ToolSDKAccount;->INSTANCE:Lcom/codemao/nemo/biz/account/ToolSDKAccount;

    iget-object v2, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object v3, v2, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    invoke-virtual {v0, v2, v3}, Lcom/codemao/nemo/biz/account/ToolSDKAccount;->setAccountListener(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V

    .line 229
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object v0, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->ivWorkCover:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object v0, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/WoodWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object v0, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->loadingBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public toolLoadDidStart()V
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object v0, v0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;->setPlayer(ZZ)V

    return-void
.end method

.method public toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 4

    .line 241
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PLAYER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 242
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_46

    const-string v0, "type"

    .line 243
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "HAS_VIRTUAL_KEY_BOARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "hasVirtualKeyBoard"

    .line 244
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 245
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_46

    .line 246
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 248
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hasVKeyboard:Z

    .line 249
    iput-boolean v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z

    goto :goto_41

    .line 251
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hasVKeyboard:Z

    .line 252
    iput-boolean v0, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->isVkeyBoardShow:Z

    .line 254
    :goto_41
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$1;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-static {p1}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->access$000(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V

    :cond_46
    return-void
.end method
