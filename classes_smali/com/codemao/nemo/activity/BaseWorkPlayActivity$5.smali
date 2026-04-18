.class Lcom/codemao/nemo/activity/BaseWorkPlayActivity$5;
.super Ljava/lang/Object;
.source "BaseWorkPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->getScreenShoot(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V
    .registers 2

    .line 703
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$5;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 706
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$5;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz p1, :cond_9

    .line 707
    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 709
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$5;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz p1, :cond_12

    .line 710
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->onResume()V

    .line 716
    :cond_12
    iget-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$5;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->vCover:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
