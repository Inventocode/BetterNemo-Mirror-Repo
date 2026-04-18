.class final Lcom/codemao/creativecenter/NewBcmFragment$showCleanCanshu$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->showCleanCanshu(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

.field final synthetic $createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showCleanCanshu$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/creativecenter/NewBcmFragment$showCleanCanshu$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 2134
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showCleanCanshu$1;->$completionHandler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    if-eqz p1, :cond_9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 2135
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$showCleanCanshu$1;->$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
