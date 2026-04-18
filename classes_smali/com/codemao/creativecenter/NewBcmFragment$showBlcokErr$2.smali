.class final Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->showBlcokErr(Lcom/codemao/creativestore/bean/BlockErrorMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $blockErrorMsg:Lcom/codemao/creativestore/bean/BlockErrorMsg;

.field final synthetic $completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field final synthetic $createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativestore/bean/BlockErrorMsg;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iput-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iput-object p3, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->$blockErrorMsg:Lcom/codemao/creativestore/bean/BlockErrorMsg;

    iput-object p4, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 2183
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2184
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->changeScreenOrientation()V

    .line 2186
    :cond_d
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 2187
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    if-nez p1, :cond_1d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1d
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->$blockErrorMsg:Lcom/codemao/creativestore/bean/BlockErrorMsg;

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectErrorActor(Lcom/codemao/creativestore/bean/BlockErrorMsg;)V

    .line 2188
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object p1

    if-nez p1, :cond_2d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/vm/SidebarVM;->changeStatus(I)V

    .line 2189
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getSideBarInterface()Lcom/codemao/creativecenter/view/SideBarInterface;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/view/SideBarInterface;->changeSWStatus(I)V

    .line 2190
    :cond_3c
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$2;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz p1, :cond_45

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method
