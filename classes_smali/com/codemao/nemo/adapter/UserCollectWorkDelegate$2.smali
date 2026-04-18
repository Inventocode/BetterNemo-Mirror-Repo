.class Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$2;
.super Ljava/lang/Object;
.source "UserCollectWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 114
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/ViewHolderEV;

    const-class v1, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/event/ViewHolderEV;-><init>(Ljava/lang/String;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$2;->this$0:Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;

    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/adapter/UserCollectWorkDelegate;->removeCloseAnim(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    return-void
.end method
