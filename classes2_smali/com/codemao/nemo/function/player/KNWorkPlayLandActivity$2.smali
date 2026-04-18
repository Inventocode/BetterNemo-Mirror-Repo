.class Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity$2;
.super Ljava/lang/Object;
.source "KNWorkPlayLandActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity;->showShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity$2;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 150
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity$2;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity;

    iget-object p1, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz p1, :cond_9

    .line 151
    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 153
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity$2;->this$0:Lcom/codemao/nemo/function/player/KNWorkPlayLandActivity;

    iget-object p1, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->vCover:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
