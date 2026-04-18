.class Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$1;
.super Ljava/lang/Object;
.source "MultiImageSelectorActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 174
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 175
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$1;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-static {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->access$000(Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;)Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorFragmentV2;->showChooseList()V

    :cond_11
    return-void
.end method
