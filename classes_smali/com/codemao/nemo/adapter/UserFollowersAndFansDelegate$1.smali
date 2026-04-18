.class Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$1;
.super Ljava/lang/Object;
.source "UserFollowersAndFansDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;I)V
    .registers 4

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput p3, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;->access$000(Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;)Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$UserCallBack;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 75
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$1;->this$0:Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;->access$000(Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;)Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$UserCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a043c

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$1;->val$position:I

    invoke-interface {p1, v0, v1}, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$UserCallBack;->toUserDetail(Landroid/widget/ImageView;I)V

    :cond_1c
    return-void
.end method
