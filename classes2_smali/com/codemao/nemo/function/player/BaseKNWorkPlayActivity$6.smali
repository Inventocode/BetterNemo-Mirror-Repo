.class Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$6;
.super Ljava/lang/Object;
.source "BaseKNWorkPlayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->getScreenShoot(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V
    .registers 2

    .line 723
    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 726
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object p1, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->wv_Game:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz p1, :cond_9

    .line 727
    invoke-virtual {p1}, Landroid/webkit/WebView;->onResume()V

    .line 733
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$6;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    iget-object p1, p1, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->vCover:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
