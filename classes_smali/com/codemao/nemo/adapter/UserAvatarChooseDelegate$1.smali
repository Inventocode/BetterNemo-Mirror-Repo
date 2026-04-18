.class Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$1;
.super Ljava/lang/Object;
.source "UserAvatarChooseDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 3

    .line 49
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 53
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;->access$000(Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;)Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;->chooseAvatar(I)V

    return-void
.end method
