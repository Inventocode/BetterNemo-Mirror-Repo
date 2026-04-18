.class Lcom/codemao/nemo/activity/WorkPlayLandActivity$2;
.super Ljava/lang/Object;
.source "WorkPlayLandActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPlayLandActivity;->showShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPlayLandActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPlayLandActivity;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkPlayLandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 159
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkPlayLandActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_Game:Lcom/codemao/creativestore/dsbridge/DWebView;

    if-eqz p1, :cond_9

    .line 160
    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 162
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkPlayLandActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->wv_GameX5:Lcom/codemao/nemo/view/X5DWebView;

    if-eqz p1, :cond_12

    .line 163
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->onResume()V

    .line 165
    :cond_12
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPlayLandActivity$2;->this$0:Lcom/codemao/nemo/activity/WorkPlayLandActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->vCover:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
