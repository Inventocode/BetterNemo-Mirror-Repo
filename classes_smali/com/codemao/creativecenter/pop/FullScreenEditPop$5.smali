.class Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;
.super Ljava/lang/Object;
.source "FullScreenEditPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenEditPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 322
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1200(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3a

    .line 323
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$900(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativestore/bean/CloudInfo;

    move-result-object p1

    if-nez p1, :cond_14

    const/4 p1, 0x4

    goto :goto_1c

    :cond_14
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$900(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativestore/bean/CloudInfo;

    move-result-object p1

    iget p1, p1, Lcom/codemao/creativestore/bean/CloudInfo;->private_cv_total:I

    .line 324
    :goto_1c
    iget-object v2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_nemo_max_cloud_private_variables_tips:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showTopCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_4c

    .line 327
    :cond_3a
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1100(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 328
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$5;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$1000(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_4c
    return-void
.end method
