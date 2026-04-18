.class Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;
.super Ljava/lang/Object;
.source "UserDynamicUserOptionDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

.field final synthetic val$dynamicUserInfo:Lcom/codemao/nemo/bean/DynamicUserInfo;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/DynamicUserInfo;)V
    .registers 4

    .line 94
    iput-object p1, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;->this$0:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;->val$dynamicUserInfo:Lcom/codemao/nemo/bean/DynamicUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 98
    iget-object p1, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;->this$0:Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;->access$000(Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate;)Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v1, 0x7f0a043d

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;->val$dynamicUserInfo:Lcom/codemao/nemo/bean/DynamicUserInfo;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/DynamicUserInfo;->getUser_id()J

    move-result-wide v1

    iget-object v3, p0, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$2;->val$dynamicUserInfo:Lcom/codemao/nemo/bean/DynamicUserInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/DynamicUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/codemao/nemo/adapter/UserDynamicUserOptionDelegate$UserDynamicCallBack;->toUserDetail(Landroid/widget/ImageView;JLjava/lang/String;)V

    return-void
.end method
