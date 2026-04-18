.class Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$2;
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

.field final synthetic val$data:Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;Lcom/codemao/nemo/bean/UserFanAndFollowInfo;I)V
    .registers 4

    .line 94
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$2;->this$0:Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$2;->val$data:Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    iput p3, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$2;->this$0:Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;->access$000(Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate;)Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$UserCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$2;->val$data:Lcom/codemao/nemo/bean/UserFanAndFollowInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/UserFanAndFollowInfo;->getId()J

    move-result-wide v0

    iget v2, p0, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$2;->val$position:I

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/adapter/UserFollowersAndFansDelegate$UserCallBack;->followUser(JI)V

    return-void
.end method
