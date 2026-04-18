.class Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;
.super Ljava/lang/Object;
.source "DiscoverySearchWorkDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

.field final synthetic val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;)V
    .registers 4

    .line 65
    iput-object p1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    iget-object v1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const v2, 0x7f0a0923

    invoke-virtual {v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->access$002(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;I)I

    .line 70
    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->isCourseInfo()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->access$100(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x41f00000  # 30.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int v7, v0, v1

    const/4 v8, 0x2

    const-string v6, "#6F60DD"

    const-string v9, "m"

    invoke-static/range {v3 .. v9}, Lcom/codemao/nemo/util/StringUtil;->getHiglightString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-static {v1, v0}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->access$200(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;Landroid/text/SpannableString;)V

    goto :goto_76

    .line 74
    :cond_4b
    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->val$data:Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->access$100(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->this$0:Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/high16 v1, 0x41e00000  # 28.0f

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    sub-int v7, v0, v1

    const/4 v8, 0x2

    const-string v6, "#6F60DD"

    const-string v9, ""

    invoke-static/range {v3 .. v9}, Lcom/codemao/nemo/util/StringUtil;->getHiglightString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 76
    :goto_76
    iget-object v1, p0, Lcom/codemao/nemo/adapter/DiscoverySearchWorkDelegate$1;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v1, v2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
