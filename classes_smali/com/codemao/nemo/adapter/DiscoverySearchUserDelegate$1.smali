.class Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;
.super Ljava/lang/Object;
.source "DiscoverySearchUserDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;)V
    .registers 4

    .line 71
    iput-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;->val$data:Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 74
    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v2, 0x7f0a0912

    invoke-virtual {v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->access$002(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;I)I

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;->val$data:Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DiscoverySearchUserInfo;->getNickname()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->access$100(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;->access$000(Lcom/codemao/nemo/adapter/DiscoverySearchUserDelegate;)I

    move-result v8

    const-string v6, "#6F60DD"

    const/4 v7, 0x2

    invoke-static/range {v3 .. v8}, Lcom/codemao/nemo/util/StringUtil;->setHighLight(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
