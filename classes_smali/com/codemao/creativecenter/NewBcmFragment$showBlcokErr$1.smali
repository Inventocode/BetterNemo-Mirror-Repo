.class final Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$1;
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
.field final synthetic $completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field final synthetic $createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    iput-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iput-object p3, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 2179
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 2180
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz p1, :cond_e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 2181
    :cond_e
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showBlcokErr$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->runOrStop()V

    return-void
.end method
