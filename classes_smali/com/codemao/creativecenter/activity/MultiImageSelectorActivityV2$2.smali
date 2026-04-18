.class Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$2;
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

    .line 179
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$2;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 182
    iget-object p1, p0, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2$2;->this$0:Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/activity/MultiImageSelectorActivityV2;->finish()V

    return-void
.end method
