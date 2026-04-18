.class Lcom/codemao/nemo/activity/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->showFirstAnim()V
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

    .line 347
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$5;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 350
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$5;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 351
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$5;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/LoginActivity;->video:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    return-void
.end method
