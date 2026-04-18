.class Lcom/codemao/nemo/activity/LoginActivity$6;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->setErrorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 2

    .line 364
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$6;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 367
    iget-object p2, p0, Lcom/codemao/nemo/activity/LoginActivity$6;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p2, p2, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {p2}, Landroid/widget/VideoView;->stopPlayback()V

    .line 368
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 369
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$6;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LoginActivity;->iv_cover:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    .line 370
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$6;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    const/4 p3, 0x1

    iput-boolean p3, p1, Lcom/codemao/nemo/activity/LoginActivity;->isPlayVideoError:Z

    .line 373
    invoke-static {p1}, Lcom/codemao/nemo/activity/LoginActivity;->access$400(Lcom/codemao/nemo/activity/LoginActivity;)V

    .line 374
    invoke-static {p2}, Lcom/codemao/nemo/util/SprefUtil;->putCanPlayVideo(Z)V

    .line 375
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$6;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    new-instance p2, Lcom/codemao/nemo/activity/LoginActivity$6$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/activity/LoginActivity$6$1;-><init>(Lcom/codemao/nemo/activity/LoginActivity$6;)V

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return p3
.end method
