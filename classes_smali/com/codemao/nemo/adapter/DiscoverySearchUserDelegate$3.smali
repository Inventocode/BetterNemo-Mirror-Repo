.class Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$3;
.super Ljava/lang/Object;
.source "DiscoverySearchUserDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;I)V
    .registers 4

    .line 109
    iput-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$3;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$3;->val$data:Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    iput p3, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 113
    iget-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$3;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->access$200(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;)Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$3;->val$data:Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->getId()J

    move-result-wide v0

    iget v2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$3;->val$position:I

    invoke-interface {p1, v0, v1, v2}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$UserCallBack;->followUser(JI)V

    return-void
.end method
